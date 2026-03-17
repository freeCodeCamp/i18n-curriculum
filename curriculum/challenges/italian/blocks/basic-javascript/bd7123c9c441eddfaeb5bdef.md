---
id: bd7123c9c441eddfaeb5bdef
title: Comprendere i valori booleani
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Un altro tipo di dato è il <dfn>booleano</dfn>. I booleani possono assumere solo uno di due valori: `true` o `false`. Sono fondamentalmente piccoli interruttori on-off, dove `true` è acceso e `false` è spento. Questi due stati sono mutuamente esclusivi.

**Nota:** I valori booleani non si scrivono mai tra virgolette. Le stringhe `"true"` e `"false"` non sono booleani e non hanno alcun significato speciale in JavaScript.

# --instructions--

Modifica la funzione `welcomeToBooleans` in modo che restituisca `true` invece di `false`.

# --hints--

La funzione `welcomeToBooleans()` dovrebbe restituire un valore booleano (`true` o `false`).

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` dovrebbe restituire `true`.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
