---
id: 6732b28eeadda1158cdbff7b
title: 如何检查数组是否包含特定值？
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

在 JavaScript 中，`includes()` 方法是检查数组是否包含特定值的一种简单而有效的方法。 该方法返回一个布尔值：如果数组包含指定元素返回 `true`，否则返回 `false`。 

`includes()` 方法在需要快速验证数组中是否存在元素而不需要知道其确切位置时特别有用。 让我们从如何使用 `includes()` 方法的示例开始：

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

在这个例子中，我们有一个水果数组。 我们使用 `includes()` 方法来检查 `banana` 是否在数组中。 它返回 `true`，因为 `banana` 确实存在。 然后我们检查 `grape`，返回 `false`，因为它不在数组中。

在处理字符串时，`includes()` 方法区分大小写。 这意味着带有大写字母 B 的 `Banana` 和全小写的 `banana` 会被认为是不同的值。 下面有一个例子可以说明这一点：

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

在这种情况下，`banana`（全小写）能在数组中找到，但 `Banana`（首字母大写）找不到，所以第二次调用 `includes()` 会返回 `false`。

`includes()` 方法还可以接受一个可选的第二个参数，指定在数组中开始搜索的位置。 如果要检查某个元素是否存在于数组的某个特定部分，这个功能非常有用。 下面介绍如何使用该功能：

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

在第一个 `console.log` 中，我们从索引 `3` 开始查找数字 `30`。 在索引 `3` 之后，确实有一个数字 `30` 出现，所以 `includes()` 方法返回 `true`。 

第二个 `console.log` 也是如此。 我们从索引 `4` 开始查找数字 `30`。 由于数字 `30` 也出现在该索引之后，所以它也返回 `true`。 

值得注意的是，`includes()` 使用严格相等（`===`）进行比较，这意味着它可以区分不同的类型。 例如：

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

在这个例子中，数字 `2` 和字符串 `"2"` 被认为是不同的数据类型。 因此，第一个 `console.log` 会返回 `false`，而第二个 `console.log` 会返回 `true`。

`includes()` 方法是检查数组中是否存在某个元素的强大工具。 它使用简单，效率高，可以让你不必编写更复杂的循环或条件来搜索数组。 无论你处理的是字符串、数字还是混合数据类型，`includes()` 都提供了一种直接的方法来验证数组中是否存在某个值。

# --questions--

## --text--

下面代码的输出是什么？

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

`includes()` 的第二个参数指定搜索的起始位置。

---

`false`

---

`undefined`

### --feedback--

`includes()` 的第二个参数指定搜索的起始位置。

---

会报错。

### --feedback--

`includes()` 的第二个参数指定搜索的起始位置。

## --video-solution--

2

## --text--

下面代码的输出是什么？

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

请记住，在处理字符串时，`includes()` 是区分大小写的。

---

`false`

---

`undefined`

### --feedback--

请记住，在处理字符串时，`includes()` 是区分大小写的。

---

会报错。

### --feedback--

请记住，在处理字符串时，`includes()` 是区分大小写的。

## --video-solution--

2

## --text--

下面代码的输出是什么？

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

`includes()` 方法使用严格相等（`===`）进行比较。

---

`false`

---

`undefined`

### --feedback--

`includes()` 方法使用严格相等（`===`）进行比较。

---

会报错。

### --feedback--

`includes()` 方法使用严格相等（`===`）进行比较。

## --video-solution--

2
