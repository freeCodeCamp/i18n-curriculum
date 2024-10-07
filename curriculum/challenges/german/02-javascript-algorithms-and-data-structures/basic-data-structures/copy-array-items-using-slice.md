---
id: 587d7b7a367417b2b2512b12
title: Kopiere Array-Elemente mit der slice() - Methode
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

`todaysWeather` würde den Wert `['snow', 'sleet']` haben, während `weatherConditions` immer noch `['rain', 'snow', 'sleet', 'hail', 'clear']` hat.

Wir haben in der Tat einen neuen Array erstellt, indem wir Elemente aus einem bestehenden Array extrahiert haben.

# --instructions--

Wir haben eine Funktion `forecast` definiert, die einen Array als ein Argument verwendet. Verändere die Funktion mit `slice()`, um Informationen aus dem Argument-Array zu extrahieren und einen neuen Array mit den String-Elementen `warm` und `sunny` zurückzugeben.

# --hints--

`forecast` sollte `["warm", "sunny"]` zurückgeben

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

Die Funktion `forecast` sollte die `slice()` Methode verwenden

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
