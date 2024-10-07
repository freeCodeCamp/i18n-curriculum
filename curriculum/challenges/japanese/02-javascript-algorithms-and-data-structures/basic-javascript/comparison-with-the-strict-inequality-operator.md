---
id: 56533eb9ac21ba0edf2244d3
title: 厳密不等価演算子による比較
challengeType: 1
videoUrl: 'https://scrimba.com/c/cKekkUy'
forumTopicId: 16791
dashedName: comparison-with-the-strict-inequality-operator
---

# --description--

The strict inequality operator (`!==`) is the logical opposite of the strict equality operator. It means "Strictly Not Equal" and returns `false` where strict equality would return `true` and *vice versa*. The strict inequality operator will not convert data types.

**例**

```js
3 !==  3  // false
3 !== '3' // true
4 !==  3  // true
```

# --instructions--

`val` が `17` と厳密に等しくない場合に関数が文字列 `Not Equal` を返すように、`if` ステートメントに厳密不等価演算子を追加してください。

# --hints--

`testStrictNotEqual(17)` は文字列 `Equal` を返す必要があります。

```js
assert(testStrictNotEqual(17) === 'Equal');
```

`testStrictNotEqual("17")` は文字列 `Not Equal` を返す必要があります。

```js
assert(testStrictNotEqual('17') === 'Not Equal');
```

`testStrictNotEqual(12)` は文字列 `Not Equal` を返す必要があります。

```js
assert(testStrictNotEqual(12) === 'Not Equal');
```

`testStrictNotEqual("bob")` は文字列 `Not Equal` を返す必要があります。

```js
assert(testStrictNotEqual('bob') === 'Not Equal');
```

`!==` 演算子を使用してください。

```js
assert(__helpers.removeJSComments(code).match(/(val\s*!==\s*\d+)|(\d+\s*!==\s*val)/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function testStrictNotEqual(val) {
  if (val) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

testStrictNotEqual(10);
```

# --solutions--

```js
function testStrictNotEqual(val) {
  if (val !== 17) {
    return "Not Equal";
  }
  return "Equal";
}
```
