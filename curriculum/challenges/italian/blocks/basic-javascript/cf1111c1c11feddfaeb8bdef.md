---
id: cf1111c1c11feddfaeb8bdef
title: Modifica i dati di un array con gli indici
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

A differenza delle stringhe, gli elementi degli array sono <dfn>mutabili</dfn> e possono essere modificati liberamente, anche se l'array è stato dichiarato con `const`.

**Esempio**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray` ora ha il valore `[15, 40, 30]`.

**Nota:** Non ci dovrebbero essere spazi tra il nome dell'array e le parentesi quadre, come in `array [0]`. Anche se JavaScript riesce a gestirlo correttamente, questo potrebbe confondere altri programmatori che leggono il tuo codice.

# --instructions--

Modifica il dato archiviato all'indice `0` di `myArray` con un valore pari a `45`.

# --hints--

`myArray` dovrebbe ora essere `[45, 64, 99]`.

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

Dovresti usare l'indice corretto per modificare il valore in `myArray`.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
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
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
