---
id: bd7123c9c441eddfaeb5bdef
title: Comprende los valores booleanos
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9Me8t4'
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**Nota** Los valores del tipo booleano nunca se escriben con comillas. Las cadenas `"true"` y `"false"` no son booleanos y no tienen ningún significado especial en JavaScript.

# --instructions--

Modifica la función `welcomeToBooleans` para que devuelva `true` en lugar de `false`.

# --hints--

La función `welcomeToBooleans()` debe devolver un valor booleano (`true` o `false`).

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` debe devolver `true`.

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
