---
id: 56533eb9ac21ba0edf2244d8
title: 論理積演算子による比較
challengeType: 1
videoUrl: 'https://scrimba.com/c/cvbRVtr'
forumTopicId: 16799
dashedName: comparisons-with-the-logical-and-operator
---

# --description--

Sometimes you will need to test more than one thing at a time. The <dfn>logical and</dfn> operator (`&&`) returns `true` if and only if the <dfn>operands</dfn> to the left and right of it are true.

The same effect could be achieved by nesting an `if` statement inside another `if`.

```js
if (num > 5) {
  if (num < 10) {
    return "Yes";
  }
}
return "No";
```

This code will return `Yes` if `num` is greater than `5` and less than `10`. The same logic can be written with the <dfn>logical and</dfn> operator.

```js
if (num > 5 && num < 10) {
  return "Yes";
}
return "No";
```

# --instructions--

`&&` 演算子を使用して、2つの if ステートメントを 1 つのステートメントにしてください。このプログラムは `val` が `25` 以上 `50` 以下の場合に文字列 `Yes` を返します。 それ以外の場合は文字列 `No` を返します。

# --hints--

`&&` 演算子を 1 回使用してください。

```js
assert(__helpers.removeJSComments(code).match(/&&/g).length === 1);
```

`if` ステートメントを 1 つだけにする必要があります。

```js
assert(__helpers.removeJSComments(code).match(/if/g).length === 1);
```

`testLogicalAnd(0)` は文字列 `No` を返す必要があります。

```js
assert(testLogicalAnd(0) === 'No');
```

`testLogicalAnd(24)` は文字列 `No` を返す必要があります。

```js
assert(testLogicalAnd(24) === 'No');
```

`testLogicalAnd(25)` は文字列 `Yes` を返す必要があります。

```js
assert(testLogicalAnd(25) === 'Yes');
```

`testLogicalAnd(30)` は文字列 `Yes` を返す必要があります。

```js
assert(testLogicalAnd(30) === 'Yes');
```

`testLogicalAnd(50)` は文字列 `Yes` を返す必要があります。

```js
assert(testLogicalAnd(50) === 'Yes');
```

`testLogicalAnd(51)` は文字列 `No` を返す必要があります。

```js
assert(testLogicalAnd(51) === 'No');
```

`testLogicalAnd(75)` は文字列 `No` を返す必要があります。

```js
assert(testLogicalAnd(75) === 'No');
```

`testLogicalAnd(80)` は文字列 `No` を返す必要があります。

```js
assert(testLogicalAnd(80) === 'No');
```

# --seed--

## --seed-contents--

```js
function testLogicalAnd(val) {
  // Only change code below this line

  if (val) {
    if (val) {
      return "Yes";
    }
  }

  // Only change code above this line
  return "No";
}

testLogicalAnd(10);
```

# --solutions--

```js
function testLogicalAnd(val) {
  if (val >= 25 && val <= 50) {
    return "Yes";
  }
  return "No";
}
```
