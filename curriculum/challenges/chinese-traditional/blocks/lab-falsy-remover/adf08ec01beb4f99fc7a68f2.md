---
id: adf08ec01beb4f99fc7a68f2
title: 實作一個 Falsy Remover
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

在本實驗中，你將創建一個函式（程式），用來從陣列中移除所有假值。

JavaScript 中的假值有 `false`、`null`、`0`、`""`、`undefined` 和 `NaN`。

**目標**：完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你應該有一個 `bouncer` 函式（程式），它以陣列作為引數。
1. `bouncer` 函式（程式）應該傳回一個新的陣列，該陣列包含作為引數傳入的陣列中相同的元素，但已移除假值元素。
1. `bouncer` 函式不應該更改作為引數傳入的陣列。

提示：嘗試將每個值轉換為布林值。

# --hints--

你應該有一個 `bouncer` 函式（程式）。

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` 應該傳回 `[7, "ate", 9]`。

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` 應該傳回 `["a", "b", "c"]`。

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` 應該傳回 `[]`。

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` 應該傳回 `[1, 2]`。

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`bouncer` 函式（程式）不應該變更作為引數傳入的陣列。

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` 應該傳回 `[]`。  

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
