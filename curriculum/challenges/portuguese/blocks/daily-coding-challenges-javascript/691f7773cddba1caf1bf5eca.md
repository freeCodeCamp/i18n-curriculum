---
id: 691f7773cddba1caf1bf5eca
title: "Desafio 131: Pairwise"
challengeType: 28
dashedName: challenge-131
---

# --description--

Dado um array de inteiros e um número alvo, encontre todos os pares de elementos no array cujos valores somam o alvo e retorne a soma dos seus índices.

Por exemplo, dado `[2, 3, 4, 6, 8]` e `10`, você encontrará dois pares válidos:

- `2` e `8` (2 + 8 = 10), cujos índices são `0` e `4`
- `4` e `6` (4 + 6 = 10), cujos índices são `2` e `3`

Some todos os índices para obter um valor de retorno de `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` deve retornar `9`.

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` deve retornar `15`.

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` deve retornar `22`.

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` deve retornar `10`.

```js
assert.equal(pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24), 10);
```

# --seed--

## --seed-contents--

```js
function pairwise(arr, target) {

  return arr;
}
```

# --solutions--

```js
function pairwise(arr, target) {
  let total = 0;

  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] === target) {
        total += i + j;
      }
    }
  }

  return total;
}
```
