---
id: 691f7773cddba1caf1bf5ecb
title: "도전 과제 132: 가장 자주 등장하는 요소 제거"
challengeType: 28
dashedName: challenge-132
---

# --description--

값들의 배열이 주어졌을 때, 가장 자주 등장하는 요소를 모두 제거하고 결과 배열을 반환하세요.

- 여러 값이 가장 자주 등장하는 경우, 모두 제거하세요.
- 다른 요소들이나 그 순서는 변경하지 마세요.

# --hints--

`purgeMostFrequent([1, 2, 2, 3])`는 `[1, 3]`을 반환해야 합니다.

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])`는 `["a", "b", "b", "c", "c", "c"]`을 반환해야 합니다.

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])`는 `["red", "green", "red", "green"]`를 반환해야 합니다.

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])`는 `[]`을 반환해야 합니다.

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])`는 `[10, 3]`를 반환해야 합니다.

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
