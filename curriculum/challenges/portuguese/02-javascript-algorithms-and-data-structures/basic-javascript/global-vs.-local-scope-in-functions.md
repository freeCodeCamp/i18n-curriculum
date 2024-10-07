---
id: 56533eb9ac21ba0edf2244c0
title: Diferenciar escopo global e local em funções
challengeType: 1
videoUrl: 'https://scrimba.com/c/c2QwKH2'
forumTopicId: 18194
dashedName: global-vs--local-scope-in-functions
---

# --description--

It is possible to have both <dfn>local</dfn> and <dfn>global</dfn> variables with the same name. When you do this, the local variable takes precedence over the global variable.

Neste exemplo:

```js
const someVar = "Hat";

function myFun() {
  const someVar = "Head";
  return someVar;
}
```

A função `myFun` retornará a string `Head` porque a versão local da variável está presente.

# --instructions--

Adicione uma variável local para a função `myOutfit` para sobrescrever o valor de `outerWear` com a string `sweater`.

# --hints--

Você não deve alterar o valor da variável global `outerWear`.

```js
assert(outerWear === 'T-Shirt');
```

`myOutfit` deve retornar a string `sweater`.

```js
assert(myOutfit() === 'sweater');
```

Você não deve alterar a instrução de retorno.

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
