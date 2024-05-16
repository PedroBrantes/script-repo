import string
import random

def generate_api_key(length=20):
    """
    Gera uma API key aleatória com o comprimento especificado.
    """
    characters = string.ascii_letters + string.digits
    api_key = ''.join(random.choice(characters) for _ in range(length))
    return api_key

# Gera 15 API keys e as exibe
for _ in range(15):
    print(generate_api_key())
