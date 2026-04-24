---
id: cf1111c1c11feddfaeb7bdef
title: 配列の中に別の配列をネストする
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

配列の中に別の配列をネストすることもできます。以下のように：

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

これは<dfn>多次元配列</dfn>とも呼ばれます。

# --instructions--

`myArray`という名前のネストされた配列を作成してください。

# --hints--

`myArray`は少なくとも1つの配列が別の配列の中にネストされている必要があります。

```js
assert(Array.isArray(myArray) && myArray.some(Array.isArray));
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = [[1, 2, 3]];
```
