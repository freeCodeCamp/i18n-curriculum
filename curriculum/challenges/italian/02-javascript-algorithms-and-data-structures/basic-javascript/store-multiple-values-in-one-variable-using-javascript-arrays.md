---
id: bd7993c9c69feddfaeb8bdef
title: Memorizzare più valori in una variabile utilizzando gli array in JavaScript
challengeType: 1
videoUrl: 'https://scrimba.com/c/crZQWAm'
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

With JavaScript `array` variables, we can store several pieces of data in one place.

La dichiarazione di un array inizia con una parentesi quadra di apertura, e termina con una parentesi quadra di chiusura, con gli elementi separati da virgole, in questo modo:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

Modifica il nuovo array `myArray` in modo che contenga sia una stringa che un numero (in quest'ordine).

# --hints--

`myArray` dovrebbe essere un array.

```js
assert(typeof myArray == 'object');
```

Il primo elemento in `myArray` dovrebbe essere una stringa.

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

Il secondo elemento in `myArray` dovrebbe essere un numero.

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --after-user-code--

```js
(function(z){return z;})(myArray);
```

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
