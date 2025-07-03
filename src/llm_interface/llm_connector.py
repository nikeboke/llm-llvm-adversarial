import openai
from transformers import PreTrainedTokenizerBase, GPTNeoForCausalLM, GPT2Tokenizer, RobertaForMaskedLM, RobertaTokenizer, BertForMaskedLM, BertTokenizer, GPT2LMHeadModel, GPTJForCausalLM
import anthropic
import torch

# Setze deinen OpenAI API-Schlüssel
openai.api_key = 'your-api-key'  # Ersetze durch deinen API-Schlüssel von OpenAI
ANTHROPIC_API_KEY = 'your-anthropic-api-key'  # Ersetze durch deinen API-Schlüssel von Anthropic


# OpenAI GPT-4 (oder GPT-3.5)
def analyze_with_openai_gpt(prompt: str, model: str = "gpt-4"):
    response = openai.ChatCompletion.create(
        model=model,  # Kann auch "gpt-3.5" sein
        messages=[
            {"role": "system", "content": "You are an expert in malware analysis and code obfuscation."},
            {"role": "user", "content": prompt}
        ]
    )
    return response['choices'][0]['message']['content']


# Anthropic Claude
def analyze_with_claude(prompt: str, code: str):
    client = anthropic.Client(ANTHROPIC_API_KEY)
    response = client.completions.create(
        model="claude-v1",  # Modell von Claude (Angenommene API-Option)
        prompt=prompt,
        max_tokens=1000
    )
    return response['completion']

# Hugging Face GPT-Neo
def analyze_with_gpt_neo(prompt_template: str, code: str):
    model = GPTNeoForCausalLM.from_pretrained("EleutherAI/gpt-neo-1.3B")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    # Setze pad_token auf eos_token, wenn keiner vorhanden ist
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    # Berechne die maximale Token-Länge für den Eingabeprompt
    max_prompt_length = 1024
    prompt_with_code = prepare_prompt(tokenizer, max_prompt_length, prompt_template, code)

    # Eingabe vorbereiten mit attention_mask
    inputs = tokenizer(
        prompt_with_code,
        return_tensors="pt",
        max_length=max_prompt_length,
        truncation=True,
        padding="longest"  # Hier braucht es einen pad_token
    )

    # Text generieren
    outputs = model.generate(
        input_ids=inputs['input_ids'],
        attention_mask=inputs['attention_mask'],
        max_length=max_prompt_length,  # Max length for the output
        num_return_sequences=1,  # Return only one sequence
        no_repeat_ngram_size=2,  # Prevent repeating n-grams
        pad_token_id=tokenizer.pad_token_id
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result

# Hugging Face GPT2
def analyze_with_gpt2(prompt_template: str, code: str):
    model = GPT2LMHeadModel.from_pretrained("gpt2")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    # Setze pad_token auf eos_token, wenn keiner vorhanden ist
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    max_prompt_length = 1024

    # Erstelle den finalen Prompt mit der prepare_prompt-Funktion
    prompt_with_code = prepare_prompt(tokenizer, max_prompt_length, prompt_template, code)

    # Eingabe vorbereiten
    inputs = tokenizer(
        prompt_with_code,
        return_tensors="pt",
        max_length=max_prompt_length,
        truncation=True
    )

    outputs = model.generate(
        inputs['input_ids'],
        max_length=max_prompt_length,  # Maximaler Output
        num_return_sequences=1,
        no_repeat_ngram_size=2,
        pad_token_id=tokenizer.eos_token_id
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result

# Hugging Face GPTJ
def analyze_with_gptj(prompt_template: str, code: str):
    model = GPTJForCausalLM.from_pretrained("EleutherAI/gpt-j-6B")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    # Setze pad_token auf eos_token, wenn keiner vorhanden ist
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    max_prompt_length = 1024

    # Erstelle den finalen Prompt mit der prepare_prompt-Funktion
    prompt_with_code = prepare_prompt(tokenizer, max_prompt_length, prompt_template, code)

    inputs = tokenizer.encode(
        prompt_with_code,
        return_tensors="pt",
        max_length=max_prompt_length,
        truncation=True
    )

    outputs = model.generate(
        inputs,
        max_length=max_prompt_length,
        num_return_sequences=1,
        no_repeat_ngram_size=2
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# CodeBERT (für Quellcode-Analyse)
def analyze_with_codebert(prompt_template: str, code: str):
    model = RobertaForMaskedLM.from_pretrained("microsoft/codebert-base")
    tokenizer = RobertaTokenizer.from_pretrained("microsoft/codebert-base")

    # Setze pad_token auf eos_token, wenn keiner vorhanden ist
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    max_prompt_length = 1024

    # Erstelle den finalen Prompt mit der prepare_prompt-Funktion
    prompt_with_code = prepare_prompt(tokenizer, max_prompt_length, prompt_template, code)

    inputs = tokenizer(
        prompt_with_code,
        return_tensors="pt",
        max_length=max_prompt_length,
        truncation=True
    )

    outputs = model.generate(
        inputs['input_ids'],
        max_length=max_prompt_length,
        num_return_sequences=1
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# MalBERT (für Malware-Erkennung)
def analyze_with_malbert(prompt_template: str, code: str):
    model = BertForMaskedLM.from_pretrained("microsoft/malbert")
    tokenizer = BertTokenizer.from_pretrained("microsoft/malbert")
    max_prompt_length = 1024

    # Erstelle den finalen Prompt mit der prepare_prompt-Funktion
    prompt_with_code = prepare_prompt(
        tokenizer,
        max_prompt_length,
        prompt_template,
        code
    )

    inputs = tokenizer(prompt_with_code, return_tensors="pt", max_length=max_prompt_length, truncation=True)

    outputs = model.generate(
        inputs['input_ids'],
        max_length=max_prompt_length,
        num_return_sequences=1
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# SecureCodeGPT (für sichere Code-Analyse)
def analyze_with_securecodegpt(prompt_template: str, code: str):
    model = GPT2LMHeadModel.from_pretrained("facebook/securecodegpt")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")
    max_prompt_length = 1024

    # Erstelle den finalen Prompt mit der prepare_prompt-Funktion
    prompt_with_code = prepare_prompt(
        tokenizer,
        max_prompt_length,
        prompt_template,
        code
    )

    inputs = tokenizer.encode(prompt_with_code, return_tensors="pt", max_length=max_prompt_length, truncation=True)

    outputs = model.generate(
        inputs,
        max_length=max_prompt_length,
        num_return_sequences=1,
        no_repeat_ngram_size=2
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# DSLM-GPT2 (für datenschutzfreundliche Code-Analyse)
def analyze_with_dslm_gpt2(prompt_template: str, code: str):
    model = GPT2LMHeadModel.from_pretrained("microsoft/dslm-gpt2")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")
    max_prompt_length = 1024

    # Erstelle den finalen Prompt mit der prepare_prompt-Funktion
    prompt_with_code = prepare_prompt(
        tokenizer,
        max_prompt_length,
        prompt_template,
        code
    )

    inputs = tokenizer.encode(prompt_with_code, return_tensors="pt", max_length=max_prompt_length, truncation=True)

    outputs = model.generate(
        inputs,
        max_length=max_prompt_length,
        num_return_sequences=1,
        no_repeat_ngram_size=2
    )

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result

def prepare_prompt(tokenizer: PreTrainedTokenizerBase, max_prompt_length: int, prompt_template: str, code: str) -> str:
    prompt_tokens = tokenizer.encode(prompt_template, add_special_tokens=False)

    # Berechne die maximale Länge des Codes, der zum Prompt hinzugefügt werden kann
    max_code_length = max_prompt_length - len(prompt_tokens)

    # Tokenisiere den Code und kürze ihn, wenn er zu lang ist
    code_tokens = tokenizer.encode(code, add_special_tokens=False)
    if len(code_tokens) > max_code_length:
        code_tokens = code_tokens[:max_code_length]  # Kürze den Code, falls notwendig

    # Erstelle den finalen Prompt mit dem gekürzten Code
    code_str = tokenizer.decode(code_tokens, skip_special_tokens=True)
    prompt_with_code = prompt_template.format(code_placeholder=code_str)

    return prompt_with_code

# Funktion zur Datei-Analyse
def analyze_file_with_multiple_models(code: str):


    # Erstelle den Prompt für die Analyse
    #prompt = f"Analyze the following LLVM IR code for potential malware or obfuscated code patterns:\n{code}\n\nExplain potential security threats and malware techniques."
    prompt_template = """Analyze the following LLVM IR code for potential malware or obfuscated code patterns. Look for signs of obfuscation techniques, unusual control flow, use of arithmetic operations for hiding logic, and any other indicators of malicious intent. Code:\n{code_placeholder}\n\nExplain any potential security threats or malware techniques in the code."""

    # OpenAI Modelle
    models_to_test = [
        "gpt-4",
        "gpt-4o",
        "gpt-4.1",
        "gpt-4.1-mini",
        "gpt-3.5-turbo",
        "code-davinci-002",
        "o1",
        "o1-pro",
        "o3",
        "o3-mini-high",
        "o4-mini",
        "o4-mini-high"
    ]

    # Ergebnisse von verschiedenen Modellen analysieren
    # gpt4_result  = analyze_with_openai_gpt(prompt_template, code, model="gpt-4")
    # gpt3_5_result = analyze_with_openai_gpt(prompt_template, code, model="gpt-3.5-turbo")
    # gpt3_result = analyze_with_openai_gpt(prompt_template, code, model="gpt-3")
    # gpt_code_result = analyze_with_openai_gpt(prompt_template, code, model="code-davinci-002")
    # claude_result = analyze_with_claude(prompt_template, code)
    #gpt_neo_result = analyze_with_gpt_neo(prompt_template, code)
    gpt2_result = analyze_with_gpt2(prompt_template, code)
    #gptj_result = analyze_with_gptj(prompt_template, code)
    #codebert_result = analyze_with_codebert(prompt_template, code)
    #malbert_result =analyze_with_malbert(prompt_template, code)
    #securecodegpt_result = analyze_with_securecodegpt(prompt_template, code)
    #dslm_gpt2_result = analyze_with_dslm_gpt2(prompt_template, code)

    # Ausgabe der Ergebnisse
    #print(f"OpenAI GPT-4 Analyse: \n {gpt4_result }")
    #print(f"OpenAI GPT-3.5 Analyse: \n {gpt3_5_result}")
    #print(f"OpenAI GPT-3 Analyse: \n {gpt3_result}")
    #print(f"OpenAI GPT-Code Analyse: \n {gpt_code_result}")
    #print(f"Claude Analyse: \n {claude_result}")
    print(f"GPT Neo Analyse: \n {gpt_neo_result}")
    print(f"GPT 2 Analyse: \n {gpt2_result}")
    print(f"GPTJ Analyse: \n {gptj_result}")
    print(f"Codebert Analyse: \n {codebert_result}")
    print(f"Malbert Analyse: \n {malbert_result}")
    print(f"Securecodegpt Analyse: \n {securecodegpt_result}")
    print(f"Dslm_gpt2 Analyse: \n {dslm_gpt2_result}")




# Beispielhafte Nutzung:
#ll_file_path = "path_to_your_obfuscated.ll"  # Ersetze mit dem Pfad zu deiner .ll Datei
# Lade den LLVM IR-Code aus der Datei
# with open(ll_file_path, "r") as f:
#   ll_content = f.read()
#analyze_file_with_multiple_models(ll_file_path)
