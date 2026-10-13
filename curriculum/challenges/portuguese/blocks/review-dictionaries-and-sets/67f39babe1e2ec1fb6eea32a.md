---
id: 67f39babe1e2ec1fb6eea32a
title: Revisão de Dicionários e Conjuntos
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Dicionários

- **Dicionários**: Dicionários são estruturas de dados embutidas que armazenam coleções de pares chave-valor. As chaves precisam ser tipos de dados imutáveis. Esta é a sintaxe geral de um dicionário em Python:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **Construtor `dict()`**: O construtor `dict()` é uma forma alternativa de construir o dicionário. Você passa uma lista de tuplas como argumento para o construtor `dict()`. Essas tuplas contêm a chave como primeiro elemento e o valor como segundo elemento.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Notação por colchetes**: Para acessar o valor de um par chave-valor, você pode usar a sintaxe conhecida como notação por colchetes.

```python
dictionary[key]
```

## Métodos comuns de dicionário

- **Método `get()`**: O método `get()` recupera o valor associado a uma chave. É semelhante à notação por colchetes, mas permite definir um valor padrão, evitando erros caso a chave não exista.

```python
dictionary.get(key, default)
```

- **Métodos `keys()` e `values()`**: Os métodos `keys()` e `values()` retornam um objeto view com todas as chaves e valores do dicionário, respectivamente. Um objeto view é uma forma de ver o conteúdo de um dicionário sem criar uma cópia separada dos dados.

```python
pizza = {
    'name': 'Margherita Pizza',
    'price': 8.9,
    'calories_per_slice': 250
}

pizza.keys()
# dict_keys(['name', 'price', 'calories_per_slice'])

pizza.values()
# dict_values(['Margherita Pizza', 8.9, 250])
```

- **Método `items()`**: O método `items()` retorna um objeto view com todos os pares chave-valor do dicionário, incluindo tanto as chaves quanto os valores.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **Método `clear()`**: O método `clear()` remove todos os pares chave-valor do dicionário.

```python
pizza.clear()
```

- **Método `pop()`**: O método `pop()` remove o par chave-valor com a chave especificada como primeiro argumento e retorna seu valor. Se a chave não existir, retorna o valor padrão especificado como segundo argumento. Se a chave não existir e o valor padrão não for especificado, um `KeyError` é gerado.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **Método `popitem()`**: No Python 3.7 e superior, o método `popitem()` remove o último item inserido.

```python
pizza.popitem()
```

- **Método `update()`**: O método `update()` atualiza os pares chave-valor com os pares chave-valor de outro dicionário. Se tiverem chaves em comum, seus valores são sobrescritos. Novas chaves serão adicionadas ao dicionário como novos pares chave-valor.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Looping sobre um dicionário

- **Iterando sobre valores**: Se você precisa iterar sobre os valores em um dicionário, pode escrever um loop `for` com `values()` para obter todos os valores de um dicionário.

```python
products = {
    'Laptop': 990,
    'Smartphone': 600,
    'Tablet': 250,
    'Headphones': 70,
}

for price in products.values():
    print(price)
```

Resultado:

```md
990
600
250
70
```

- **Iterando sobre chaves**: Se você precisa iterar sobre as chaves no dicionário `products` acima, pode escrever `products.keys()` ou `products` diretamente.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

Resultado:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **Iterando sobre pares chave-valor**: Se você precisa iterar sobre as chaves e seus valores correspondentes simultaneamente, pode iterar sobre `products.items()`. Você obtém tuplas individuais com as chaves e seus valores correspondentes.

```python
for product in products.items():
    print(product)
```

Resultado:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

Para armazenar a chave e o valor em variáveis de loop separadas, você precisa separá-las com uma vírgula. A primeira variável armazena a chave e a segunda armazena o valor.

```python
for product, price in products.items():
    print(product, price)
```

Resultado:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **Função `enumerate()`**: Se você precisa iterar sobre um dicionário enquanto mantém o controle de um contador, pode chamar a função `enumerate()`. A função retorna um objeto `enumerate`, que atribui um inteiro a cada item, como um contador. Você pode iniciar o contador a partir de qualquer número, mas por padrão, ele começa em 0.

Atribuir o índice e o item a variáveis de loop separadas é a forma comum de usar `enumerate()`. Por exemplo, com `products.items()`, você pode obter o par chave-valor inteiro além do índice:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

Resultado:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

Para personalizar o valor inicial da contagem, você pode passar um segundo argumento para `enumerate()`. Por exemplo, aqui estamos começando a contagem a partir de 1.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

Resultado:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## Conjuntos

- **Conjuntos**: Conjuntos ou sets são estruturas de dados embutidas em Python que não permitem valores duplicados. Conjuntos são mutáveis e não ordenados, o que significa que seus elementos não são armazenados em uma ordem específica, então você não pode usar índices ou chaves para acessá-los. Além disso, conjuntos só podem conter valores de tipos de dados imutáveis, como números, strings e tuplas.

- **Definindo um conjunto**: Para definir um conjunto, você precisa escrever seus elementos entre chaves e separá-los com vírgulas.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Definindo um conjunto vazio**: Se você precisar definir um conjunto vazio, deve usar a função `set()`. Apenas escrever chaves vazias criará automaticamente um dicionário.

```python
set() # Set
{}    # Dictionary
```

## Métodos comuns de conjunto

- **Método `add()`**: Você pode adicionar um elemento a um conjunto com o método `add()`, passando o novo elemento como argumento.

```python
my_set.add(6)
```

- **Métodos `remove()` e `discard()`**: Para remover um elemento de um conjunto, você pode usar o método `remove()` ou o método `discard()`, passando o elemento que deseja remover como argumento. O método `remove()` lançará um `KeyError` se o elemento não for encontrado, enquanto o método `discard()` não lançará.

```python
my_set.remove(4)
my_set.discard(4)
```

- **Método `clear()`**: O método `clear()` remove todos os elementos do conjunto.

```python
my_set.clear()
```

## Operações matemáticas com conjuntos

- **Métodos `issubset()` e `issuperset()`**: Os métodos `issubset()` e `issuperset()` verificam se um conjunto é subconjunto ou superconjunto de outro conjunto, respectivamente.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **Método `isdisjoint()`**: O método `isdisjoint()` verifica se dois conjuntos são disjuntos, ou seja, se não têm elementos em comum.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **Operador união (`|`)**: O operador união `|` retorna um novo conjunto com todos os elementos de ambos os conjuntos.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Operador interseção (`&`)**: O operador interseção `&` retorna um novo conjunto apenas com os elementos que os conjuntos têm em comum.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Operador diferença (`-`)**: O operador diferença `-` retorna um novo conjunto com os elementos do primeiro conjunto que não estão no outro conjunto.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Operador diferença simétrica (`^`)**: O operador diferença simétrica `^` retorna um novo conjunto com os elementos que estão no primeiro ou no segundo conjunto, mas não em ambos.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **Operador `in`**: Você pode verificar se um elemento está em um conjunto ou não com o operador `in`.

```python
print(5 in my_set) # True
```

## Biblioteca padrão do Python

- **Biblioteca padrão do Python**: Uma biblioteca oferece código pré-escrito e reutilizável, como funções, classes e estruturas de dados, que você pode reutilizar em seus projetos. O Python possui uma biblioteca padrão extensa com módulos embutidos que implementam soluções padronizadas para muitos problemas e tarefas. Alguns exemplos de módulos embutidos populares são `math`, `random`, `re` (abreviação de "expressões regulares") e `datetime`.

## Declaração Import

- **Declaração de importação**: Para acessar os elementos definidos em módulos embutidos, você usa uma declaração de importação. Declarações de importação geralmente são escritas no topo do arquivo. Elas funcionam da mesma forma para funções, classes, constantes, variáveis e quaisquer outros elementos definidos no módulo.

- **Declaração básica de importação**: Você pode usar a palavra-chave `import` seguida do nome do módulo:

```python
import module_name
```

Então, se precisar chamar uma função desse módulo, você usaria a notação de ponto, com o nome do módulo seguido do nome da função.

```python
module_name.function_name()
```

Por exemplo, você escreveria o seguinte no seu código para importar o módulo `math` e obter a raiz quadrada de 36:

```python
import math

math.sqrt(36)
```

- **Importando um módulo com um nome diferente**: Se precisar importar o módulo com um nome diferente (também conhecido como "alias"), você pode usar `as` seguido do alias no final da declaração de importação. Isso é frequentemente usado para nomes de módulos longos ou para evitar conflitos de nomes.

```python
import module_name as module_alias
```

Por exemplo, para se referir ao módulo `math` como `m` no seu código, você pode atribuir um alias assim:

```python
import math as m
```

Então, você pode acessar os elementos do módulo usando o alias:

```python
m.sqrt(36)
```

- **Importando elementos específicos**: Se você não precisa de tudo de um módulo, pode importar elementos específicos usando `from`. Nesse caso, a declaração de importação começa com `from`, seguida do nome do módulo, depois a palavra-chave `import` e, finalmente, os nomes dos elementos que deseja importar.

```python
from module_name import name1, name2
```

Então, você pode usar esses nomes sem o prefixo do módulo no seu script Python. Por exemplo:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
Isso é útil, mas pode resultar em conflitos de nomes se você já tiver funções ou variáveis com o mesmo nome. Tenha isso em mente ao escolher qual tipo de declaração de importação usar.

Se precisar atribuir aliases a esses nomes, também pode fazer isso, usando a palavra-chave `as` seguida do alias.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Declaração de importação com asterisco (`*`)**: O asterisco indica ao Python que você quer importar tudo daquele módulo, mas quer importar de forma que não precise usar o nome do módulo como prefixo.

```python
from module_name import *
```

Por exemplo, se usar isso para importar o módulo `math`, poderá chamar qualquer função definida nesse módulo sem especificar o nome do módulo como prefixo.

```python
from math import *
print(sqrt(36))  # 6.0
```

No entanto, isso geralmente é desencorajado porque pode causar colisões de namespace e dificultar saber de onde os nomes vêm.

## `if __name__ == '__main__'`

- **Variável `__name__`**: `__name__` é uma variável embutida especial em Python. Quando um arquivo Python é executado diretamente, o Python define o valor dessa variável como a string `"__main__"`. Mas se o arquivo Python for importado como um módulo em outro script Python, o valor da variável `__name__` é definido como o nome desse módulo.

É por isso que você frequentemente encontrará essa condicional em scripts Python. Ela contém o código que você quer executar **somente** se o script Python estiver rodando como o programa principal.

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

Revise os tópicos e conceitos de Dictionaries e Sets.
