---
id: bd7123c9c441eddfaeb5bdef
title: ブール値を理解する
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9Me8t4'
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**注:** ブール値は引用符を付けて記述されることはありません。 文字列の `"true"` と `"false"` は ブール値ではなく、JavaScript では特別な意味を持ちません。

# --instructions--

`false` ではなく `true` を返すように、`welcomeToBooleans` 関数を変更してください。

# --hints--

`welcomeToBooleans()` 関数はブール値 (`true` または `false`) を返す必要があります。

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` は `true` を返す必要があります。

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --after-user-code--

```js
welcomeToBooleans();
```

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
