---
id: 56533eb9ac21ba0edf2244c0
title: Ámbito global vs. local en funciones
challengeType: 1
videoUrl: 'https://scrimba.com/c/c2QwKH2'
forumTopicId: 18194
dashedName: global-vs--local-scope-in-functions
---

# --description--

It is possible to have both <dfn>local</dfn> and <dfn>global</dfn> variables with the same name. When you do this, the local variable takes precedence over the global variable.

En este ejemplo:

```js
const someVar = "Hat";

function myFun() {
  const someVar = "Head";
  return someVar;
}
```

La función `myFun` devolverá la cadena `Head` porque está presente la versión local de la variable.

# --instructions--

Añade una variable local a la función `myOutfit` para sobrescribir el valor de `outerWear` con la cadena `sweater`.

# --hints--

No debes cambiar el valor del `outerWear` global.

```js
assert(outerWear === 'T-Shirt');
```

`myOutfit` debe devolver la cadena `sweater`.

```js
assert(myOutfit() === 'sweater');
```

No debes cambiar la declaración de devolución.

```js
assert(/return outerWear/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
// Setup
const outerWear = "T-Shirt";

function myOutfit() {
  // Only change code below this line

  // Only change code above this line
  return outerWear;
}

myOutfit();
```

# --solutions--

```js
const outerWear = "T-Shirt";
function myOutfit() {
  const outerWear = "sweater";
  return outerWear;
}
```
