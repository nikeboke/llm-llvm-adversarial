import openai
from transformers import GPTNeoForCausalLM, GPT2Tokenizer, RobertaForMaskedLM, RobertaTokenizer, BertForMaskedLM, BertTokenizer, GPT2LMHeadModel, GPTJForCausalLM
import anthropic

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
def analyze_with_claude(prompt: str):
    client = anthropic.Client(ANTHROPIC_API_KEY)
    response = client.completions.create(
        model="claude-v1",  # Modell von Claude (Angenommene API-Option)
        prompt=prompt,
        max_tokens=1000
    )
    return response['completion']


# Hugging Face GPT-Neo
def analyze_with_gpt_neo(prompt: str):
    model = GPTNeoForCausalLM.from_pretrained("EleutherAI/gpt-neo-1.3B")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    inputs = tokenizer(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs['input_ids'], max_length=2048, num_return_sequences=1)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result

# Hugging Face GPT2
def analyze_with_gpt2(prompt: str):
    model = GPT2LMHeadModel.from_pretrained("gpt2")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    inputs = tokenizer.encode(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs, max_length=2048, num_return_sequences=1, no_repeat_ngram_size=2)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result

# Hugging Face GPTJ
def analyze_with_gptj(prompt: str):
    model = GPTJForCausalLM.from_pretrained("EleutherAI/gpt-j-6B")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    inputs = tokenizer.encode(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs, max_length=2048, num_return_sequences=1, no_repeat_ngram_size=2)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# CodeBERT (für Quellcode-Analyse)
def analyze_with_codebert(prompt: str):
    model = RobertaForMaskedLM.from_pretrained("microsoft/codebert-base")
    tokenizer = RobertaTokenizer.from_pretrained("microsoft/codebert-base")

    inputs = tokenizer(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs['input_ids'], max_length=2048, num_return_sequences=1)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# MalBERT (für Malware-Erkennung)
def analyze_with_malbert(prompt: str):
    model = BertForMaskedLM.from_pretrained("microsoft/malbert")
    tokenizer = BertTokenizer.from_pretrained("microsoft/malbert")

    inputs = tokenizer(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs['input_ids'], max_length=2048, num_return_sequences=1)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# SecureCodeGPT (für sichere Code-Analyse)
def analyze_with_securecodegpt(prompt: str):
    model = GPT2LMHeadModel.from_pretrained("facebook/securecodegpt")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    inputs = tokenizer.encode(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs, max_length=2048, num_return_sequences=1, no_repeat_ngram_size=2)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result


# DSLM-GPT2 (für datenschutzfreundliche Code-Analyse)
def analyze_with_dslm_gpt2(prompt: str):
    model = GPT2LMHeadModel.from_pretrained("microsoft/dslm-gpt2")
    tokenizer = GPT2Tokenizer.from_pretrained("gpt2")

    inputs = tokenizer.encode(prompt, return_tensors="pt", max_length=1024, truncation=True)
    outputs = model.generate(inputs, max_length=2048, num_return_sequences=1, no_repeat_ngram_size=2)

    result = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return result

# Funktion zur Datei-Analyse
def analyze_file_with_multiple_models(ll_file_path: str):
    # Lade den LLVM IR-Code aus der Datei
    with open(ll_file_path, "r") as f:
        ll_content = f.read()

    # Erstelle den Prompt für die Analyse
    prompt = f"Analyze the following LLVM IR code for potential malware or obfuscated code patterns:\n{ll_content}\n\nExplain potential security threats and malware techniques."

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
    gpt4_result  = analyze_with_openai_gpt(prompt, model="gpt-4")
    gpt3_5_result = analyze_with_openai_gpt(prompt, model="gpt-3.5-turbo")
    gpt3_result = analyze_with_openai_gpt(prompt, model="gpt-3")
    gpt_code_result = analyze_with_openai_gpt(prompt, model="code-davinci-002")
    claude_result = analyze_with_claude(prompt)
    gpt_neo_result = analyze_with_gpt_neo(prompt)
    gpt2_result = analyze_with_gpt2(prompt)
    gptj_result = analyze_with_gptj(prompt)
    codebert_result = analyze_with_codebert(prompt)
    malbert_result =analyze_with_malbert(prompt)
    securecodegpt_result = analyze_with_securecodegpt(prompt)
    dslm_gpt2_result = analyze_with_dslm_gpt2(prompt)

    # Ausgabe der Ergebnisse
    print(f"OpenAI GPT-4 Analyse: \n {gpt4_result }")
    print(f"OpenAI GPT-3.5 Analyse: \n {gpt3_5_result}")
    print(f"OpenAI GPT-3 Analyse: \n {gpt3_result}")
    print(f"OpenAI GPT-Code Analyse: \n {gpt_code_result}")
    print(f"Claude Analyse: \n {claude_result}")
    print(f"GPT Neo Analyse: \n {gpt_neo_result}")
    print(f"GPT 2 Analyse: \n {gpt2_result}")
    print(f"GPTJ Analyse: \n {gptj_result}")
    print(f"Codebert Analyse: \n {codebert_result}")
    print(f"Malbert Analyse: \n {malbert_result}")
    print(f"Securecodegpt Analyse: \n {securecodegpt_result}")
    print(f"Dslm_gpt2 Analyse: \n {dslm_gpt2_result}")




# Beispielhafte Nutzung:
ll_file_path = "path_to_your_obfuscated.ll"  # Ersetze mit dem Pfad zu deiner .ll Datei
analyze_file_with_multiple_models(ll_file_path)
