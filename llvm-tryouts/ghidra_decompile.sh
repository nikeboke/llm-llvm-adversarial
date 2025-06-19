#!/bin/bash

# === Configuration ===
GHIDRA_PATH="$HOME/tools/ghidra_11.3.2_PUBLIC"
SCRIPT_PATH="$HOME/ghidra_scripts"
TMP_PROJECT="/tmp/ghidra_project"

# === Input Check ===
if [ $# -ne 1 ]; then
    echo "Usage: $0 <binary_file>"
    exit 1
fi

BINARY_PATH="$1"
BINARY_NAME=$(basename "$BINARY_PATH")
PROJECT_NAME="autoproj"
OUTPUT_FILE="/tmp/ghidra_decomp_${BINARY_NAME}.c"

# === Ensure Temp Dir Exists ===
mkdir -p "$TMP_PROJECT"

# === Run Ghidra Headless ===
"$GHIDRA_PATH/support/analyzeHeadless" \
  "$TMP_PROJECT" \
  "$PROJECT_NAME" \
  -import "$BINARY_PATH" \
  -scriptPath "$SCRIPT_PATH" \
  -postScript DecompileAll.class "$OUTPUT_FILE" \
  -deleteProject \
  >/dev/null 2>&1

# === Print Decompiled Output ===
if [ -f "$OUTPUT_FILE" ]; then
    cat "$OUTPUT_FILE"
else
    echo "❌ Decompilation failed or no output generated."
    exit 2
fi

