---
id: 5900f3ef1000cf542c50ff01
title: 'Problema 129: Divisibilidad de repituno'
challengeType: 1
forumTopicId: 301756
dashedName: problem-129-repunit-divisibility
---

# --description--

Un número que consiste enteramente en unos se llama un repituno. Definiremos $R(k)$ como un repituno de longitud $k$; por ejemplo, $R(6) = 111111$.

Dado que $n$ es un entero positivo y $GCD(n, 10) = 1$, se puede demostrar que siempre existe un valor, $k$, para el cual $R(k)$ es divisible por $n$, y sea $A(n)$ el menor de esos valores de $k$; por ejemplo, $A(7) = 6$ y $A(41) = 5$.

El menor valor de $n$ para el cual $A(n)$ primer excede diez es 17.

Encuentra el menor valor de $n$ para el cual $A(n)$ primer excede un millón.

# --hints--

`repunitDivisibility()` debe volver `1000023`.

```js
assert.strictEqual(repunitDivisibility(), 1000023);
```

# --seed--

## --seed-contents--

```js
function repunitDivisibility() {

  return true;
}

repunitDivisibility();
```

# --solutions--

```js
// solution required
```
