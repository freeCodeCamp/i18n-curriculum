---
id: 691f7773cddba1caf1bf5ecb
title: "Zoezi la 132: Ondoa Zinazojirudia Zaidi"
challengeType: 28
dashedName: challenge-132
---

# --description--

Ukitoa safu ya data yenye thamani mbalimbali, ondoa matukio yote ya kipengele kinachojirudia mara nyingi zaidi na urudishe safu ya data iliyobaki.

- Ikiwa thamani nyingi zimefanana kuwa zinajirudia mara nyingi zaidi, ziondoe zote.
- Usibadilishe vipengele vingine au mpangilio wake.

# --hints--

`purgeMostFrequent([1, 2, 2, 3])` inapaswa kurudisha `[1, 3]`.

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` inapaswa kurudisha `["a", "b", "b", "c", "c", "c"]`.

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])` inapaswa kurudisha `["red", "green", "red", "green"]`.

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])` inapaswa kurudisha `[]`.

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` inapaswa kurudisha `[10, 3]`.

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
