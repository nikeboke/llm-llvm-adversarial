import os
import sys
import shutil
import hashlib
import sqlite3
import subprocess
from datetime import datetime
from typing import Dict, Tuple
import argparse

DB_FILE = "obfuscation_history.db"


def run_cmd(cmd: str) -> str:
    """ Führt einen Shell-Befehl aus.
    Args:
        cmd (str): Der auszuführende Shell-Befehl.
    Returns:
        str: Die Standardausgabe des Befehls.
    Raises:
        RuntimeError: Wenn der Befehl mit einem Fehler endet.
    """
    print(f"[+] Running: {cmd}")
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode != 0:
        print(result.stderr.decode())
        raise RuntimeError(f"Command failed: {cmd}")
    return result.stdout.decode()


def install_package(package_name: str) -> None:
    """ Installiert ein Systempaket via apt-get.
    Args:
        package_name (str): Name des zu installierenden Pakets.
    """
    print(f"[+] Installing package: {package_name}")
    run_cmd(f"sudo apt-get update && sudo apt-get install -y {package_name}")


def ensure_llvm_installed() -> Dict[str, str]:
    """ Prüft oder installiert LLVM 14 (clang-14, opt-14, llc-14).
    Returns:
        Dict[str, str]: Dictionary mit Pfaden zu LLVM-Tools.
    Raises:
        FileNotFoundError: Wenn Tools nach Installation nicht auffindbar sind.
    """
    required_tools = ["clang-14", "opt-14", "llc-14"]
    for tool in required_tools:
        if not shutil.which(tool):
            install_package("llvm-14")
            break

    return {
        "clang": find_or_fail("clang-14"),
        "opt": find_or_fail("opt-14"),
        "llc": find_or_fail("llc-14")
    }


def find_or_fail(tool: str) -> str:
    """ Findet den Pfad eines Tools oder wirft eine Ausnahme.
    Args:
        tool (str): Name des Tools.
    Returns:
        str: Vollständiger Pfad zum Tool.
    Raises:
        FileNotFoundError: Wenn das Tool nicht im PATH ist.
    """
    path = shutil.which(tool)
    if not path:
        raise FileNotFoundError(f"Tool '{tool}' not found in PATH.")
    return path


def ensure_obfuscator_installed() -> str:
    """ Prüft, ob das Obfuscator-LLVM Plugin vorhanden ist.
    Returns:
        str: Pfad zur Plugin-Bibliothek (.so-Datei).
    Exits:
        Das Programm wird beendet, wenn das Plugin nicht gefunden wird.
    """
    current_dir = os.path.dirname(__file__)
    plugin_path = os.path.join(current_dir, "libLLVMObfuscator.so")
    if not os.path.exists(plugin_path):
        print(f"[!] Obfuscator plugin not found at {plugin_path}")
        print("    → Bitte baue Obfuscator-LLVM manuell gemäß README.")
        sys.exit(1)
    return plugin_path


def sha256sum(filepath: str) -> str:
    """ Berechnet den SHA256-Hash einer Datei.
    Args:
        filepath (str): Pfad zur Datei.
    Returns:
        str: SHA256-Hash der Datei.
    """
    with open(filepath, "rb") as f:
        return hashlib.sha256(f.read()).hexdigest()


def init_db() -> sqlite3.Connection:
    """ Initialisiert die SQLite-Datenbank und Tabelle.
    Returns:
        sqlite3.Connection: Geöffnete Datenbankverbindung.
    """
    conn = sqlite3.connect(DB_FILE)
    cur = conn.cursor()
    cur.execute("""
        CREATE TABLE IF NOT EXISTS obfuscation_log (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            timestamp TEXT,
            source_file TEXT,
            bitcode_file TEXT,
            obfuscated_bc TEXT,
            object_file TEXT,
            binary_file TEXT,
            source_hash TEXT,
            success INTEGER
        )
    """)
    conn.commit()
    return conn


def obfuscate_c_file(source_file: str, llvm: Dict[str, str], obf_plugin: str) -> Tuple[str, str, str, str]:
    """ Führt Obfuskation auf einer C-Datei mit LLVM durch.
    Args:
        source_file (str): Pfad zur Quelldatei.
        llvm (Dict[str, str]): Pfade zu LLVM-Tools.
        obf_plugin (str): Pfad zum Obfuscator-Plugin.
    Returns:
        Tuple[str, str, str, str]: Pfade zu Bitcode, obfuskiertem Bitcode,
                                   Objektdatei und Binary.
    """
    base = os.path.splitext(os.path.basename(source_file))[0]
    bc = f"{base}.bc"
    obf_bc = f"{base}_obfuscated.bc"
    obj = f"{base}_obfuscated.o"
    exe = f"{base}_obfuscated"

    cmds = [
        f"{llvm['clang']} -O1 -S -emit-llvm {source_file} -o {bc}",
        f"{llvm['opt']} --relocation-model=pic "
        f"-load-pass-plugin={obf_plugin} "
        f"-passes='flattening,bogus,substitution,split-basic-blocks' "
        f"{bc} -o {obf_bc}",
        f"{llvm['llc']} --relocation-model=pic -filetype=obj {obf_bc} -o {obj}",
        f"{llvm['clang']} {obj} -o {exe}"
    ]

    for cmd in cmds:
        run_cmd(cmd)

    return bc, obf_bc, obj, exe


def log_result(
    conn: sqlite3.Connection,
    source_file: str,
    bc: str,
    obf_bc: str,
    obj: str,
    exe: str,
    success: bool = True
) -> None:
    """ Speichert die Obfuskationsergebnisse in der Datenbank.
    Args:
        conn (sqlite3.Connection): Datenbankverbindung.
        source_file (str): Eingabedatei.
        bc (str): LLVM-Bitcode-Datei.
        obf_bc (str): Obfuskiertes Bitcode-Datei.
        obj (str): Objektdatei.
        exe (str): Ausführbare Datei.
        success (bool): Erfolg der Operation.
    """
    cur = conn.cursor()
    cur.execute("""
        INSERT INTO obfuscation_log (
            timestamp, source_file, bitcode_file, obfuscated_bc, object_file, binary_file, source_hash, success
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    """, (
        datetime.now().isoformat(),
        source_file, bc, obf_bc, obj, exe,
        sha256sum(source_file),
        int(success)
    ))
    conn.commit()


def main() -> None:
    # Führt den gesamten Obfuskationsprozess mit automatischer Tool-Prüfung und Logging aus.
    parser = argparse.ArgumentParser(description="LLVM-Obfuscator-Automation")
    parser.add_argument("source", help="Pfad zur C-Datei, die obfuskiert werden soll")
    args = parser.parse_args()

    try:
        llvm = ensure_llvm_installed()
        obf_plugin = ensure_obfuscator_installed()
        conn = init_db()
        bc, obf_bc, obj, exe = obfuscate_c_file(args.source, llvm, obf_plugin)
        log_result(conn, args.source, bc, obf_bc, obj, exe, success=True)
        print(f"[✓] Obfuscation completed: {exe}")
    except Exception as e:
        print(f"[!] Obfuscation failed: {e}")
        conn = init_db()
        log_result(conn, args.source, "", "", "", "", success=False)


if __name__ == "__main__":
    main()
