# Diagonais de Matrizes

Nesta seção, abordaremos como obter as diagonais de uma matriz em Python.

### Obtendo as Diagonais
```python
# Criando uma matriz de exemplo
matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Obtendo a diagonal principal
diagonal_principal = []
indice = 0
while indice < len(matriz):
    diagonal_principal.append(matriz[indice][indice])
    indice += 1

# Exibindo a diagonal principal
print("Diagonal principal:", diagonal_principal)

# Obtendo a diagonal secundária
diagonal_secundaria = []
indice_linha = 0
indice_coluna = len(matriz) - 1
while indice_coluna >= 0 and indice_linha < len(matriz):
    diagonal_secundaria.append(matriz[indice_linha][indice_coluna])
    indice_linha += 1
    indice_coluna -= 1

# Exibindo a diagonal secundária
print("Diagonal secundária:", diagonal_secundaria)
```

Nesta seção, aprendemos como obter as diagonais de uma matriz em Python. Utilizamos um método direto para obter a diagonal principal e um método que percorre a matriz para obter a diagonal secundária.

---
