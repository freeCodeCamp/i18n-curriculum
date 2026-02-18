---
id: adf08ec01beb4f99fc7a68f2
title: 实现一个 Falsy Remover
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

在本实验中，你将创建一个函数，从数组中移除所有假值。

JavaScript 中的假值有 `false`、`null`、`0`、`""`、`undefined`、`NaN`。

**目标**：完成以下用户故事并通过所有测试以完成实验。

**用户故事：**

1. 你应该有一个 `bouncer` 函数，它接受一个数组作为参数。
1. `bouncer` 函数应返回一个新建的数组，该数组包含作为参数传入的数组中的相同元素，但已移除假值元素。
1. `bouncer` 函数不应更改作为参数传入的数组。

提示：可以考虑将每个值都转换为布尔值（boolean）。

# --hints--

你应该有一个 `bouncer` 函数。

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` 应返回 `[7, "ate", 9]`。

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` 应返回 `["a", "b", "c"]`。

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` 应返回 `[]`。

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` 应返回 `[1, 2]`。

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`bouncer` 函数不应修改作为参数传入的数组。

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` 应该返回 `[]`。  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
