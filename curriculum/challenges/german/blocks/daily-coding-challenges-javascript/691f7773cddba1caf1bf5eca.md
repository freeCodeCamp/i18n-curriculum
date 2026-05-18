---
id: 691f7773cddba1caf1bf5eca
title: "Aufgabe 131: Paare bilden"
challengeType: 28
dashedName: challenge-131
---

# --description--

Gegeben ist ein Array aus ganzen Zahlen und eine Zielzahl. Finden Sie alle Paare von Elementen im Array, deren Werte zusammen die Zielzahl ergeben, und geben Sie die Summe ihrer Indizes zurück.

Zum Beispiel finden Sie bei `[2, 3, 4, 6, 8]` und `10` zwei gültige Paare:

- `2` und `8` (2 + 8 = 10), deren Indizes `0` und `4` sind
- `4` und `6` (4 + 6 = 10), deren Indizes `2` und `3` sind

Addieren Sie alle Indizes, um einen Rückgabewert von `9` zu erhalten.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` sollte `9` zurückgeben.

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` sollte `15` zurückgeben.

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` sollte `22` zurückgeben.

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` sollte `10` zurückgeben.

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
