---
id: 5900f4861000cf542c50ff99
title: 'Problem 282: Die Ackermann-Funktion'
challengeType: 1
forumTopicId: 301933
dashedName: problem-282-the-ackermann-function
---

# --description--

Für nichtnegative ganze Zahlen $m$, $n$ ist die Ackermann-Funktion $A(m, n)$ wie folgt definiert:

$$A(m, n) = \begin{cases} n + 1                 & \text{if $m = 0$}             \\\\
A(m - 1, 1)           & \text{if $m > 0$ and $n = 0$} \\\\ A(m - 1, A(m, n - 1)) & \text{if $m > 0$ and $n > 0$} \end{cases}$$

Zum Beispiel $A(1, 0) = 2$, $A(2, 2) = 7$ und $A(3, 4) = 125$.

Finde $\displaystyle\sum_{n = 0}^6 A(n, n)$ und gib deine Antwort mod ${14}^8$.

# --hints--

`ackermanFunction()` sollte `1098988351` zurückgeben.

```js
assert.strictEqual(ackermanFunction(), 1098988351);
```

# --seed--

## --seed-contents--

```js
function ackermanFunction() {

  return true;
}

ackermanFunction();
```

# --solutions--

```js
// solution required
```
