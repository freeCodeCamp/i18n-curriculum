---
id: 587d78b2367417b2b2512b10
title: 使用 splice() 删除元素
challengeType: 1
forumTopicId: 301166
dashedName: remove-items-using-splice
---

# --description--

Ok, so we've learned how to remove elements from the beginning and end of arrays using `shift()` and `pop()`, but what if we want to remove an element from somewhere in the middle? Or remove more than one element at once? Well, that's where `splice()` comes in. `splice()` allows us to do just that: **remove any number of consecutive elements** from anywhere in an array.

`splice()` 最多可以接受 3 个参数，但现在我们先关注前两个。 `splice()` 的前两个参数是整数，表示数组中调用 `splice()` 的项的索引或位置。 别忘了，数组的索引是*从 0 开始的*，所以我们要用 `0` 来表示数组中的第一个元素。 `splice()` 的第一个参数代表从数组中的哪个索引开始移除元素，而第二个参数表示要从数组中的这个位置开始删除多少个元素。 例如：

```js
let array = ['today', 'was', 'not', 'so', 'great'];

array.splice(2, 2);
```

这里我们移除 2 个元素，首先是第三个元素（索引为 2）。 `array` 会有值 `['today', 'was', 'great']`。

`splice()` 不仅会修改调用该方法的数组，还会返回一个包含被移除元素的数组：

```js
let array = ['I', 'am', 'feeling', 'really', 'happy'];

let newArray = array.splice(3, 2);
```

`newArray` 值为 `['really', 'happy']`。

# --instructions--

我们已经定义了数组 `arr`。 请使用 `splice()` 从 `arr` 里移除元素，使剩余的元素之和为 `10`。

# --hints--

不应修改这一行 `const arr = [2, 4, 5, 1, 7, 5, 2, 1];`。

```js
assert(
  __helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/constarr=\[2,4,5,1,7,5,2,1\];?/)
);
```

`arr` 的剩余元素之和应为 `10`。

```js
assert.strictEqual(
  arr.reduce((a, b) => a + b),
  10
);
```

应对 `arr` 调用 `splice()` 方法。

```js
assert(__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(/));
```

splice 应只删除 `arr` 里面的元素，不能给 `arr` 添加元素。

```js
assert(
  !__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(\d+,\d+,\d+.*\)/g)
);
```

# --seed--

## --seed-contents--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
// Only change code below this line

// Only change code above this line
console.log(arr);
```

# --solutions--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
arr.splice(1, 4);
```
