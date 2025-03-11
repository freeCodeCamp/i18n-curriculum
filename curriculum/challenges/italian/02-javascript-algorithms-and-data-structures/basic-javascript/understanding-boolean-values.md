---
id: bd7123c9c441eddfaeb5bdef
title: Comprendere i valori booleani
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**Nota:** i valori booleani non vengono mai scritti tra virgolette. Le stringhe `"true"` e `"false"` non sono booleane e non hanno alcun significato speciale in JavaScript.

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

## --after-user-code--

```js
welcomeToBooleans();
```

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
