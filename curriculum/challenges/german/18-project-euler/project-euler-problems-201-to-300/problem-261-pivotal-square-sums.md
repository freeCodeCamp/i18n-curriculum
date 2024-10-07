---
id: 5900f4711000cf542c50ff84
title: 'Problem 261: Pivotale Quadratsummen'
challengeType: 1
forumTopicId: 301910
dashedName: problem-261-pivotal-square-sums
---

# --description--

Lass uns einen positiven Integer $k$ als Quadrat-Pivot bezeichnen wenn es ein Paar von Integern gibt $m > 0$ und $n ≥ k$ gilt, so dass die Summe der ($m + 1$) aufeinanderfolgenden Quadrate bis zu $k$ gleich der Summe der $m$ aufeinanderfolgenden Quadrate von ($n + 1$) an entspricht:

$${(k - m)}^2 + \ldots + k^2 = {(n + 1)}^2 + \ldots + {(n + m)}^2$$

Einige kleine quadratische Pivots sind

$$\begin{align}   & \mathbf{4}: 3^2 + \mathbf{4}^2 = 5^2 \\\\
  & \mathbf{21}: {20}^2 + \mathbf{21}^2 = {29}^2 \\\\   & \mathbf{24}: {21}^2 + {22}^2 + {23}^2 + \mathbf{24}^2 = {25}^2 + {26}^2 + {27}^2 \\\\
  & \mathbf{110}: {108}^2 + {109}^2 + \mathbf{110}^2 = {133}^2 + {134}^2 \\\\ \end{align}$$

Finde die Summe aller eindeutigen quadratischen Pivots $≤ {10}^{10}$.

# --hints--

`pivotalSquareSums()` sollte `238890850232021` zurückgeben.

```js
assert.strictEqual(pivotalSquareSums(), 238890850232021);
```

# --seed--

## --seed-contents--

```js
function pivotalSquareSums() {

  return true;
}

pivotalSquareSums();
```

# --solutions--

```js
// solution required
```
