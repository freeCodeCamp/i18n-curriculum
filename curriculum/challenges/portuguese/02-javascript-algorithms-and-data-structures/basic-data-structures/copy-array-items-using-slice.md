---
id: 587d7b7a367417b2b2512b12
title: Copiar itens de um array usando slice()
challengeType: 1
forumTopicId: 301158
dashedName: copy-array-items-using-slice
---

# --description--

The next method we will cover is `slice()`. Rather than modifying an array, `slice()` copies or *extracts* a given number of elements to a new array, leaving the array it is called upon untouched. `slice()` takes only 2 parameters — the first is the index at which to begin extraction, and the second is the index at which to stop extraction (extraction will occur up to, but not including the element at this index). Consider this:

```js
let weatherConditions = ['rain', 'snow', 'sleet', 'hail', 'clear'];

let todaysWeather = weatherConditions.slice(1, 3);
```

`todaysWeather` teria o valor `['snow', 'sleet']`, enquanto `weatherConditions` ainda teria `['rain', 'snow', 'sleet', 'hail', 'clear']`.

Assim, criamos um novo array extraindo elementos de um array existente.

# --instructions--

Definimos uma função, `forecast`, que recebe um array como argumento. Modifique a função usando `slice()` para extrair a informação do array passado como argumento e retorne um novo array contendo os elementos strings `warm` e `sunny`.

# --hints--

`forecast` deve retornar `["warm", "sunny"]`

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

A função `forecast` deve usar o método `slice()`

```js
assert(/\.slice\(/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function forecast(arr) {
  // Only change code below this line

  return arr;
}

// Only change code above this line
console.log(forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']));
```

# --solutions--

```js
function forecast(arr) {
  return arr.slice(2,4);
}
```
