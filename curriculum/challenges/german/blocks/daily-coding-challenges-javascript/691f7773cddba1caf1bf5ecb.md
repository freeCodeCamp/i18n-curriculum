---
id: 691f7773cddba1caf1bf5ecb
title: "Aufgabe 132: Entfernen der häufigsten Elemente"
challengeType: 28
dashedName: challenge-132
---

# --description--

Gegeben ist ein Array von Werten. Entfernen Sie alle Vorkommen des am häufigsten auftretenden Elements und geben Sie das resultierende Array zurück.

- Wenn mehrere Werte gleich häufig sind, entfernen Sie alle diese Werte.
- Ändern Sie keine der anderen Elemente oder deren Reihenfolge.

# --hints--

`purgeMostFrequent([1, 2, 2, 3])` sollte `[1, 3]` zurückgeben.

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` sollte `["a", "b", "b", "c", "c", "c"]` zurückgeben.

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])` sollte `["red", "green", "red", "green"]` zurückgeben.

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])` sollte `[]` zurückgeben.

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` sollte `[10, 3]` zurückgeben.

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
