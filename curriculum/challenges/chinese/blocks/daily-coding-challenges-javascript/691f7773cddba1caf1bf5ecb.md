---
id: 691f7773cddba1caf1bf5ecb
title: "挑战 132：清除最频繁项"
challengeType: 28
dashedName: challenge-132
---

# --description--

给定一个值的数组，移除所有出现次数最多的元素的所有出现，并返回结果数组。

- 如果多个值并列为最频繁，则全部移除。
- 不要更改任何其他元素或它们的顺序。

# --hints--

`purgeMostFrequent([1, 2, 2, 3])` 应该返回 `[1, 3]`。

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` 应该返回 `["a", "b", "b", "c", "c", "c"]`。

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])` 应该返回 `["red", "green", "red", "green"]`。

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])` 应该返回 `[]`。

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` 应该返回 `[10, 3]`。

```js
assert.deepEqual(purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12]), [10, 3]);
```

# --seed--

## --seed-contents--

```js
function purgeMostFrequent(arr) {

  return arr;
}
```

# --solutions--

```js
function purgeMostFrequent(arr) {
  const freq = {};
  for (const val of arr) {
    freq[val] = (freq[val] || 0) + 1;
  }

  const maxFreq = Math.max(...Object.values(freq));

  const toRemove = new Set(
    Object.keys(freq).filter(key => freq[key] === maxFreq)
  );

  return arr.filter(val => !toRemove.has(String(val)));
}
```
