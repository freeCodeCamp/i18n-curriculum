---
id: 68ad9821ee41baad9cb0fd4e
title: 构建一个对称差函数
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

比较两个数组，返回一个新数组，其中包含只出现在两个给定数组之一中的项，但不同时出现在两个数组中。换句话说，返回两个数组的对称差集。

例如：

- 数组 A：`["diamond", "stick", "apple"]`

- 数组 B：`["stick", "emerald", "bread"]`

- 结果：`["diamond", "apple", "emerald", "bread"]`

**目标：**实现以下用户需求并通过所有测试以完成实验。

**用户故事：**

1. 你的函数 `diffArray` 应该返回一个数组。
2. 你的函数应该接受两个参数，这两个参数都是数组。
3. 你的函数应该使用 `filter` 方法。
4. 你的函数应该返回两个数组的对称差集。
5. 如果没有对称差集，你的函数应该返回一个空数组。
6. 你的函数应该先列出只出现在第一个数组中的项，再列出只出现在第二个数组中的项，并保持它们在各自数组中的原始顺序。

# --hints--

你应该有一个名为 `diffArray` 的函数。

```js
assert.isFunction(diffArray);
```

你的 `diffArray` 函数应该使用 `filter` 方法。

```js
const spy = __helpers.spyOn(Array.prototype, 'filter');
try {
  diffArray([1, 2], [2, 3]);
  assert.isAbove(spy.calls.length, 0);
} finally {
  spy.restore();
}
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` 应该返回 `["pink wool"]`。

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` 应该返回 `["diorite", "pink wool"]`。

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray(["andesite", "grass", "dirt", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` 应该返回 `[]`。

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` 应该返回 `["pen", "pencil", "notebook"]`。

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` 应该返回 `["car", "train", "plane"]`。

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` 应该返回 `["banana", "grape"]`。

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` 应该返回 `["apple", "banana"]`。

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` 应该返回 `["apple", "banana"]`。

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` 应该返回 `[]`。

```js
assert.deepEqual(diffArray(
  [],
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
