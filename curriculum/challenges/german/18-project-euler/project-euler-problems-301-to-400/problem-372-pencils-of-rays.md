---
id: 5900f4e11000cf542c50fff3
title: 'Problem 372: Strahlenbündel'
challengeType: 1
forumTopicId: 302034
dashedName: problem-372-pencils-of-rays
---

# --description--

Lasse $R(M, N)$ die Anzahl der Gitterpunkte ($x$, $y$) sein, die $M \lt x \le N$, $M \lt y \le N$ erfüllen und $\left\lfloor\frac{y^2}{x^2}\right\rfloor$ ungerade ist.

Wir können nachweisen, dass $R(0, 100) = 3\\,019$ und $R(100, 10\\,000) = 29\\,750\\,422$ ist.

Finde $R(2 \times {10}^6, {10}^9)$.

**Hinweis:** $\lfloor x\rfloor$ steht für die Bodenfunktion.

# --hints--

`pencilsOfRays()` sollte `301450082318807040` zurückgeben.

```js
assert.strictEqual(pencilsOfRays(), 301450082318807040);
```

# --seed--

## --seed-contents--

```js
function pencilsOfRays() {

  return true;
}

pencilsOfRays();
```

# --solutions--

```js
// solution required
```
