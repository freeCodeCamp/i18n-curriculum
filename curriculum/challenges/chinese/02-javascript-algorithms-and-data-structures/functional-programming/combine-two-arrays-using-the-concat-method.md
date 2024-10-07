---
id: 587d7da9367417b2b2512b66
title: 使用 concat 方法组合两个数组
challengeType: 1
forumTopicId: 301229
dashedName: combine-two-arrays-using-the-concat-method
---

# --description--

<dfn>Concatenation</dfn> means to join items end to end. JavaScript offers the `concat` method for both strings and arrays that work in the same way. For arrays, the method is called on one, then another array is provided as the argument to `concat`, which is added to the end of the first array. It returns a new array and does not mutate either of the original arrays. 如下所示：

```js
[1, 2, 3].concat([4, 5, 6]);
```

返回的数组将是 `[1, 2, 3, 4, 5, 6]`。

# --instructions--

在 `nonMutatingConcat` 函数里使用 `concat`，将 `attach` 拼接到 `original` 尾部。 函数返回拼接后的数组。

# --hints--

应该使用 `concat` 方法。

```js
assert(__helpers.removeJSComments(code).match(/\.concat/g));
```

不应该改变 `first` 数组。

```js
assert(JSON.stringify(first) === JSON.stringify([1, 2, 3]));
```

不应该改变 `second` 数组。

```js
assert(JSON.stringify(second) === JSON.stringify([4, 5]));
```

`nonMutatingConcat([1, 2, 3], [4, 5])` 应该返回 `[1, 2, 3, 4, 5]`。

```js
assert(
  JSON.stringify(nonMutatingConcat([1, 2, 3], [4, 5])) ===
    JSON.stringify([1, 2, 3, 4, 5])
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingConcat(original, attach) {
  // Only change code below this line


  // Only change code above this line
}

const first = [1, 2, 3];
const second = [4, 5];
nonMutatingConcat(first, second);
```

# --solutions--

```js
function nonMutatingConcat(original, attach) {
  return original.concat(attach);
}
const first = [1, 2, 3];
const second = [4, 5];
```
