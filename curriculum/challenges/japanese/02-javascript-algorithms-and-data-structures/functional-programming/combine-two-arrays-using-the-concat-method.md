---
id: 587d7da9367417b2b2512b66
title: concat メソッドを使用して 2 つの配列を連結する
challengeType: 1
forumTopicId: 301229
dashedName: combine-two-arrays-using-the-concat-method
---

# --description--

<dfn>Concatenation</dfn> means to join items end to end. JavaScript offers the `concat` method for both strings and arrays that work in the same way. For arrays, the method is called on one, then another array is provided as the argument to `concat`, which is added to the end of the first array. It returns a new array and does not mutate either of the original arrays. こちらがその例です。

```js
[1, 2, 3].concat([4, 5, 6]);
```

返される配列は `[1, 2, 3, 4, 5, 6]` となります。

# --instructions--

`nonMutatingConcat` 関数で `concat` メソッドを使用して、`original` の末尾に `attach` を連結してください。 この関数は連結した配列を返す必要があります。

# --hints--

コードでは `concat` メソッドを使用する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/\.concat/g));
```

`first` 配列は変更しないでください。

```js
assert(JSON.stringify(first) === JSON.stringify([1, 2, 3]));
```

`second` 配列は変更しないでください。

```js
assert(JSON.stringify(second) === JSON.stringify([4, 5]));
```

`nonMutatingConcat([1, 2, 3], [4, 5])` は `[1, 2, 3, 4, 5]` を返す必要があります。

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
