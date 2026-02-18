---
id: 691f7773cddba1caf1bf5ecb
title: "挑戰 132：清除最常出現項目"
challengeType: 28
dashedName: challenge-132
---

# --description--

給定一個值的陣列，移除所有最常出現元素的出現次數，並傳回結果陣列。

- 如果多個值同時為出現頻率最高，則移除它們全部。
- 不要更改任何其他元素或其順序。

# --hints--

`purgeMostFrequent([1, 2, 2, 3])` 應該傳回 `[1, 3]`。

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` 應該傳回 `["a", "b", "b", "c", "c", "c"]`。

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])` 應該傳回 `["red", "green", "red", "green"]`。

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])` 應該傳回 `[]`。

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` 應該傳回 `[10, 3]`。

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
