---
id: 587d825b367417b2b2512c8d
title: 创建一个 ES6 JavaScript 映射
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` 返回与key关联的值
- `.set(key, value)` 设置一个新的键值对
- `.delete(key)` 移除一个键值对
- `.clear()` 移除所有键值对
- `.keys()` returns a new map iterator object that contains all the keys in insertion order
- `.values()` returns a new map iterator object that contains all the values in insertion order
- `.entries()` returns a new map iterator object that contains all the key, value pairs in insertion order

# --instructions--

定义一个 JavaScript 映射对象并将其分配给一个名为 myMap 的变量。 向其中添加键值对 `freeCodeCamp`、`Awesome!`。

# --hints--

`myMap` 对象应该存在。

```js
assert(typeof myMap === 'object');
```

< code > myMap </code > 应该包含键值对 < code > freeCodeCamp </code > ，< code > Awesome! </code > 。

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
