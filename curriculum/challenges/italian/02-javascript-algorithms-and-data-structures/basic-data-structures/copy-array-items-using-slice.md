---
id: 587d7b7a367417b2b2512b12
title: Copiare elementi degli array usando slice()
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

`todaysWeather` avrà il valore `['snow', 'sleet']`, mentre `weatherConditions` sarà ancora `['rain', 'snow', 'sleet', 'hail', 'clear']`.

Di fatto, abbiamo creato un nuovo array estraendo elementi da un array esistente.

# --instructions--

Abbiamo definito una funzione, `forecast`che prende un array come argomento. Modifica la funzione usando `slice()` per estrarre le informazioni dall'array passato come argomento e restituire un nuovo array che contiene le stringhe `warm` e `sunny`.

# --hints--

`forecast` dovrebbe restituire `["warm", "sunny"]`

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

La funzione `forecast` dovrebbe utilizzare il metodo `slice()`

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
