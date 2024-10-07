---
id: 5900f3ee1000cf542c50ff00
title: 'Problem 130: Composites with prime repunit property'
challengeType: 1
forumTopicId: 301758
dashedName: problem-130-composites-with-prime-repunit-property
---

# --description--

Un número que consiste enteramente en unos se llama un repituno. Definiremos $R(k)$ como un repituno de longitud $k$; por ejemplo, $R(6) = 111111$.

Dado que $n$ es un entero positivo y $GCD(n, 10) = 1$, se puede demostrar que siempre existe un valor, $k$, para el cual $R(k)$ es divisible por $n$, y sea $A(n)$ el menor de esos valores de $k$; por ejemplo, $A(7) = 6$ y $A(41) = 5$.

You are given that for all primes, $p > 5$, that $p − 1$ is divisible by $A(p)$. For example, when $p = 41, A(41) = 5$, and 40 is divisible by 5.

However, there are rare composite values for which this is also true; the first five examples being 91, 259, 451, 481, and 703.

Find the sum of the first twenty-five composite values of $n$ for which $GCD(n, 10) = 1$ and $n − 1$ is divisible by $A(n)$.

# --hints--

`compositeRepunit()` should return `149253`.

```js
assert.strictEqual(compositeRepunit(), 149253);
```

# --seed--

## --seed-contents--

```js
function compositeRepunit() {

  return true;
}

compositeRepunit();
```

# --solutions--

```js
// solution required
```
