#!/bin/bash

# Usage: ./obfuscate.sh file.c
set -e

INPUT_C="$1"

if [[ -z "$INPUT_C" ]]; then
    echo "Usage: $0 <source_file.c>"
    exit 1
fi

# Paths
LLVM_BIN="/usr/local/llvm-14/bin"
OBF_PLUGIN="/home/boeke/obfuscator-llvm/build/libLLVMObfuscator.so"
OUT_LL_DIR="./obf_ll_output"
mkdir -p "$OUT_LL_DIR"

# Derive file paths
BASENAME=$(basename "$INPUT_C" .c)
INPUT_DIR=$(dirname "$INPUT_C")
BC_FILE="${BASENAME}.bc"
LL_ORIG_FILE="${OUT_LL_DIR}/${BASENAME}_orig.ll"
OBF_BC_FILE="${BASENAME}_obf.bc"
LL_OBF_FILE="${OUT_LL_DIR}/${BASENAME}_obf.ll"
OBJ_FILE="${BASENAME}_obf.o"
EXE_FILE="${BASENAME}_obf"

# Step 1: Compile to LLVM bitcode (.bc)
"$LLVM_BIN/clang" -O1 -emit-llvm -c "$INPUT_C" -o "$BC_FILE"

# Step 2: Disassemble original .bc to .ll
"$LLVM_BIN/llvm-dis" "$BC_FILE" -o "$LL_ORIG_FILE"

# Step 3: Obfuscate the bitcode
"$LLVM_BIN/opt" --relocation-model=pic \
  -load-pass-plugin="$OBF_PLUGIN" \
  -passes="flattening,bogus,substitution,split-basic-blocks" \
  "$BC_FILE" -o "$OBF_BC_FILE"

# Step 4: Disassemble obfuscated .bc to .ll
"$LLVM_BIN/llvm-dis" "$OBF_BC_FILE" -o "$LL_OBF_FILE"

# Step 5: Compile to object file
"$LLVM_BIN/llc" --relocation-model=pic -filetype=obj "$OBF_BC_FILE" -o "$OBJ_FILE"

# Step 6: Link to executable
"$LLVM_BIN/clang" "$OBJ_FILE" -o "$EXE_FILE"

# Summary
echo -e "\n[+] Done:"
echo "    - Original LLVM IR:     $LL_ORIG_FILE"
echo "    - Obfuscated LLVM IR:   $LL_OBF_FILE"
echo "    - Obfuscated Binary:    $EXE_FILE"

