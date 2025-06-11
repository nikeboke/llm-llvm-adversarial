#!/bin/bash

# Usage: ./obfuscate.sh file.c

set -e

# Input C file
INPUT_C="$1"

if [[ -z "$INPUT_C" ]]; then
    echo "Usage: $0 <source_file.c>"
    exit 1
fi

# Paths
LLVM_BIN="/usr/local/llvm-14/bin"
OBF_PLUGIN="/home/boeke/obfuscator-llvm/build/libLLVMObfuscator.so"

# Derive filenames
BASENAME=$(basename "$INPUT_C" .c)
BC_FILE="${BASENAME}.bc"
OBF_BC_FILE="${BASENAME}_obf.bc"
OBJ_FILE="${BASENAME}_obf.o"
EXE_FILE="${BASENAME}_obf"
LL_FILE="${BASENAME}_obf.ll"

# Step 1: Compile to LLVM bitcode
"$LLVM_BIN/clang" -O1 -S -emit-llvm "$INPUT_C" -o "$BC_FILE"

# Step 2: Obfuscate the bitcode (with fixed plugin path and pass list)
"$LLVM_BIN/opt" --relocation-model=pic \
  -load-pass-plugin="$OBF_PLUGIN" \
  -passes="flattening,bogus,substitution,split-basic-blocks" \
  "$BC_FILE" -o "$OBF_BC_FILE"

# Step 3: Compile to object file
"$LLVM_BIN/llc" --relocation-model=pic -filetype=obj "$OBF_BC_FILE" -o "$OBJ_FILE"

# Step 4: Link to executable
"$LLVM_BIN/clang" "$OBJ_FILE" -o "$EXE_FILE"

# Step 5: Disassemble obfuscated .bc to .ll
"$LLVM_BIN/llvm-dis" "$OBF_BC_FILE" -o "$LL_FILE"

# Step 6: Print .ll file
echo "===== Obfuscated LLVM IR (.ll) ====="
cat "$LL_FILE"

# Done
echo -e "\nObfuscated binary: $EXE_FILE"
