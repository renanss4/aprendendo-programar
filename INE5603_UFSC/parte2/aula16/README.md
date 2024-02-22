# Orientação a Objetos: Herança

Nesta seção, abordaremos o conceito de herança em programação orientada a objetos (POO) em Python, que permite criar novas classes baseadas em classes existentes.

### Definindo uma Classe Base
```python
# Definindo uma classe base Veiculo
class Veiculo:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    def acelerar(self):
        print("Veículo acelerando.")

    def frear(self):
        print("Veículo freando.")
```

### Criando uma Classe Derivada (Subclasse)
```python
# Definindo uma classe derivada Carro que herda de Veiculo
class Carro(Veiculo):
    def __init__(self, marca, modelo, cor):
        super().__init__(marca, modelo)
        self.cor = cor

    def abrir_porta(self):
        print("Abrindo porta do carro.")
```

### Utilizando a Herança
```python
# Criando um objeto da classe Carro
meu_carro = Carro("Toyota", "Corolla", "preto")

# Acessando atributos e métodos da classe base e da classe derivada
print("Marca do carro:", meu_carro.marca)
print("Modelo do carro:", meu_carro.modelo)
print("Cor do carro:", meu_carro.cor)

meu_carro.acelerar()
meu_carro.abrir_porta()
```

Nesta seção, aprendemos sobre herança em programação orientada a objetos em Python. Exploramos como criar classes derivadas (subclasses) que herdam atributos e métodos de uma classe base (superclasse), permitindo reutilização de código e extensibilidade.

---
