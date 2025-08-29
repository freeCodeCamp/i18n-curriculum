---
id: 5679ceb97cbaa8c51670a16b
title: 從函數返回布爾值
challengeType: 1
forumTopicId: 18273
dashedName: returning-boolean-values-from-functions
---

# --description--

You may recall from <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/comparison-with-the-equality-operator" target="_blank" rel="noopener noreferrer nofollow">Comparison with the Equality Operator</a> that all comparison operators return a boolean `true` or `false` value.

有時人們通過 `if/else` 語句來做比較，像這樣。

```js
function isEqual(a, b) {
  if (a === b) {
    return true;
  } else {
    return false;
  }
}
```

但有更好的方式來達到相同的效果。 既然 `===` 返回 `true` 或 `false` 我們可以直接返回比較結果：

```js
function isEqual(a, b) {
  return a === b;
}
```

# --instructions--

移除 `isLess` 函數的 `if/else` 語句但不影響函數的功能。

# --hints--

`isLess(10, 15)` 應該返回 `true`

```js
assert(isLess(10, 15) === true);
```

`isLess(15, 10)` 應該返回 `false`

```js
assert(isLess(15, 10) === false);
```

不應該使用 `if` 或者 `else` 語句

```js
assert(!/if|else/g.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function isLess(a, b) {
  // Only change code below this line
  if (a < b) {
    return true;
  } else {
    return false;
  }
  // Only change code above this line
}

isLess(10, 15);
```

# --solutions--

```js
function isLess(a, b) {
  return a < b;
}
```
