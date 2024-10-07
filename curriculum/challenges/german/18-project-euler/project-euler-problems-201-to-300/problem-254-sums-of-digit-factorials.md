---
id: 5900f46b1000cf542c50ff7d
title: 'Problem 254: Summe der Fakultäten'
challengeType: 1
forumTopicId: 301902
dashedName: problem-254-sums-of-digit-factorials
---

# --description--

Definiere $f(n)$ als die Summe der Fakultät von den Ziffern von $n$. Zum Beispiel, $f(342) = 3! + 4! + 2! = 32$.

Definiere $sf(n)$ als die Summe der Ziffern von $f(n)$. Also $sf(342) = 3 + 2 = 5$.

Definiere $g(i)$ als die kleinste positive Integer $n$, so dass $sf(n) = i$. Obwohl $sf(342)$ 5 ist, ist $sf(25)$ auch 5, und es kann nachgewiesen werden, dass $g(5)$ 25 ist.

Definiere $sg(i)$ als eine Summe von Ziffern von $g(i)$. Also $sg(5) = 2 + 5 = 7$.

Des Weiteren kann nachgewiesen werden, dass $g(20)$ 267 und $\sum sg(i)$ für $1 ≤ i ≤ 20$ is 156 ist.

Was ist $\sum sg(i)$ für $1 ≤ i ≤ 150$?

# --hints--

`sumsOfDigitFactorials()` sollte `8184523820510` zurückgeben.

```js
assert.strictEqual(sumsOfDigitFactorials(), 8184523820510);
```

# --seed--

## --seed-contents--

```js
function sumsOfDigitFactorials() {

  return true;
}

sumsOfDigitFactorials();
```

# --solutions--

```js
// solution required
```
