from datasets import load_dataset
import os
import re

OUTPUT_DIR = "devign_c_dataset" 
SPLIT = "train"  # This is the only available split
MAX_SAMPLES = None  # non for all 


def strip_comments(code):
    code = re.sub(r"/\*.*?\*/", "", code, flags=re.DOTALL)  # /* block comments */
    code = re.sub(r"//.*", "", code)  # // line comments
    return code.strip()

print("[*] Loading Devign dataset...")
dataset = load_dataset("claudios/code_x_glue_devign", split=SPLIT)


os.makedirs(OUTPUT_DIR, exist_ok=True)


print(f"[*] Saving C functions to '{OUTPUT_DIR}'...")
for i, example in enumerate(dataset):
    if MAX_SAMPLES and i >= MAX_SAMPLES:
        break

    code = strip_comments(example["func"])
    label = "vuln" if example["target"] == 1 else "safe"
    filename = f"func_{i:05d}_{label}.c"
    filepath = os.path.join(OUTPUT_DIR, filename)

    with open(filepath, "w") as f:
        f.write(code)

print(f"[+] Done. Saved {i+1} files to '{OUTPUT_DIR}'")
