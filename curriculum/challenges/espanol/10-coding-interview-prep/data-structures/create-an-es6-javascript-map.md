---
id: 587d825b367417b2b2512c8d
title: Crea un Mapa ES6 JavaScript
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` devuelve el valor asociado a una clave
- `.set(key, value)` establece un nuevo par clave, valor
- `.delete(key)` elimina un par clave, valor
- `.clear()` elimina todos los pares clave, valor
- `.entries()` devuelve un arreglo de todas las claves en orden de inserción
- `.values()` devuelve un arreglo de todos los valores en orden de inserción

# --instructions--

Define un objeto Mapar JavaScript y asignalo a una variable llamada myMap. Agrega el par clave, valor `freeCodeCamp`, `Awesome!` a el.

# --hints--

El objeto `myMap` debe existir.

```js
assert(typeof myMap === 'object');
```

`myMap` debe contener el par clave valor `freeCodeCamp`, `Awesome!`.

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
