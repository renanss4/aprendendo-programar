# Projeto de Exercícios em Java

Este repositório contém uma variedade de exercícios e projetos desenvolvidos em Java. Assim como nos exercícios feitos em Python, este projeto segue o mesmo padrão de organização por partes, facilitando o aprendizado e a prática progressiva da linguagem.

## Motivação

O objetivo deste projeto é fornecer uma oportunidade de aprendizado prático da linguagem de programação Java. Ao dividir os exercícios em partes, os iniciantes podem abordar gradualmente diferentes aspectos da linguagem, desde os conceitos fundamentais até projetos mais complexos.



SEPARAR OS MATERIAIS CORRETAMENTE

## Conceitos de Programação Orientada a Objetos (POO) em Java

Neste documento, vamos explorar os principais conceitos da Programação Orientada a Objetos (POO) em Java. A POO é um paradigma de programação que organiza o código em entidades chamadas objetos, que têm características (atributos) e comportamentos (métodos). Java é uma linguagem de programação fortemente orientada a objetos e oferece suporte completo a esses conceitos.

## Encapsulamento

O encapsulamento é um dos princípios fundamentais da POO, que consiste em esconder os detalhes de implementação dos objetos e fornecer uma interface clara para interagir com eles. Isso é alcançado através da declaração de variáveis como privadas e fornecimento de métodos públicos para acessar e modificar essas variáveis.

Exemplo:
```java
public class ContaBancaria {
    private double saldo;

    public double getSaldo() {
        return saldo;
    }

    public void depositar(double valor) {
        saldo += valor;
    }

    public void sacar(double valor) {
        saldo -= valor;
    }
}
```

## Sobrecarga

A sobrecarga permite que você defina vários métodos com o mesmo nome, mas com diferentes parâmetros. O compilador Java determina qual método chamar com base nos tipos e na quantidade de argumentos passados.

Exemplo:
```java
public class Calculadora {
    public int somar(int a, int b) {
        return a + b;
    }

    public double somar(double a, double b) {
        return a + b;
    }
}
```

## Palavra-chave `this`

A palavra-chave `this` é uma referência implícita à instância atual da classe. Ela é utilizada para acessar os membros da classe (variáveis de instância e métodos) e para evitar ambiguidade entre variáveis locais e membros da classe.

Exemplo:
```java
public class Pessoa {
    private String nome;

    public Pessoa(String nome) {
        this.nome = nome;
    }

    public void exibirNome() {
        System.out.println("Nome: " + this.nome);
    }
}
```

## Construtor

Um construtor é um método especial que é chamado quando um objeto é instanciado. Ele é utilizado para inicializar os estados do objeto. Em Java, o nome do construtor deve ser o mesmo nome da classe.

Exemplo:
```java
public class Carro {
    private String modelo;
    private String cor;

    public Carro(String modelo, String cor) {
        this.modelo = modelo;
        this.cor = cor;
    }
}
```

## Herança

A herança é um mecanismo em POO que permite que uma classe herde atributos e métodos de outra classe. A classe que herda é chamada de classe filha (ou subclasse) e a classe que é herdada é chamada de classe pai (ou superclasse).

Exemplo:
```java
public class Animal {
    public void comer() {
        System.out.println("Animal comendo...");
    }
}

public class Cachorro extends Animal {
    public void latir() {
        System.out.println("Cachorro latindo...");
    }
}
```

## Getter e Setter

Getter e Setter são métodos utilizados para acessar e modificar os valores dos atributos de uma classe de forma controlada, seguindo o princípio de encapsulamento.

Exemplo:
```java
public class Pessoa {
    private String nome;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
```

## Polimorfismo

Polimorfismo é a capacidade de uma mesma interface ser utilizada de diversas formas. Em Java, o polimorfismo pode ocorrer através de sobrecarga de métodos (mesmo nome, diferentes parâmetros) ou de sobrescrita de métodos (métodos com a mesma assinatura em classes diferentes).

Exemplo de sobrescrita:
```java
public class Animal {
    public void fazerSom() {
        System.out.println("Som genérico de animal...");
    }
}

public class Cachorro extends Animal {
    @Override
    public void fazerSom() {
        System.out.println("Au au!");
    }
}

public class Gato extends Animal {
    @Override
    public void fazerSom() {
        System.out.println("Miau!");
    }
}
```

Estes são alguns dos conceitos fundamentais da POO em Java. É importante compreendê-los para desenvolver aplicativos robustos e eficientes em Java.