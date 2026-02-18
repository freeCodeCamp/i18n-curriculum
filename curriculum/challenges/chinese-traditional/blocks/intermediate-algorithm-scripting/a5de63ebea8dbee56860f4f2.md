---
id: a5de63ebea8dbee56860f4f2
title: 比較兩個陣列
challengeType: 1
forumTopicId: 16008
dashedName: diff-two-arrays
---

# --description--

比較兩個陣列並傳回一個新的陣列，其中包含只出現在兩個給定陣列其中一個中的任何項目，但不包含兩者皆有的項目。換句話說，傳回兩個陣列的對稱差集。

**注意：**你可以以任意順序傳回該陣列及其元素。

# --hints--

`diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5])` 應該傳回一個陣列。

```js
assert(typeof diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]) === 'object');
```

`["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"]` 和 `["diorite", "andesite", "grass", "dirt", "dead shrub"]` 應該傳回 `["pink wool"]`。

```js
assert.sameMembers(
  diffArray(
    ['diorite', 'andesite', 'grass', 'dirt', 'pink wool', 'dead shrub'],
    ['diorite', 'andesite', 'grass', 'dirt', 'dead shrub']
  ),
  ['pink wool']
);
```

`["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"]`、`["diorite", "andesite", "grass", "dirt", "dead shrub"]` 應該傳回一個包含一個條款的陣列。

```js
assert(
  diffArray(
    ['diorite', 'andesite', 'grass', 'dirt', 'pink wool', 'dead shrub'],
    ['diorite', 'andesite', 'grass', 'dirt', 'dead shrub']
  ).length === 1
);
```

`["andesite", "grass", "dirt", "pink wool", "dead shrub"]`、`["diorite", "andesite", "grass", "dirt", "dead shrub"]` 應該傳回 `["diorite", "pink wool"]`。

```js
assert.sameMembers(
  diffArray(
    ['andesite', 'grass', 'dirt', 'pink wool', 'dead shrub'],
    ['diorite', 'andesite', 'grass', 'dirt', 'dead shrub']
  ),
  ['diorite', 'pink wool']
);
```

`["andesite", "grass", "dirt", "pink wool", "dead shrub"]`、`["diorite", "andesite", "grass", "dirt", "dead shrub"]` 應該傳回一個有兩個條款的陣列。

```js
assert(
  diffArray(
    ['andesite', 'grass', 'dirt', 'pink wool', 'dead shrub'],
    ['diorite', 'andesite', 'grass', 'dirt', 'dead shrub']
  ).length === 2
);
```

`["andesite", "grass", "dirt", "dead shrub"]`、`["andesite", "grass", "dirt", "dead shrub"]` 應該傳回 `[]`。

```js
assert.sameMembers(
  diffArray(
    ['andesite', 'grass', 'dirt', 'dead shrub'],
    ['andesite', 'grass', 'dirt', 'dead shrub']
  ),
  []
);
```

`["andesite", "grass", "dirt", "dead shrub"]` 應該傳回一個空的陣列。

```js
assert(
  diffArray(
    ['andesite', 'grass', 'dirt', 'dead shrub'],
    ['andesite', 'grass', 'dirt', 'dead shrub']
  ).length === 0
);
```

`[1, 2, 3, 5]`、`[1, 2, 3, 4, 5]` 應該傳回 `[4]`。

```js
assert.sameMembers(diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]), [4]);
```

`[1, 2, 3, 5]`、`[1, 2, 3, 4, 5]` 應該傳回一個包含一個項目的陣列。

```js
assert(diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]).length === 1);
```

`[1, "calf", 3, "piglet"]`、`[1, "calf", 3, 4]` 應該傳回 `["piglet", 4]`。

```js
assert.sameMembers(diffArray([1, 'calf', 3, 'piglet'], [1, 'calf', 3, 4]), [
  'piglet',
  4
]);
```

`[1, "calf", 3, "piglet"]`、`[1, "calf", 3, 4]` 應該傳回一個包含兩個條款的陣列。

```js
assert(diffArray([1, 'calf', 3, 'piglet'], [1, 'calf', 3, 4]).length === 2);
```

`[]`、[`"snuffleupagus"`、`"cookie monster"`、`"elmo"`] 應該傳回 [`"snuffleupagus"`、`"cookie monster"`、`"elmo"`]。

```js
assert.sameMembers(diffArray([], ['snuffleupagus', 'cookie monster', 'elmo']), [
  'snuffleupagus',
  'cookie monster',
  'elmo'
]);
```

`[]`、`["snuffleupagus", "cookie monster", "elmo"]` 應該傳回一個有三個條款的陣列。

```js
assert(diffArray([], ['snuffleupagus', 'cookie monster', 'elmo']).length === 3);
```

`[1, "calf", 3, "piglet"], [7, "filly"]` 應該傳回 `[1, "calf", 3, "piglet", 7, "filly"]`。

```js
assert.sameMembers(diffArray([1, 'calf', 3, 'piglet'], [7, 'filly']), [
  1,
  'calf',
  3,
  'piglet',
  7,
  'filly'
]);
```

`[1, "calf", 3, "piglet"]`、`[7, "filly"]` 應該傳回一個有六個條款的陣列。

```js
assert(diffArray([1, 'calf', 3, 'piglet'], [7, 'filly']).length === 6);
```

# --seed--

## --seed-contents--

```js
function diffArray(arr1, arr2) {
  const newArr = [];
  return newArr;
}

diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]);
```

# --solutions--

```js
function diffArray(arr1, arr2) {
  if (arr1.length === 0) return arr2;
  if (arr2.length === 0) return arr1;

  const set1 = new Set(arr1);
  const set2 = new Set(arr2);
  
  const newArr = [];

  set1.forEach(element => {
    if (!set2.has(element)) newArr.push(element);

  });

  set2.forEach(element => {
    if (!set1.has(element)) newArr.push(element);

  });

  return newArr;
  
}

```
