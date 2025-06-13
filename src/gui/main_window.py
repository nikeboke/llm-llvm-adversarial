import tkinter as tk
from pathlib import Path
from tkinter import messagebox, filedialog, scrolledtext, ttk
import os
import shutil

from src.obfuscation.llvm_obfuscator import apply_llvm_obfuscation


class SimplifiedObfuscationGUI(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("LLVM Obfuscation Viewer")
        self.geometry("1200x700")

        self.selected_file = tk.StringVar()
        self.use_llvm = tk.BooleanVar(value=True)
        self.llvm_rounds = tk.IntVar(value=1)

        self.create_widgets()
        self.load_test_code_list()

    def create_widgets(self):
        main_frame = ttk.Frame(self)
        main_frame.pack(fill="both", expand=True)

        # Oben: Eingabe & Einstellungen
        top_frame = ttk.Frame(main_frame)
        top_frame.pack(fill="both", expand=True)

        # Oben links – Eingabecode
        input_frame = ttk.LabelFrame(top_frame, text="Input Code (test_code)")
        input_frame.pack(side="left", fill="both", expand=True, padx=5, pady=5)

        self.input_code = scrolledtext.ScrolledText(input_frame, wrap=tk.WORD, height=20)
        self.input_code.pack(fill="both", expand=True)

        # Oben rechts – Optionen
        options_frame = ttk.LabelFrame(top_frame, text="Obfuscation Settings")
        options_frame.pack(side="left", fill="y", padx=5, pady=5)

        ttk.Label(options_frame, text="Select file:").pack(anchor="w")
        self.file_menu = ttk.Combobox(options_frame, textvariable=self.selected_file, state="readonly")
        self.file_menu.pack(fill="x")
        self.file_menu.bind("<<ComboboxSelected>>", self.load_selected_file)

        ttk.Button(options_frame, text="Load from File...", command=self.load_custom_file).pack(pady=5)

        ttk.Checkbutton(options_frame, text="Apply LLVM Obfuscation", variable=self.use_llvm).pack(anchor="w", pady=5)

        ttk.Label(options_frame, text="LLVM Rounds:").pack(anchor="w")
        ttk.Spinbox(options_frame, from_=1, to=5, textvariable=self.llvm_rounds).pack(fill="x")

        ttk.Button(options_frame, text="Run Obfuscation", command=self.apply_obfuscation).pack(anchor="center", pady=10)

        # Unten: Ergebnisse & Analyse
        bottom_frame = ttk.Frame(main_frame)
        bottom_frame.pack(fill="both", expand=True)

        # Unten links – LLVM Resultat
        result_frame = ttk.LabelFrame(bottom_frame, text="Result")
        result_frame.pack(side="left", fill="both", expand=True, padx=5, pady=5)

        self.result_text = scrolledtext.ScrolledText(result_frame, wrap=tk.WORD)
        self.result_text.pack(fill="both", expand=True)

        # Unten rechts – LLM-Analyse
        analysis_frame = ttk.LabelFrame(bottom_frame, text="LLM Analysis")
        analysis_frame.pack(side="left", fill="both", expand=True, padx=5, pady=5)

        self.analysis_output = scrolledtext.ScrolledText(analysis_frame, wrap=tk.WORD)
        self.analysis_output.pack(fill="both", expand=True)

    def load_test_code_list(self):
        folder = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "test_code/calculator"))
        if not os.path.exists(folder):
            os.makedirs(folder)
        files = [f for f in os.listdir(folder) if f.endswith(".c") or os.path.isdir(os.path.join(folder, f))]
        files = sorted(files)
        self.file_menu["values"] = files
        if files:
            self.selected_file.set(files[0])
            self.load_selected_file()

    def load_selected_file(self, event=None):
        test_code_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "test_code/calculator"))
        filepath = os.path.join(test_code_dir, self.selected_file.get())
        with open(filepath, "r") as f:
            content = f.read()
        self.input_code.delete("1.0", tk.END)
        self.input_code.insert("1.0", content)
        self.result_text.delete("1.0", tk.END)
        self.analysis_output.delete("1.0", tk.END)

    def load_custom_file(self):
        test_code_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "test_code"))
        filepath = filedialog.askopenfilename(
            title="Load .c file",
            initialdir=test_code_dir,
            filetypes=[("C Files", "*.c")]
        )
        if filepath:
            filename = os.path.basename(filepath)
            test_code_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "test_code"))
            dest = os.path.join(test_code_dir, filename)
            shutil.copy(filepath, dest)
            self.load_test_code_list()
            self.selected_file.set(filename)
            self.load_selected_file()

    def apply_obfuscation(self):
        current_path  = Path.cwd()
        parent_path = current_path.parent.parent
        obfusticated_base_path =  os.path.join(parent_path, "test_code", "obfuscated_code")

        filename = self.selected_file.get()
        folder_name = os.path.splitext(filename)[0]
        folder_path = obfusticated_base_path + "/" + folder_name
        if not filename:
            messagebox.showwarning("No File", "Please select a test file.")
            return

        try:
            Path(folder_path).mkdir(parents=True, exist_ok=False)
            print(f"Ordner erstellt: {folder_path}")
        except FileExistsError:
            raise RuntimeError(f"Ordner existiert bereits: {folder_path}")

        source_code = self.input_code.get("1.0", tk.END)
        file_path = folder_path + "/" + filename
        with open(file_path, "w") as f:
            f.write(source_code)

        try:
            if self.use_llvm.get():
                rounds = self.llvm_rounds.get()
                result = apply_llvm_obfuscation(file_path, rounds=rounds)

                source_file =  result["source_file"]
                bc = result["bc_file"]
                obf_bc = result["obfuscated_bc"]
                obj  = result["object_file"]
                exe = result["executable"]
                ll = result["llvm_ir"]
                sha256sum_source_file = result["source_file_sha256"]
                sha256sum_bc = result["bc_file_sha256"]
                sha256sum_obf_bc = result["obf_bc_file_sha256"]
                sha256sum_obj = result["obj_file_sha256"]
                sha256sum_exe = result["exe_file_sha256"]
                sha256sum_ll = result["ll_file_sha256"]

                with open(ll, "r") as f:
                    transformed = f.read()
                result = f"LLVM Obfuscation applied ({rounds} round(s)).\nExecutable: {ll}\nChecksum: {sha256sum_ll}\n"
            else:
                transformed = source_code
                result = "LLVM obfuscation skipped (code unchanged)."

            self.result_text.delete("1.0", tk.END)
            self.result_text.insert("1.0", transformed + "\n\n" + result)

            self.analysis_output.delete("1.0", tk.END)
            self.analysis_output.insert("1.0", self.fake_llm_analysis(transformed))

        except Exception as e:
            messagebox.showerror("Error", str(e))

    def fake_llm_analysis(self, code):
        lines = code.splitlines()
        score = "High complexity" if "switch" in code or "state" in code else "Low complexity"
        return f"LLM Analysis:\n- Approx. {len(lines)} lines\n- Obfuscation pattern detected: {score}\n"


if __name__ == "__main__":
    app = SimplifiedObfuscationGUI()
    app.mainloop()
