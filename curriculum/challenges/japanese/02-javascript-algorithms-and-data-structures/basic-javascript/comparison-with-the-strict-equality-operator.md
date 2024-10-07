---
id: 56533eb9ac21ba0edf2244d1
title: 厳密等価演算子による比較
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy87atr'
forumTopicId: 16790
dashedName: comparison-with-the-strict-equality-operator
---

# --description--

Strict equality (`===`) is the counterpart to the equality operator (`==`). However, unlike the equality operator, which attempts to convert both values being compared to a common type, the strict equality operator does not perform a type conversion.

比較する値の型が異なる場合は等しくないとみなし、厳密等価演算子は false を返します。

**例**

```js
3 ===  3  // true
3 === '3' // false
```

2 番目の例では、 `3` は `Number` 型で、 `'3'` は `String` 型です。

# --instructions--

`if` ステートメントで厳密等価演算子を使用して、`val` が `7` と厳密に等しい場合に関数が文字列 `Equal` を返すようにしてください。

# --hints--

`testStrict(10)` は文字列 `Not Equal` を返す必要があります。

```js
assert(testStrict(10) === 'Not Equal');
```

`testStrict(7)` は文字列 `Equal` を返す必要があります。

```js
assert(testStrict(7) === 'Equal');
```

`testStrict("7")` は文字列 `Not Equal` を返す必要があります。

```js
assert(testStrict('7') === 'Not Equal');
```

`===` 演算子を使用してください

```js
assert(__helpers.removeJSComments(code).match(/(val\s*===\s*\d+)|(\d+\s*===\s*val)/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function testStrict(val) {
  if (val) { // Change this line
    return "Equal";
  }
  return "Not Equal";
}

testStrict(10);
```

# --solutions--

```js
function testStrict(val) {
  if (val === 7) {
    return "Equal";
  }
  return "Not Equal";
}
```
