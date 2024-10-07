---
id: 587d825b367417b2b2512c8d
title: ES6 JavaScript マップを作成する
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` はキーに関連付けられた値を返します。
- `.set(key, value)` は新しいキーと値のペアを設定します。
- `.delete(key)` はキーと値のペアを削除します。
- `.clear()` はキーと値のペアをすべて削除します。
- `.entries()` はすべてのキーを挿入順に並べた配列を返します。
- `.values()` はすべての値を挿入順に並べた配列を返します。

# --instructions--

JavaScript Map オブジェクトを定義し、変数 myMap をそのオブジェクトに割り当ててください。 キーと値のペア `freeCodeCamp`、`Awesome!` (すばらしい！) を追加してください。

# --hints--

`myMap` オブジェクトを用意する必要があります。

```js
assert(typeof myMap === 'object');
```

`myMap` にはキーと値のペアである `freeCodeCamp` と `Awesome!` のペアが含まれている必要があります。

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
