---
id: 691f7773cddba1caf1bf5eca
title: "Desafío 131: Pairwise"
challengeType: 28
dashedName: challenge-131
---

# --description--

Dado un arreglo de enteros y un número objetivo, encuentra todos los pares de elementos en el arreglo cuyos valores suman el objetivo y devuelve la suma de sus índices.

Por ejemplo, dado `[2, 3, 4, 6, 8]` y `10`, encontrarás dos pares válidos:

- `2` y `8` (2 + 8 = 10), cuyos índices son `0` y `4`
- `4` y `6` (4 + 6 = 10), cuyos índices son `2` y `3`

Suma todos los índices para obtener un valor de retorno de `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` debería devolver `9`.

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` debería devolver `15`.

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` debería devolver `22`.

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` debería devolver `10`.

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
