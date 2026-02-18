---
id: adf08ec01beb4f99fc7a68f2
title: Falsy Bouncer
challengeType: 1
forumTopicId: 16014
dashedName: falsy-bouncer
---

# --description--

從陣列中移除所有假值。傳回一個新的陣列；不要變更原始陣列。

JavaScript 中的假值有 `false`、`null`、`0`、`""`、`undefined` 和 `NaN`。

提示：嘗試將每個值轉換為布林值。

# --hints--

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

你不應該變更 `arr`。

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

# --seed--

## --seed-contents--

```js
function bouncer(arr) {
  return arr;
}

bouncer([7, 'ate', '', false, 9]);
```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}

bouncer([7, 'ate', '', false, 9]);
```
