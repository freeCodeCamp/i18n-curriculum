---
id: 587d78b2367417b2b2512b0e
title: 使用 push() 和 unshift() 为数组添加元素
challengeType: 1
forumTopicId: 301151
dashedName: add-items-to-an-array-with-push-and-unshift
---

# --description--

An array's length, like the data types it can contain, is not fixed. Arrays can be defined with a length of any number of elements, and elements can be added or removed over time; in other words, arrays are <dfn>mutable</dfn>. In this challenge, we will look at two methods with which we can programmatically modify an array: `Array.push()` and `Array.unshift()`.

这两个方法都接收一个或多个元素作为参数，并会将参数中的元素添加到该数组中。 `push()` 方法会将元素插入到数组的末尾，而 `unshift()` 方法会将元素插入到数组的开头。 请看以下例子：

```js
let twentyThree = 'XXIII';
let romanNumerals = ['XXI', 'XXII'];

romanNumerals.unshift('XIX', 'XX');
```

`romanNumerals` 的值就变成了 `['XIX', 'XX', 'XXI', 'XXII']`。

```js
romanNumerals.push(twentyThree);
```

`romanNumerals` 的值现在就变成了 `['XIX', 'XX', 'XXI', 'XXII', 'XXIII']`。 请注意这里，我们也可以使用变量作为参数，这让我们在动态修改数组数据时更加灵活。

# --instructions--

我们已经定义了一个 `mixedNumbers` 函数，它接收一个数组作为参数。 请修改这个函数，使用 `push()` 和 `unshift()` 来将 `'I', 2, 'three'` 插入到数组开头；将 `7, 'VIII', 9` 插入到数组的末尾。最终这个函数的返回值就会是一个依次包含不同形式的 1-9 的数组。

# --hints--

`mixedNumbers(["IV", 5, "six"])` 应返回 `["I", 2, "three", "IV", 5, "six", 7, "VIII", 9]`。

```js
assert.deepEqual(mixedNumbers(['IV', 5, 'six']), [
  'I',
  2,
  'three',
  'IV',
  5,
  'six',
  7,
  'VIII',
  9
]);
```

`mixedNumbers` 函数中应调用 `push()` 方法。

```js
assert(mixedNumbers.toString().match(/\.push/));
```

`mixedNumbers` 函数中应调用 `unshift()` 方法。

```js
assert(mixedNumbers.toString().match(/\.unshift/));
```

# --seed--

## --seed-contents--

```js
function mixedNumbers(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(mixedNumbers(['IV', 5, 'six']));
```

# --solutions--

```js
function mixedNumbers(arr) {
  arr.push(7,'VIII',9);
  arr.unshift('I',2,'three');
  return arr;
}
```
