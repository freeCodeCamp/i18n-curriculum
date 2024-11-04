---
id: 587d825b367417b2b2512c8d
title: Criar um mapa da ES6 JavaScript
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` retorna o valor associado a uma chave
- `.set(key, value)` define um novo par chave-valor
- `.delete(key)` remove um par chave-valor
- `.clear()` remove todos os pares chave-valor
- `.keys()` returns a new map iterator object that contains all the keys in insertion order
- `.values()` returns a new map iterator object that contains all the values in insertion order
- `.entries()` returns a new map iterator object that contains all the key, value pairs in insertion order

# --instructions--

Defina um objeto Map do JavaScript e atribua a ele uma variável chamada myMap. Adicione o par chave-valor `freeCodeCamp`, `Awesome!` a ele.

# --hints--

Um objeto `myMap` deve existir.

```js
assert(typeof myMap === 'object');
```

`myMap` deve conter o par chave-valor `freeCodeCamp`, `Awesome!`.

```js
assert(myMap.get('freeCodeCamp') === 'Awesome!');
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
const myMap = new Map();

myMap.set("freeCodeCamp", "Awesome!");
```
