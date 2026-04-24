---
id: bd7123c9c441eddfaeb5bdef
title: ブール値の理解
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

もう一つのデータ型は<dfn>ブール値</dfn>です。ブール値は `true` または `false` のどちらかの値しか取りません。これは基本的に小さなオン・オフのスイッチのようなもので、`true` がオン、`false` がオフです。この二つの状態は排他的です。

**注意:** ブール値は決して引用符で囲まれません。文字列の `"true"` と `"false"` はブール値ではなく、JavaScriptでは特別な意味を持ちません。

# --instructions--

`welcomeToBooleans` 関数を修正して、`true` の代わりに `false` を返すようにしてください。

# --hints--

`welcomeToBooleans()` 関数はブール値（`true` または `false`）を返す必要があります。

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` は `true` を返すべきです。

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
