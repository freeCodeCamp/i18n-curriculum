---
id: 6aeaec9c8f05dde6a77e511f
title: Como listas compartilhadas se comportam em Python?
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

Você aprendeu que nomes se referem a objetos e que listas são mutáveis. Vamos ver o que acontece quando mais de um nome se refere à mesma lista.

## Comparando listas iguais e aliases

Duas listas podem conter valores iguais sem serem o mesmo objeto. Lembre-se que `==` verifica igualdade, enquanto `is` verifica identidade:

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

Cada expressão `['milk']` cria uma lista separada. Porém, `alias = items` não cria uma cópia. Ela vincula outro nome à lista existente. Chamamos esse outro nome de alias.

Alterar a lista por qualquer um dos nomes é visível pelo outro:

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

A lista separada `equal_items` permanece inalterada.

## Mutando uma lista através de um parâmetro de função

Argumentos são passados por atribuição. Um parâmetro é um nome local inicialmente vinculado ao objeto fornecido pelo chamador. Python não copia automaticamente esse objeto.

Aqui, o parâmetro `items` e a variável do chamador `groceries` se referem à mesma lista:

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

Chamar `append()` modifica a lista compartilhada. A função não tem uma declaração `return`, então retorna `None`, mas a alteração na lista ainda é visível para o chamador.

Reatribuir o parâmetro local tem um efeito diferente:

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

A atribuição faz o nome local `items` se referir a uma nova lista. Isso não altera a lista original nem reatribui a variável `groceries` do chamador.

## Retornando uma nova lista

Uma função pode criar e retornar uma nova lista em vez de modificar a fornecida. O operador `+` concatena listas, criando uma nova lista externa contendo seus elementos:

```py
def with_extra_item(items):
    return items + ['eggs']

groceries = ['milk']
alias = groceries

groceries = with_extra_item(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk']
print(groceries is alias) # False
```

O chamador atribui a lista retornada a `groceries`. O nome `alias` ainda se refere à lista original. Chamar a função sem atribuir ou usar seu valor de retorno deixaria `groceries` referindo-se também àquela lista original.

A concatenação cria uma nova lista externa, mas não copia objetos aninhados. Se um elemento for uma lista, a nova lista externa contém uma referência àquela mesma lista interna.

## Comparando `+` e `+=` para listas

Para listas embutidas, `items = items + [...]` cria uma nova lista e reatribui `items`. Em contraste, `items += [...]` estende a lista existente no lugar:

```py
def add_with_plus(items):
    items = items + ['eggs']

def add_with_plus_equals(items):
    items += ['eggs']

groceries = ['milk']
alias = groceries

add_with_plus(groceries)
print(groceries) # ['milk']
print(alias) # ['milk']

add_with_plus_equals(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
```

Na primeira função, apenas o nome local se refere à nova lista. Na segunda, a lista compartilhada é modificada e o nome local ainda se refere a ela. Por isso, `+=` em listas não é intercambiável com adição seguida de atribuição quando existem outras referências à lista.

## Usando uma lista como argumento padrão

Um argumento padrão fornece um valor quando o chamador omite esse argumento. Se você usar uma lista vazia como padrão, Python cria essa lista uma vez, quando a função é definida. Chamadas que omitirem o argumento reutilizam a mesma lista:

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

A segunda chamada recebe a lista modificada pela primeira. Embora cada chamada tenha seu próprio nome local para o parâmetro, esse nome se refere ao mesmo objeto padrão. A lista não fica vazia novamente entre as chamadas.

Se cada chamada deve começar com uma lista nova quando nenhuma lista for fornecida, use `None` como padrão e crie a lista dentro da função:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

Aqui, `items = []` é executado toda vez que o argumento é omitido ou passado explicitamente como `None`, criando uma nova lista para aquela chamada.

Você ainda pode passar uma lista existente para ser modificada:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

groceries = []
add_item('milk', groceries)
add_item('eggs', groceries)
print(groceries) # ['milk', 'eggs']
```

A verificação `items is None` distingue uma lista ausente de uma lista vazia fornecida pelo chamador. Usar `if not items` também corresponderia a uma lista vazia e a substituiria por uma nova, então a lista vazia do chamador não receberia o item adicionado.

## Repetindo referências a listas aninhadas

Você viu como a repetição de listas pode criar uma lista como `[0] * 3`. A repetição cria uma nova lista externa, mas repete referências aos seus elementos em vez de copiar esses elementos.

Isso importa quando o elemento é mutável:

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

A expressão `[[]]` cria uma lista interna. Repeti-la coloca referências àquela mesma lista interna nas três posições. Modificá-la por `rows[0]` é visível em todas as posições.

Com `numbers = [0] * 3`, atribuir `numbers[0] = 1` substitui uma referência de elemento; não modifica o inteiro imutável `0`. Por isso as outras posições permanecem `0`.

Se você precisar de listas internas separadas, crie cada uma separadamente:

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

Mais adiante neste módulo, você aprenderá como compreensões de listas podem criar um número escolhido de listas internas separadas.

# --questions--

## --text--

O que o seguinte código irá imprimir?

```py
def update(items):
    items.append('b')
    items = ['c']

letters = ['a']
update(letters)
print(letters)
```

## --answers--

`['a']`

### --feedback--

Adicionar altera a lista compartilhada, enquanto reatribuir altera apenas o nome local.

---

`['c']`

### --feedback--

Adicionar altera a lista compartilhada, enquanto reatribuir altera apenas o nome local.

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

Adicionar altera a lista compartilhada, enquanto reatribuir altera apenas o nome local.

## --video-solution--

3

## --text--

Após `items = ['milk']` e `alias = items`, qual declaração adiciona `'eggs'` à lista à qual `alias` se refere?

## --answers--

`items = items + ['eggs']`

### --feedback--

Pense em qual operação estende a lista existente no lugar.

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

Pense em qual operação estende a lista existente no lugar.

---

`items + ['eggs']`

### --feedback--

Pense em qual operação estende a lista existente no lugar.

## --video-solution--

2

## --text--

Por que adicionar a `rows[0]` após `rows = [[]] * 3` faz com que as três posições exibam o novo item?

## --answers--

Cada posição se refere à mesma lista interna.

---

Python copia automaticamente cada alteração para listas internas separadas.

### --feedback--

A repetição de listas repete referências aos elementos sem copiar os próprios elementos.

---

O método `append()` sempre altera todas as listas em um programa.

### --feedback--

A repetição de listas repete referências aos elementos sem copiar os próprios elementos.

---

O operador de multiplicação executa `append()` três vezes.

### --feedback--

A repetição de listas repete referências aos elementos sem copiar os próprios elementos.

## --video-solution--

1
