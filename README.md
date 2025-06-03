#  LLVM Obfuscation Pipeline for `state_obfuscation.c`

This document shows how to obfuscate a C program (`state_obfuscation.c`) using Obfuscator-LLVM and LLVM 14

---

##  Prerequisites

 LLVM 14 (Clang, Opt, LLC)  
 Obfuscator-LLVM (libLLVMObfuscator.so built)  
 System tools: `python3` (for test payloads)

#  Obfuscation Pipeline

# Compile state_obfuscation.c to LLVM Bitcode
/usr/local/llvm-14/bin/clang -O1 -S -emit-llvm state_obfuscation.c -o state_obfuscation.bc

# Apply LLVM Obfuscation Passes
/usr/local/llvm-14/bin/opt --relocation-model=pic \
  -load-pass-plugin=/home/boeke/obfuscator-llvm/build/libLLVMObfuscator.so \
  -passes="flattening,bogus,substitution,split-basic-blocks" \
  state_obfuscation.bc -o state_obfuscation_obfuscated.bc

# Convert Obfuscated Bitcode to Object File
/usr/local/llvm-14/bin/llc --relocation-model=pic -filetype=obj state_obfuscation_obfuscated.bc -o state_obfuscation_obfuscated.o

# Link Final Obfuscated Executable
/usr/local/llvm-14/bin/clang state_obfuscation_obfuscated.o -o state_obfuscation_obfuscated

# 🔁 Double Obfuscation (Optional) --- just tried it for fun makes things even more messier 

/usr/local/llvm-14/bin/opt --relocation-model=pic \
  -load-pass-plugin=/home/boeke/obfuscator-llvm/build/libLLVMObfuscator.so \
  -passes="flattening,bogus,substitution,split-basic-blocks,flattening,bogus,substitution,split-basic-blocks" \
  state_obfuscation.bc -o state_obfuscation_double.bc

/usr/local/llvm-14/bin/llc --relocation-model=pic -filetype=obj state_obfuscation_double.bc -o state_obfuscation_double.o
/usr/local/llvm-14/bin/clang state_obfuscation_double.o -o state_obfuscation_double


#  Test Buffer Overflow

./state_obfuscation_obfuscated $(python3 -c 'print("A"*100)')



