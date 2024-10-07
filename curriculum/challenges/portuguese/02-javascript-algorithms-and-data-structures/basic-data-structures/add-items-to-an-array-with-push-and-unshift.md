---
id: 587d78b2367417b2b2512b0e
title: Adicionar itens em um array com push() e unshift()
challengeType: 1
forumTopicId: 301151
dashedName: add-items-to-an-array-with-push-and-unshift
---

# --description--

An array's length, like the data types it can contain, is not fixed. Arrays can be defined with a length of any number of elements, and elements can be added or removed over time; in other words, arrays are <dfn>mutable</dfn>. In this challenge, we will look at two methods with which we can programmatically modify an array: `Array.push()` and `Array.unshift()`.

Ambos os métodos recebem 1 ou mais elementos como parâmetros e adicionam esses elementos ao array no qual o método está sendo chamado; o método `push()` adiciona elementos ao final do array, e `unshift()` adiciona ao início. Considere o seguinte:

```js
let twentyThree = 'XXIII';
let romanNumerals = ['XXI', 'XXII'];

romanNumerals.unshift('XIX', 'XX');
```

`romanNumerals` teria os valores `['XIX', 'XX', 'XXI', 'XXII']`.

```js
romanNumerals.push(twentyThree);
```

`romanNumerals` teria os valores `['XIX', 'XX', 'XXI', 'XXII', 'XXIII']`. Note que nós também podemos passar variáveis, as quais nos permitem uma flexibilidade ainda maior na modificação dinâmica dos dados de nosso array.

# --instructions--

Definimos uma função, `mixedNumbers`, na qual estamos passando o array como um argumento. Modifique a função usando `push()` e `unshift()` para adicionar `'I', 2, 'three'` no início do array e `7, 'VIII', 9` ao final para que o array retornado contenha a representação dos números de 1 a 9 em ordem.

# --hints--

`mixedNumbers(["IV", 5, "six"])` agora deve retornar `["I", 2, "three", "IV", 5, "six", 7, "VIII", 9]`

```js
assert.deepEqual(mixedNumbers(['IV', 5, 'six']), [
  'I',
  2,
  'three',
  'IV',
  5,
  'six',
  7,
  'VIII',
  9
]);
```

A função `mixedNumbers` deve usar o método `push()`

```js
assert(mixedNumbers.toString().match(/\.push/));
```

A função `mixedNumbers` deve usar o método `unshift()`

```js
assert(mixedNumbers.toString().match(/\.unshift/));
```

# --seed--

## --seed-contents--

```js
function mixedNumbers(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(mixedNumbers(['IV', 5, 'six']));
```

# --solutions--

```js
function mixedNumbers(arr) {
  arr.push(7,'VIII',9);
  arr.unshift('I',2,'three');
  return arr;
}
```
