---
id: 587d825b367417b2b2512c8d
title: Створіть об’єкт map в JavaScript ES6
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` повертає значення, пов’язане з ключем
- `.set(key, value)` встановлює нову пару ключ-значення
- `.delete(key)` видаляє пару ключ-значення
- `.clear()` видаляє всі пари ключ-значення
- `.keys()` returns a new map iterator object that contains all the keys in insertion order
- `.values()` returns a new map iterator object that contains all the values in insertion order
- `.entries()` returns a new map iterator object that contains all the key, value pairs in insertion order

# --instructions--

Визначте об’єкт JavaScript Map та призначте до нього змінну під назвою myMap. Додайте до нього пару ключ-значення `freeCodeCamp`, `Awesome!`.

# --hints--

Має існувати об’єкт `myMap`.

```js
assert(typeof myMap === 'object');
```

`myMap` має містити пару ключ-значення `freeCodeCamp`, `Awesome!`.

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
