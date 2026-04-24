---
id: 691f7773cddba1caf1bf5ecb
title: "チャレンジ132: 最頻出要素の削除"
challengeType: 28
dashedName: challenge-132
---

# --description--

配列が与えられたとき、最も頻繁に出現する要素をすべて削除し、結果の配列を返してください。

- 複数の値が最頻出で同率の場合は、それらすべてを削除してください。
- 他の要素やその順序は変更しないでください。

# --hints--

`purgeMostFrequent([1, 2, 2, 3])` は `[1, 3]` を返すべきです。

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` は `["a", "b", "b", "c", "c", "c"]` を返すべきです。

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])` は `["red", "green", "red", "green"]` を返すべきです。

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])` は `[]` を返すべきです。

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` は `[10, 3]` を返すべきです。

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
