---
id: 66edcccbba6dacdb65a59067
title: Questionário sobre arrays em JavaScript
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

Para passar no quiz, você deve responder corretamente pelo menos 18 das 20 perguntas abaixo.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual será a saída para o seguinte código?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

Qual das seguintes é a maneira correta de acessar a string `"Jessica"` do array `developers`?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

Qual valor será atribuído à variável `index`?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

O que a sintaxe rest faz?

#### --distractors--

É usado para dividir uma string em um array de substrings.

---

É usado para adicionar ou remover elementos de qualquer posição em um array.

---

É usado para adicionar elementos ao final do array e retornará o novo comprimento.

#### --answer--

Ele captura os elementos restantes de um array em um novo array.

### --question--

#### --text--

O que é destructuring de array?

#### --distractors--

É usado para concatenar todos os elementos de um array em uma única string.

---

É usado para verificar se um array contém um valor específico.

---

É usado para remover o último elemento de um array e retornará esse elemento removido.

#### --answer--

É usado para extrair valores de arrays e atribuí-los a variáveis de uma forma mais concisa e legível.

### --question--

#### --text--

Qual valor será atribuído à variável `arr2`?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

O que este código irá registrar no console?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

Qual valor será atribuído à variável `slicedArr`?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

Qual método retorna o primeiro índice de um determinado elemento em um array?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

Qual método é usado para remover o primeiro elemento de um array e retorna esse elemento removido?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

O que o método `concat()` faz?

#### --distractors--

Une os elementos do array em uma string.

---

Adiciona um elemento ao início de um array.

---

Remove um elemento do array.

#### --answer--

Mescla dois arrays em um novo array.

### --question--

#### --text--

Qual será a saída deste código?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

O que o método `includes()` faz?

#### --distractors--

É usado para dividir uma string em um array de substrings.

---

É usado para concatenar todos os elementos de um array em uma única string.

---

É usado para adicionar ou remover elementos de qualquer posição em um array.

#### --answer--

É usado para verificar se um array contém um valor específico.

### --question--

#### --text--

Qual dos seguintes métodos é usado para inverter um array no local?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

O que é um array bidimensional?

#### --distractors--

Um array que contém apenas literais de objeto.

---

Um array de comprimento fixo.

---

Um array de números de ponto flutuante.

#### --answer--

Um array de arrays.

### --question--

#### --text--

Qual das seguintes afirmações é verdadeira sobre o método `indexOf()` em arrays?

#### --distractors--

Sempre retorna a última ocorrência do elemento.

---

Ele gera um erro se o elemento não for encontrado.

---

Ele requer que o array esteja ordenado.

#### --answer--

Retorna `-1` se o elemento não for encontrado.

### --question--

#### --text--

Qual dos seguintes NÃO é um método de array?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

Qual será a saída para o seguinte código?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

Qual será o resultado de usar o método `shift()` em um array vazio?


#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

Qual método retornará um novo array sem alterar o array original?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
