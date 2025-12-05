---
id: 5900f3aa1000cf542c50febd
title: 'Problema 62: Permutaciones cúbicas'
challengeType: 1
forumTopicId: 302174
dashedName: problem-62-cubic-permutations
---

# --description--

El cubo, 41063625 ($345^3$), puede ser permutado para producir otros dos cubos: 56623104 ($384^3$) y 66430125 ($405^3$). De hecho, 41063625 es el cubo más pequeño que tiene exactamente tres permutaciones de sus dígitos que también son un cubo.

Encuentra el cubo más pequeño para el cual exactamente `n` permutaciones de sus dígitos son cubos.

# --hints--

`cubicPermutations(2)` debe devolver un número.

```js
assert(typeof cubicPermutations(2) === 'number');
```

`cubicPermutations(2)` debe devolver `125`.

```js
assert.strictEqual(cubicPermutations(2), 125);
```

`cubicPermutations(3)` debe devolver `41063625`.

```js
assert.strictEqual(cubicPermutations(3), 41063625);
```

`cubicPermutations(4)` debe devolver `1006012008`.

```js
assert.strictEqual(cubicPermutations(4), 1006012008);
```

`cubicPermutations(5)` debe devolver `127035954683`.

```js
assert.strictEqual(cubicPermutations(5), 127035954683);
```

# --seed--

## --seed-contents--

```js
function cubicPermutations(n) {

  return true;
}

cubicPermutations(2);
```

# --solutions--

```js
function cubicPermutations(n) {
  function getDigits(num) {
    const digits = [];
    while (num > 0) {
      digits.push(num % 10);
      num = Math.floor(num / 10);
    }
    return digits;
  }

  function getCube(num) {
    return num ** 3;
  }

  const digitsToCubeCounts = {};
  let curNum = 1;
  let digits;

  while (!digitsToCubeCounts[digits] || digitsToCubeCounts[digits].count < n) {
    const cube = getCube(curNum);
    digits = getDigits(cube).sort().join();
    if (!digitsToCubeCounts[digits]) {
      digitsToCubeCounts[digits] = {
        count: 1,
        smallestCube: cube
      };
    } else {
      digitsToCubeCounts[digits].count += 1;
    }

    curNum++;
  }
  return digitsToCubeCounts[digits].smallestCube;
}
```
