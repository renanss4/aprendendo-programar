# Estruturas de Repetição Aninhadas

Nesta seção, abordaremos o uso de estruturas de repetição aninhadas com o `while` em Python, que consiste em ter um ou mais loops dentro de outro loop.

### Exemplo Básico com `while`
```python
# Exemplo básico de estruturas de repetição aninhadas com while
linha = 1

while linha <= 5:
    coluna = 1
    while coluna <= linha:
        print("*", end=" ")
        coluna += 1
    print()
    linha += 1
```

### Outro Exemplo com `while`
```python
# Outro exemplo de estruturas de repetição aninhadas com while
numero = 1

while numero <= 3:
    contador = 1
    while contador <= 3:
        print(numero, end=" ")
        contador += 1
    numero += 1
    print()
```

### Exemplo com `for`
```python
# Exemplo básico de estruturas de repetição aninhadas com for
linhas = [1, 2, 3, 4, 5]
for linha in linhas:
    colunas = []
    for _ in linhas[:linha]:
        colunas.append("*")
    print(" ".join(colunas))
```

### Outro Exemplo com `for`
```python
# Outro exemplo de estruturas de repetição aninhadas com for
for numero in [1, 2, 3]:
    for contador in [1, 2, 3]:
        print(numero, end=" ")
    print()
```

Nesta seção, aprendemos sobre o uso de estruturas de repetição aninhadas tanto com `while` quanto com `for` em Python. Essas estruturas são úteis para implementar padrões complexos de repetição e iteração em programas Python.

---
