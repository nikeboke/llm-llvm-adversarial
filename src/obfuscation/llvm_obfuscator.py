import os
import subprocess
import hashlib
from pathlib import Path
from typing import Dict

# ghidra for reverse ing

LLVM_TOOLS = {
    "clang-tool": "clang-14",
    "opt-tool": "opt-14",
    "llc-tool": "llc-14",
    "llvm-dis-tool": "llvm-dis"
}

OBFUSCATION_PASSES = {
    "flattening": "flattening",
    "bogus": "bogus",
    "substitution": "substitution",
    "split": "split-basic-blocks"
}

def run_cmd(cmd: str) -> str:
    print(f"[RUNNING] {cmd}")
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    print("[STDOUT]", result.stdout.decode())
    print("[STDERR]", result.stderr.decode())
    if result.returncode != 0:
        raise RuntimeError(f"Command failed: {cmd}\n{result.stderr.decode()}")
    return result.stdout.decode()

def sha256sum(filepath: str) -> str:
    with open(filepath, "rb") as f:
        return hashlib.sha256(f.read()).hexdigest()

def run_ghidra_analysis(binary_path: Path, ghidra_dir: Path, output_dir: Path, script_name: str = None) -> Path:
    """
    Führt Ghidra Headless-Analyse auf dem gegebenen Binary durch.
    """
    # Ordner, in dem dein aktuelles Skript liegt (z. B. in llm-llvm-adversarial/)
    script_dir = Path(__file__).resolve().parent

    # Ghidra-Verzeichnis im selben Ordner wie das Projektverzeichnis
    ghidra_dir = script_dir.parent.parent.parent / "ghidra_11.3.2_PUBLIC_20250415"

    analyze_headless = ghidra_dir / "ghidra_11.3.2_PUBLIC" / "support" / "analyzeHeadless"
    project_dir = output_dir
    project_name = "ReverseProject"

    cmd = [
        str(analyze_headless),
        str(project_dir),
        project_name,
        "-import", str(binary_path),
        "-overwrite",
        "-processor", "x86:LE:64",  # ggf. Architektur anpassen
    ]

    if script_name:
        cmd += ["-postScript", script_name]

    # Java-Home ermitteln (ggf. fest setzen)
    java_home = os.environ.get("JAVA_HOME")
    if not java_home:
        # Automatisch versuchen, Java-Home zu erkennen
        javac_path = subprocess.run("which javac", shell=True, capture_output=True, text=True).stdout.strip()
        java_home = str(Path(javac_path).resolve().parent.parent)
        if not Path(java_home).exists():
            raise EnvironmentError("JAVA_HOME konnte nicht automatisch ermittelt werden.")

    env = os.environ.copy()
    env["JAVA_HOME"] = java_home

    print(f"[INFO] Using JAVA_HOME = {java_home}")

    print("Running Ghidra Headless:")
    run_cmd(" ".join(cmd))

    result = subprocess.run(cmd, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    print("[STDOUT]", result.stdout.decode())
    print("[STDERR]", result.stderr.decode())

    if result.returncode != 0:
        raise RuntimeError(f"Ghidra Headless failed with code {result.returncode}")

    return project_dir / project_name  # Pfad zum Ghidra-Projekt

def apply_llvm_obfuscation(source_file: str, rounds: int = 1, plugin_path: str = None,
                            ghidra_dir: str = "/opt/ghidra", ghidra_script: str = None) -> Dict[str, str]:
    if plugin_path is None:
        current_dir = os.path.dirname(__file__)
        plugin_path = os.path.join(current_dir, "libLLVMObfuscator.so")

    base = os.path.splitext(os.path.basename(source_file))[0]
    source_dir = Path(source_file).parent

    bc = f"{source_dir/base}.bc"
    obf_bc = f"{source_dir/base}_obfuscated.bc"
    obj = f"{source_dir/base}_obfuscated.o"
    exe = f"{source_dir/base}_obfuscated"
    ll = f"{source_dir/base}_obfuscated.ll"

    clang = LLVM_TOOLS["clang-tool"]
    opt = LLVM_TOOLS["opt-tool"]
    llc = LLVM_TOOLS["llc-tool"]
    llvm_dis = LLVM_TOOLS["llvm-dis-tool"]

    run_cmd(f"{clang} -O1 -S -emit-llvm {source_file} -o {bc}")

    passes = ",".join([",".join(OBFUSCATION_PASSES.values())] * rounds)
    run_cmd(
        f"{opt} --relocation-model=pic "
        f"-load-pass-plugin={plugin_path} "
        f"-passes='{passes}' {bc} -o {obf_bc}"
    )

    run_cmd(f"{llc} --relocation-model=pic -filetype=obj {obf_bc} -o {obj}")
    run_cmd(f"{clang} {obj} -o {exe}")
    run_cmd(f"{llvm_dis} {obf_bc} -o {ll}")

    # Ghidra-Analyse ausführen
    ghidra_output = run_ghidra_analysis(
        binary_path=exe,
        ghidra_dir=Path(ghidra_dir),
        output_dir=source_dir / f"{base}_ghidra_project",
        script_name=ghidra_script  # optional, z. B. Export script
    )

    return {
        "source_file": source_file,
        "bc_file": bc,
        "obfuscated_bc": obf_bc,
        "object_file": obj,
        "executable": exe,
        "llvm_ir": ll,
        "ghidra_project_path": str(ghidra_output),
        "source_file_sha256": sha256sum(source_file),
        "bc_file_sha256": sha256sum(bc),
        "obf_bc_file_sha256": sha256sum(obf_bc),
        "obj_file_sha256": sha256sum(obj),
        "exe_file_sha256": sha256sum(exe),
        "ll_file_sha256": sha256sum(ll),
        "ghidra_project_sha256": ghidra_output,
    }