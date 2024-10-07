---
id: 587d825b367417b2b2512c8d
title: 創建一個 ES6 JavaScript 映射
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` 返回與key關聯的值
- `.set(key, value)` 設置一個新的鍵值對
- `.delete(key)` 移除一個鍵值對
- `.clear()` 移除所有鍵值對
- `.entries()` 返回一個所有按鍵插入順序排列的鍵的數組
- `.entries()` 返回一個所有按值的插入順序排列的值的數組

# --instructions--

定義一個 JavaScript 映射對象並將其分配給一個名爲 myMap 的變量。 向其中添加鍵值對 `freeCodeCamp`、`Awesome!`。

# --hints--

`myMap` 對象應該存在。

```js
assert(typeof myMap === 'object');
```

< code > myMap </code > 應該包含鍵值對 < code > freeCodeCamp </code > ，< code > Awesome! </code > 。

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
