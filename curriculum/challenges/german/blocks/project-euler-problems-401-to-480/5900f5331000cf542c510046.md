---
id: 5900f5331000cf542c510046
title: 'Problem 455: Potenzen mit nachgestellten Ziffern'
challengeType: 1
forumTopicId: 302129
dashedName: problem-455-powers-with-trailing-digits
---

# --description--

Sei $f(n)$ der größte positive Integer $x$ kleiner als ${10}^9$, so dass die letzten 9 Ziffern von $n^x$ die Zahl $x$ (einschließlich führender Nullen) bilden, oder Null, wenn es keinen solchen Integer gibt.

Zum Beispiel:

$$\begin{align}   & f(4) = 411\\,728\\,896 (4^{411\\,728\\,896} = ...490\underline{411728896}) \\\\
  & f(10) = 0 \\\\   & f(157) = 743\\,757 (157^{743\\,757} = ...567\underline{000743757}) \\\\
  & Σf(n), 2 ≤ n ≤ 103 = 442\\,530\\,011\\,399 \end{align}$$

Finde $\sum f(n)$, $2 ≤ n ≤ {10}^6$.

# --hints--

`powersWithTrailingDigits()` sollte `450186511399999` zurückgeben.

```js
assert.strictEqual(powersWithTrailingDigits(), 450186511399999);
```

# --seed--

## --seed-contents--

```js
function powersWithTrailingDigits() {

  return true;
}

powersWithTrailingDigits();
```

# --solutions--

```js
// solution required
```
