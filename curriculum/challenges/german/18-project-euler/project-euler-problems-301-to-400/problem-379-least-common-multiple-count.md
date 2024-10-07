---
id: 5900f4e81000cf542c50fffa
title: 'Problem 379: Kleinste gemeinsame Mehrfachzählung'
challengeType: 1
forumTopicId: 302041
dashedName: problem-379-least-common-multiple-count
---

# --description--

Sei $f(n)$ die Anzahl der Paare ($x$, $y$) mit $x$ und $y$ positiven Integern, $x ≤ y$ und dem kleinsten gemeinsamen Vielfachen von $x$ und $y$ gleich $n$.

Lasse $g$ die Summationsfunktion von $f$ sein, d.h.: $g(n) = \sum f(i)$ für $1 ≤ i ≤ n$.

Es ist gegeben, dass $g({10}^6) = 37\\,429\\,395$.

Finde $g({10}^{12})$.

# --hints--

`leastCommonMultipleCount()` sollte `132314136838185` zurückgeben.

```js
assert.strictEqual(leastCommonMultipleCount(), 132314136838185);
```

# --seed--

## --seed-contents--

```js
function leastCommonMultipleCount() {

  return true;
}

leastCommonMultipleCount();
```

# --solutions--

```js
// solution required
```
