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
    result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode != 0:
        raise RuntimeError(f"Command failed: {cmd}\\n{result.stderr.decode()}")
    return result.stdout.decode()

def sha256sum(filepath: str) -> str:
    with open(filepath, "rb") as f:
        return hashlib.sha256(f.read()).hexdigest()

def apply_llvm_obfuscation(source_file: str, rounds: int = 1, plugin_path: str = None) -> dict[str, str]:
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

    return {
        "source_file": source_file,
        "bc_file": bc,
        "obfuscated_bc": obf_bc,
        "object_file": obj,
        "executable": exe,
        "llvm_ir": ll,
        "source_file_sha256": sha256sum(source_file),
        "bc_file_sha256": sha256sum(bc),
        "obf_bc_file_sha256": sha256sum(obf_bc),
        "obj_file_sha256": sha256sum(obj),
        "exe_file_sha256": sha256sum(exe),
        "ll_file_sha256": sha256sum(ll),
    }