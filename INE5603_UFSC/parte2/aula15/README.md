# Orientação a Objetos: Fundamentos

Nesta seção, abordaremos os fundamentos da programação orientada a objetos (POO) em Python, que é um paradigma de programação que utiliza objetos para representar entidades e suas interações.

### Classes e Objetos
```python
# Definindo uma classe Pessoa
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

# Criando um objeto da classe Pessoa
pessoa1 = Pessoa("João", 30)

# Acessando os atributos do objeto
print("Nome:", pessoa1.nome)
print("Idade:", pessoa1.idade)
```

### Métodos
```python
# Definindo uma classe Carro
class Carro:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    def ligar(self):
        print("O carro está ligado.")

    def desligar(self):
        print("O carro está desligado.")

# Criando um objeto da classe Carro
carro1 = Carro("Toyota", "Corolla")

# Chamando métodos do objeto
carro1.ligar()
carro1.desligar()
```

### Encapsulamento
```python
# Definindo uma classe ContaBancaria
class ContaBancaria:
    def __init__(self, saldo):
        self.__saldo = saldo  # atributo privado

    def depositar(self, valor):
        self.__saldo += valor

    def sacar(self, valor):
        if valor <= self.__saldo:
            self.__saldo -= valor
        else:
            print("Saldo insuficiente.")

    def get_saldo(self):
        return self.__saldo

# Criando um objeto da classe ContaBancaria
conta1 = ContaBancaria(1000)

# Acessando o saldo através de um método
print("Saldo inicial:", conta1.get_saldo())

# Realizando operações de depósito e saque
conta1.depositar(500)
conta1.sacar(200)

# Exibindo o saldo atualizado
print("Saldo atualizado:", conta1.get_saldo())
```

Nesta seção, aprendemos sobre os fundamentos da programação orientada a objetos em Python. Exploramos a criação de classes e objetos, definição de métodos, encapsulamento de atributos e acesso controlado aos membros de uma classe.

---
