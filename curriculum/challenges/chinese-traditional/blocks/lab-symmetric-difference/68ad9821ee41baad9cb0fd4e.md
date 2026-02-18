---
id: 68ad9821ee41baad9cb0fd4e
title: 建置一個對稱差集函式（function）
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

比較兩個陣列並傳回一個新的陣列，其中包含只出現在兩個給定陣列其中一個中的任何項目，但不包含兩者皆有的項目。換句話說，傳回兩個陣列的對稱差集。

範例：

- 陣列 A：`["diamond", "stick", "apple"]`

- 陣列 B：`["stick", "emerald", "bread"]`

結果：`["diamond", "apple", "emerald", "bread"]`

**目標：** 完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你的函式（程式）`diffArray` 應該傳回一個陣列。
2. 你的函式（程式）應該接受兩個引數，兩者皆為陣列。
3. 你的函式（程式）應該使用 `filter` 方法。
4. 你的函式應該傳回兩個陣列的對稱差集。
5. 如果沒有對稱差異，你的函式應該傳回一個空陣列。


# --hints--

你應該有一個名為 `diffArray` 的函式（程式）。

```js
assert.isFunction(diffArray);
```

`diffArray` 函式應該使用 `filter` 方法來過濾出同時存在於兩個陣列中的項目。

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` 應該傳回 `["pink wool"]`。

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` 應該傳回 `["diorite", "pink wool"]`。

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

當以兩個相同的陣列呼叫 `diffArray` 時，應傳回一個空陣列。

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` 應該傳回 `["pen", "pencil", "notebook"]`。

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` 應該傳回 `["car", "train", "plane"]`。

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` 應該傳回 `["banana", "grape"]`。

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` 應該傳回 `["apple", "banana"]`。

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` 應該傳回 `["apple", "banana"]`。

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` 應該傳回 `[]`。

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
