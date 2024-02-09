# Cheat Sheet para C++

Este "cheat sheet" contém uma série de exemplos e conceitos importantes da linguagem de programação C++, fornecendo uma referência rápida para ajudá-lo a revisar e entender a sintaxe e os recursos da linguagem.

## Comentários

```cpp
// Comentário de uma linha

/*
   Comentário de múltiplas linhas
*/
```

## Inclusão de Bibliotecas

```cpp
#include <iostream>
#include <vector>
#include <string>
```

## Espaço de Nomes (Namespace)

```cpp
using namespace std;
```

## Função principal

```cpp
int main() {
    // código aqui
    return 0;
}
```

## Saída no Console

```cpp
cout << "Hello, World!" << endl;
```

## Declaração de Variáveis

```cpp
int numero;
float preco;
char letra;
string palavra;
```

## Atribuição de Valores

```cpp
numero = 10;
preco = 5.99;
letra = 'A';
palavra = "C++";
```

## Entrada do Console

```cpp
cin >> numero;
```

## Estruturas de Controle

```cpp
if (condição) {
    // código
} else if (outra condição) {
    // código
} else {
    // código
}

for (inicialização; condição; incremento) {
    // código
}

while (condição) {
    // código
}
```

## Vetores (Arrays)

```cpp
int numeros[5] = {1, 2, 3, 4, 5};
```

## Vetores Dinâmicos (Vector)

```cpp
vector<int> vetor = {1, 2, 3, 4, 5};
vetor.push_back(6);
```

## Funções

```cpp
int soma(int a, int b) {
    return a + b;
}
```

## Classes e Objetos

```cpp
class Carro {
public:
    string marca;
    string modelo;
    int ano;

    Carro(string m, string mod, int a) {
        marca = m;
        modelo = mod;
        ano = a;
    }

    void dirigir() {
        cout << "Dirigindo um " << marca << " " << modelo << " do ano " << ano << endl;
    }
};
```

## Ponteiros

```cpp
int* ptr = &numero;
```

## Referências

```cpp
int& ref = numero;
```

## Alocação Dinâmica de Memória

```cpp
int* p = new int;
*p = 10;
delete p;
```

## Exceções

```cpp
try {
    throw runtime_error("Erro!");
} catch (exception& e) {
    cout << e.what() << endl;
}
```

Este "cheat sheet" abrange uma variedade de conceitos em C++, desde o básico até conceitos mais avançados, incluindo controle de fluxo, estruturas de dados, funções, classes, ponteiros, alocação dinâmica de memória e exceções. Use-o como uma referência rápida para revisar os conceitos de C++.