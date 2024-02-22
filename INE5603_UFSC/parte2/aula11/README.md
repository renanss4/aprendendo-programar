# Matrizes

Nesta seção, abordaremos o conceito de matrizes em Python e demonstraremos exemplos de iteração utilizando `while` e `for` sem o uso da função `range()`.

### Criando uma Matriz
```python
# Criando uma matriz vazia
matriz = []

# Adicionando linhas à matriz
linhas = 3
colunas = 3

while len(matriz) < linhas:
    linha = []
    while len(linha) < colunas:
        linha.append(0)
    matriz.append(linha)

# Exibindo a matriz
print("Matriz criada:")
for linha in matriz:
    for elemento in linha:
        print(elemento, end=" ")
    print()
```

### Modificando Elementos da Matriz
```python
# Modificando elementos da matriz
linha_modificada = 1
coluna_modificada = 1
novo_valor = 5

for indice_linha, linha in enumerate(matriz):
    for indice_coluna, elemento in enumerate(linha):
        if indice_linha == linha_modificada and indice_coluna == coluna_modificada:
            matriz[indice_linha][indice_coluna] = novo_valor

# Exibindo a matriz modificada
print("\nMatriz após modificar elemento:")
for linha in matriz:
    for elemento in linha:
        print(elemento, end=" ")
    print()
```

### Outro Exemplo Completo
```python
# Criando uma matriz vazia
matriz = []

# Definindo o tamanho da matriz
linhas = 3
colunas = 3

# Inicializando a variável de controle da linha
linha_atual = 0

# Construindo a matriz
while linha_atual < linhas:
    # Inicializando uma nova linha
    linha = []
    # Inicializando a variável de controle da coluna
    coluna_atual = 0
    while coluna_atual < colunas:
        # Adicionando elementos à linha
        linha.append(0)
        coluna_atual += 1
    # Adicionando a linha à matriz
    matriz.append(linha)
    linha_atual += 1

# Exibindo a matriz criada
print("Matriz criada:")
for linha in matriz:
    print(linha)
```

Nesta seção, aprendemos sobre matrizes em Python e demonstramos exemplos de criação e modificação de matrizes utilizando iteração com `while` e `for`. Matrizes são estruturas de dados bidimensionais essenciais em muitas aplicações computacionais.

---
