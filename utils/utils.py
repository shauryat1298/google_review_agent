import re

def remove_think_content_for_qwen(llm_output: str) -> str:
    return re.sub(r"<think>.*?</think>", "", llm_output, flags=re.DOTALL).strip()