---
id: 5900f4601000cf542c50ff73
title: 'Problem 243: Resilienz'
challengeType: 1
forumTopicId: 301890
dashedName: problem-243-resilience
---

# --description--

Ein positiver Bruch, dessen Zähler kleiner als sein Nenner ist, wird als echter Bruch bezeichnet.

Für jeden Nenner $d$ gibt es $d−1$ richtige Brüche, zum Beispiel mit $d = 12$:

$$\frac{1}{12}, \frac{2}{12}, \frac{3}{12}, \frac{4}{12}, \frac{5}{12}, \frac{6}{12}, \frac{7}{12}, \frac{8}{12}, \frac{9}{12}, \frac{10}{12}, \frac{11}{12}$$

Wir nennen einen Bruch, der nicht aufgehoben werden kann, einen resilienten Bruch.

Außerdem definieren wir die Resilienz eines Nenners, $R(d)$, als das Verhältnis seiner Eigenbrüche, die belastbar sind; zum Beispiel $R(12) = \frac{4}{11}$.

In der Tat ist $d = 12$ der kleinste Nenner, der eine Belastbarkeit von $R(d) &lt; \frac{4}{10}$ hat.

Finde den kleinsten Nenner $d$, der die Belastbarkeit $R(d) &lt; \frac{15\\,499}{94\,744}$ hat.

# --hints--

`resilience()` sollte `892371480` zurückgeben.

```js
assert.strictEqual(resilience(), 892371480);
```

# --seed--

## --seed-contents--

```js
function resilience() {

  return true;
}

resilience();
```

# --solutions--

```js
// solution required
```
