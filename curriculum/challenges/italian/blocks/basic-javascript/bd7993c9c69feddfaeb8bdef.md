---
id: bd7993c9c69feddfaeb8bdef
title: Archiviare più valori in una variabile usando gli array in JavaScript
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

Con le variabili JavaScript `array` possiamo archiviare più dati in un unico posto.

Inizi una dichiarazione di array con una parentesi quadra aperta, la chiudi con una parentesi quadra chiusa e metti una virgola tra ogni elemento, così:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

Modifica il nuovo array `myArray` in modo che contenga sia una stringa sia un numero (in quest’ordine).

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

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
