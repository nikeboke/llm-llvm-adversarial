#  LLVM Obfuscation Pipeline for `state_obfuscation.c`

This document shows how to obfuscate a C program (`state_obfuscation.c`) using Obfuscator-LLVM and LLVM 14, including source code, commands, and testing instructions in **one file**.

---

##  Prerequisites

✅ LLVM 14 (Clang, Opt, LLC)  
✅ Obfuscator-LLVM (libLLVMObfuscator.so built)  
✅ System tools: `python3` (for test payloads)

---

##  `state_obfuscation.c` Source Code

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void f1(char *x) {
    char a[50];
    int s = 0;
    int state = 3;
    int b = 42;
    int loop = 2;
    size_t idx = 0;

    while (loop) {
        switch (state) {
            case 3:
                {
                    memset(a, 0, sizeof(a));
                    volatile size_t len = strnlen(x, sizeof(a) + (b & 1 ? 1 : 0));
                    for (idx = 0; idx < len; idx++) {
                        a[idx] = x[idx];
                    }
                    a[sizeof(a) - 1] = '\0';
                }
                state = 5;
                if (b % 2 == 0) {
                    b++;
                }
                break;
            case 5:
                if (b % 3 == 0) {
                    for (int i = 0; i < 2; i++) {
                        printf("%s", "Processing...\n");
                    }
                }
                printf("Input: %s\n", a);
                state = 7;
                break;
            case 7:
                if (b > 100) {
                    b /= 2;
                }
                loop = 0;
                break;
            case 9:
                b *= 2;
                state = 3;
                break;
        }
    }
}

int main(int c, char *v[]) {
    int t = 0;
    int d = 10;
    int flow = 8;

    while (flow) {
        switch (flow) {
            case 8:
                if (c != 2) {
                    printf("Usage: %s <arg>\n", v[0]);
                    return 1;
                }
                flow = 6;
                break;
            case 6:
                if (d * 2 == 20) {
                    printf("Executing...\n");
                }
                f1(v[1]);
                flow = 4;
                break;
            case 4:
                for (int i = 0; i < 1; i++) {
                    printf("Finished Execution.\n");
                }
                flow = 0;
                break;
            case 2:
                d *= 2;
                flow = 8;
                break;
        }
    }
    return 0;
}
```

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

# 🔁 Double Obfuscation (Optional)

/usr/local/llvm-14/bin/opt --relocation-model=pic \
  -load-pass-plugin=/home/boeke/obfuscator-llvm/build/libLLVMObfuscator.so \
  -passes="flattening,bogus,substitution,split-basic-blocks,flattening,bogus,substitution,split-basic-blocks" \
  state_obfuscation.bc -o state_obfuscation_double.bc

/usr/local/llvm-14/bin/llc --relocation-model=pic -filetype=obj state_obfuscation_double.bc -o state_obfuscation_double.o
/usr/local/llvm-14/bin/clang state_obfuscation_double.o -o state_obfuscation_double


#  Test Buffer Overflow

./state_obfuscation_obfuscated $(python3 -c 'print("A"*100)')



