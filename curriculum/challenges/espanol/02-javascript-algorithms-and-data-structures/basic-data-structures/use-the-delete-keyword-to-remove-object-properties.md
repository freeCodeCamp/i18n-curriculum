---
id: 587d7b7c367417b2b2512b1b
title: Usa la palabra clave "delete" para eliminar las propiedades de los objetos
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

En desafíos anteriores, hemos agregado y modificado los pares clave-valor de un objeto. Aquí veremos cómo podemos *eliminar* un par clave-valor de un objeto.

Volvamos a nuestro ejemplo del objeto `foods` una última vez. Si quisiéramos eliminar la clave `apples`, podemos eliminarla utilizando la palabra clave `delete` de esta manera:

```js
delete foods.apples;
```

# --instructions--

Usa la palabra clave delete para eliminar las claves `oranges`, `plums` y `strawberries` del objeto `foods`.

# --hints--

El objeto `foods` sólo debe tener tres claves: `apples`, `grapes` y `bananas`.

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

Las claves `oranges`, `plums` y `strawberries` deben ser eliminadas usando `delete`.

```js
assert(
  __helpers.removeJSComments(code).search(/oranges:/) !== -1 &&
    __helpers.removeJSComments(code).search(/plums:/) !== -1 &&
    __helpers.removeJSComments(code).search(/strawberries:/) !== -1
);
```

# --seed--

## --seed-contents--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

// Only change code below this line

// Only change code above this line

console.log(foods);
```

# --solutions--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

delete foods.oranges;
delete foods.plums;
delete foods.strawberries;

console.log(foods);
```
