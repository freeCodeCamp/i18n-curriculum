---
id: 5900f3cc1000cf542c50fede
title: 'Problema 95: Cadenas Amigables'
challengeType: 1
forumTopicId: 302212
dashedName: problem-95-amicable-chains
---

# --description--

Los divisores propios de un número son todos los divisores excluyendo el número mismo. Por ejemplo, los divisores propios de 28 son 1, 2, 4, 7 y 14. Como la suma de estos divisores es igual a 28, la llamamos un número perfecto.

Curiosamente, la suma de los divisores propios de 220 es 284 y la suma de los divisores propios de 284 es 220, formando una cadena de dos números. Por esta razón, 220 y 284 se llaman un par amigable.

Quizás menos conocidas son las cadenas más largas. Por ejemplo, comenzando con 12496, formamos una cadena de cinco números:

$$ 12496 → 14288 → 15472 → 14536 → 14264 \\,(→ 12496 → \cdots) $$

Dado que esta cadena vuelve a su punto de partida, se le llama una cadena amigable.

Find the smallest member of the longest amicable chain with no element exceeding `limit`.

# --hints--

`amicableChains(300)` should return a number.

```js
assert(typeof amicableChains(300) === 'number');
```

`amicableChains(300)` should return `220`.

```js
assert.strictEqual(amicableChains(300), 220);
```

`amicableChains(15000)` should return `220`.

```js
assert.strictEqual(amicableChains(15000), 220);
```

`amicableChains(100000)` should return `12496`.

```js
assert.strictEqual(amicableChains(100000), 12496);
```

`amicableChains(1000000)` should return `14316`.

```js
assert.strictEqual(amicableChains(1000000), 14316);
```

# --seed--

## --seed-contents--

```js
function amicableChains(limit) {

  return true;
}

amicableChains(300);
```

# --solutions--

```js
function amicableChains(limit) {
  function getSmallestMember(chain) {
    let smallest = chain[0];
    for (let i = 1; i < chain.length; i++) {
      if (smallest > chain[i]) {
        smallest = chain[i];
      }
    }
    return smallest;
  }

  function getFactorsSums(limit) {
    const factorsSums = new Array(limit + 1).fill(1);
    for (let i = 2; i <= limit / 2; i++) {
      for (let j = 2 * i; j <= limit; j += i) {
        factorsSums[j] += i;
      }
    }
    return factorsSums;
  }

  const factorsSums = getFactorsSums(limit);
  const checkedNumbers = new Set();

  let longestChain = 0;
  let smallestMember = 0;
  for (let i = 0; i <= limit; i++) {
    const curChain = [];
    let curNumber = i;
    while (!checkedNumbers.has(curNumber) && factorsSums[curNumber] <= limit) {
      curNumber = factorsSums[curNumber];

      const chainStart = curChain.indexOf(curNumber);
      if (chainStart === -1) {
        curChain.push(curNumber);
        continue;
      }

      const chainLength = curChain.length - chainStart;
      if (chainLength > longestChain) {
        longestChain = chainLength;
        smallestMember = getSmallestMember(curChain.slice(chainStart));
      }
      break;
    }

    for (let j = 0; j < curChain.length; j++) {
      checkedNumbers.add(curChain[j]);
    }
  }

  return smallestMember;
}
```
