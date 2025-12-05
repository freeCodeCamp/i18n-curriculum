---
id: 691f7773cddba1caf1bf5ecb
title: "Desafio 132: Eliminar os Mais Frequentes"
challengeType: 28
dashedName: challenge-132
---

# --description--

Dado um array de valores, remova todas as ocorrências do elemento que ocorre com mais frequência e retorne o array resultante.

- Se vários valores estiverem empatados como os mais frequentes, remova todos eles.
- Não altere nenhum dos outros elementos ou sua ordem.

# --hints--

`purgeMostFrequent([1, 2, 2, 3])` deve retornar `[1, 3]`.

```js
assert.deepEqual(purgeMostFrequent([1, 2, 2, 3]), [1, 3]);
```

`purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` deve retornar `["a", "b", "b", "c", "c", "c"]`.

```js
assert.deepEqual(purgeMostFrequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"]);
```

`purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"])` deve retornar `["red", "green", "red", "green"]`.

```js
assert.deepEqual(purgeMostFrequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"]);
```

`purgeMostFrequent([5, 5, 5, 5])` deve retornar `[]`.

```js
assert.deepEqual(purgeMostFrequent([5, 5, 5, 5]), []);
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
