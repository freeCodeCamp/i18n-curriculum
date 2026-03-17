---
id: cf1111c1c12feddfaeb1bdef
title: Generare numeri interi casuali con JavaScript
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

Puoi generare numeri decimali casuali con `Math.random()`, ma a volte hai bisogno di generare numeri interi casuali. Il processo seguente ti darà un numero intero casuale minore di `20`:

1. Usa `Math.random()` per generare un numero decimale casuale.
2. Moltiplica quel numero decimale casuale per `20`.
3. Usa `Math.floor()` per arrotondare questo numero per difetto al suo numero intero più vicino.

Ricorda che `Math.random()` non può mai restituire esattamente un `1`, quindi è impossibile ottenere `20` dato che stai arrotondando per difetto con `Math.floor()`. Questo processo ti darà un numero intero casuale nell'intervallo da `0` a `19`.

Mettendo tutto insieme, questo è come appare il tuo codice:

```js
Math.floor(Math.random() * 20);
```

Stai chiamando `Math.random()`, moltiplicando il risultato per 20, poi passando il valore a `Math.floor()` per arrotondare il valore per difetto al numero intero più vicino.

# --instructions--

Usa questa tecnica per generare e restituire un numero intero casuale nell'intervallo da `0` a `9`.

# --hints--

Il risultato di `randomWholeNum` dovrebbe essere un numero intero.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

Dovresti usare `Math.random` per generare un numero casuale.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

Dovresti aver moltiplicato il risultato di `Math.random` per 10 per ottenere un numero nell'intervallo da zero a nove.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

Dovresti usare `Math.floor` per rimuovere la parte decimale del numero.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
