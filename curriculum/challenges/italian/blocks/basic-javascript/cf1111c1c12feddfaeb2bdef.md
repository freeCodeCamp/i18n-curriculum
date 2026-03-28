---
id: cf1111c1c12feddfaeb2bdef
title: "Generare numeri interi casuali all'interno di un intervallo"
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

Puoi generare un numero intero casuale nell'intervallo da zero a un numero dato. Puoi anche scegliere un numero più basso diverso per questo intervallo.

Chiamerai il tuo numero minimo `min` e il tuo numero massimo `max`.

Questa formula restituisce un numero intero casuale nell'intervallo da `min` a `max`. Prenditi un momento per leggerla e cerca di capire cosa fa questo codice:

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

Crea una funzione chiamata `randomRange` che prenda un intervallo `myMin` e `myMax` e restituisca un numero intero casuale maggiore o uguale a `myMin` e minore o uguale a `myMax`.

# --hints--

Il numero casuale più basso che può essere generato da `randomRange` dovrebbe essere uguale al tuo numero minimo, `myMin`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

Il numero casuale più alto che può essere generato da `randomRange` dovrebbe essere uguale al tuo numero massimo, `myMax`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

Il numero casuale generato da `randomRange` dovrebbe essere un intero, non un decimale.

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange` dovrebbe usare sia `myMax` che `myMin` e restituire un numero casuale nel tuo intervallo.

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
