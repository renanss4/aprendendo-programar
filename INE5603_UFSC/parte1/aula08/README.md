# Funções

Nesta seção, abordaremos o conceito de funções em Python, que nos permite encapsular um bloco de código para reutilização e modularização.

### Definindo uma Função
```python
# Definição de uma função
def saudacao(nome):
    """Função para saudar o usuário."""
    print(f"Olá, {nome}! Bem-vindo(a) à nossa aplicação.")

# Chamando a função
saudacao("Maria")
```

### Função com Retorno
```python
# Função com retorno
def soma(a, b):
    """Função para calcular a soma de dois números."""
    return a + b

# Chamando a função e armazenando o resultado em uma variável
resultado = soma(5, 3)
print("Resultado da soma:", resultado)
```

### Argumentos Padrão
```python
# Função com argumento padrão
def potencia(numero, expoente=2):
    """Função para calcular a potência de um número."""
    return numero ** expoente

# Chamando a função com argumento padrão
print("Potência de 2 elevado a 3:", potencia(2, 3))

# Chamando a função sem especificar o argumento opcional (usa o valor padrão)
print("Potência de 2 elevado ao quadrado:", potencia(2))
```

Nesta seção, aprendemos sobre funções em Python, que nos permitem encapsular blocos de código para reutilização e modularização. As funções podem ter argumentos, retornar valores e até mesmo ter argumentos padrão para maior flexibilidade.

---
