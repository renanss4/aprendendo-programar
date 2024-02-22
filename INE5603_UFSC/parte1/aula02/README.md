# Variáveis e I/O

Nesta seção, abordaremos o conceito de variáveis em Python e como realizar operações de entrada e saída de dados (I/O).

### Declaração de Variáveis
```python
# Declaração de variáveis
idade = 25
nome = "Maria"
salario = 1500.50

# Exibindo os valores das variáveis
print("Idade:", idade)
print("Nome:", nome)
print("Salário:", salario)
```

### Entrada de Dados
```python
# Entrada de dados do usuário
nome = input("Digite seu nome: ")
idade = int(input("Digite sua idade: "))
salario = float(input("Digite seu salário: "))

# Exibindo os valores inseridos pelo usuário
print("Nome digitado:", nome)
print("Idade digitada:", idade)
print("Salário digitado:", salario)
```

### Saída de Dados Formatada
```python
# Saída de dados formatada
print("Nome: {}, Idade: {}, Salário: {:.2f}".format(nome, idade, salario))

# Saída de dados utilizando f-string
print(f"Nome: {nome}, Idade: {idade}, Salário: {salario:.2f}")
```

Nesta seção, aprendemos sobre a declaração de variáveis em Python, entrada de dados do usuário e saída de dados formatada. Esses conceitos são essenciais para interagir com o usuário e manipular informações em programas Python.

---
