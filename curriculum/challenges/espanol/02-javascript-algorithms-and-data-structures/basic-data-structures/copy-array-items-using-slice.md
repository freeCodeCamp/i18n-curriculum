---
id: 587d7b7a367417b2b2512b12
title: Copia elementos de un arreglo usando slice()
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

`todaysWeather` tendrá el valor `['snow', 'sleet']`, mientras que `weatherConditions` todavía tendrá `['rain', 'snow', 'sleet', 'hail', 'clear']`.

En efecto, hemos creado un nuevo arreglo extrayendo elementos de un arreglo existente.

# --instructions--

Hemos definido una función, `forecast`, que toma un arreglo como argumento. Modifica la función usando `slice()` para extraer información del arreglo de argumentos y devuelve un nuevo arreglo que contenga los elementos `warm` y `sunny`.

# --hints--

`forecast` debe devolver `["warm", "sunny"]`

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

La función `forecast` debe utilizar el método `slice()`

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
