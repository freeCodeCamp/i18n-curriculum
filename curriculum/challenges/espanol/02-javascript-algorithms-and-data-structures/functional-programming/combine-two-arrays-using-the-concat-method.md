---
id: 587d7da9367417b2b2512b66
title: Combina dos arreglos utilizando el método "concat"
challengeType: 1
forumTopicId: 301229
dashedName: combine-two-arrays-using-the-concat-method
---

# --description--

<dfn>Concatenation</dfn> means to join items end to end. JavaScript offers the `concat` method for both strings and arrays that work in the same way. For arrays, the method is called on one, then another array is provided as the argument to `concat`, which is added to the end of the first array. It returns a new array and does not mutate either of the original arrays. Aquí hay un ejemplo:

```js
[1, 2, 3].concat([4, 5, 6]);
```

El arreglo devuelto sería `[1, 2, 3, 4, 5, 6]`.

# --instructions--

Usa el método `concat` en la función `nonMutatingConcat` para concatenar `attach` al final de `original`. La función deber devolver el arreglo concatenado.

# --hints--

Tu código debe usar el método `concat`.

```js
assert(__helpers.removeJSComments(code).match(/\.concat/g));
```

El arreglo `first` no debe cambiar.

```js
assert(JSON.stringify(first) === JSON.stringify([1, 2, 3]));
```

El arreglo `second` no debe cambiar.

```js
assert(JSON.stringify(second) === JSON.stringify([4, 5]));
```

`nonMutatingConcat([1, 2, 3], [4, 5])` debe devolver `[1, 2, 3, 4, 5]`.

```js
assert(
  JSON.stringify(nonMutatingConcat([1, 2, 3], [4, 5])) ===
    JSON.stringify([1, 2, 3, 4, 5])
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingConcat(original, attach) {
  // Only change code below this line


  // Only change code above this line
}

const first = [1, 2, 3];
const second = [4, 5];
nonMutatingConcat(first, second);
```

# --solutions--

```js
function nonMutatingConcat(original, attach) {
  return original.concat(attach);
}
const first = [1, 2, 3];
const second = [4, 5];
```
