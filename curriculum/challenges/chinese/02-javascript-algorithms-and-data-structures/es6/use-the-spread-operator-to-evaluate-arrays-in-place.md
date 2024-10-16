---
id: 587d7b89367417b2b2512b48
title: 使用 spread 运算符展开数组项
challengeType: 1
forumTopicId: 301222
dashedName: use-the-spread-operator-to-evaluate-arrays-in-place
---

# --description--

ES6 introduces the <dfn>spread operator</dfn>, which allows us to expand arrays and other expressions in places where multiple parameters or elements are expected.

下面的 ES5 代码使用了 `apply()` 来计算数组的最大值：

```js
var arr = [6, 89, 3, 45];
var maximus = Math.max.apply(null, arr);
```

`maximus` 的值为 `89`。

我们必须使用 `Math.max.apply(null, arr)`，因为 `Math.max(arr)` 返回 `NaN`。 `Math.max()` 函数中需要传入的是一系列由逗号分隔的参数，而不是一个数组。 展开操作符可以提升代码的可读性，使代码易于维护。

```js
const arr = [6, 89, 3, 45];
const maximus = Math.max(...arr);
```

`maximus` 的值应该是 `89`。

`...arr` 返回一个解压缩的数组。 换句话说，它展开了数组。 然而，展开操作符只能够在函数的参数中或者数组中使用。 例如：

```js
const spreaded = [...arr];
```

下面的代码将不能运行：

```js
const spreaded = ...arr;
```

# --instructions--

使用展开操作符将 `arr1` 中的全部内容复制到另一个数组 `arr2` 中。

# --hints--

`arr2` 应该是从 `arr1` 复制而来。

```js
assert(arr2.every((v, i) => v === arr1[i]) && arr2.length);
```

应使用展开操作符 `...` 来复制 `arr1`。

```js
assert(__helpers.removeJSComments(code).match(/Array\(\s*\.\.\.arr1\s*\)|\[\s*\.\.\.arr1\s*\]/));
```

当 `arr1` 改变的时候，`arr2` 应保持不变。

```js
assert((arr1, arr2) => {
  arr1.push('JUN');
  return arr2.length < arr1.length;
});
```

# --seed--

## --seed-contents--

```js
const arr1 = ['JAN', 'FEB', 'MAR', 'APR', 'MAY'];
let arr2;

arr2 = [];  // Change this line

console.log(arr2);
```

# --solutions--

```js
const arr1 = ['JAN', 'FEB', 'MAR', 'APR', 'MAY'];
let arr2;

arr2 = [...arr1];
```
