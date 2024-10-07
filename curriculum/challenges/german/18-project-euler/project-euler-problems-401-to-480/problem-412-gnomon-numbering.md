---
id: 5900f5081000cf542c51001a
title: 'Problem 412: Nummerierung nach Gnomon'
challengeType: 1
forumTopicId: 302081
dashedName: problem-412-gnomon-numbering
---

# --description--

Für Integer $m$, $n$ ($0 ≤ n &lt; m$) sei $L(m, n)$ ein $m×m$-Gitter, bei dem das obere rechte $n×n$-Gitter entfernt ist.

Zum Beispiel sieht $L(5, 3)$ wie folgt aus:

<img alt="5x5-Raster, mit entferntem 3x3-Raster von oben rechts" src="https://cdn.freecodecamp.org/curriculum/project-euler/gnomon-numbering-1.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Wir wollen jede Zelle von $L(m, n)$ mit aufeinanderfolgenden Integer 1, 2, 3, ... so nummerieren, dass die Zahl in jeder Zelle kleiner ist als die Zahl unter ihr und links von ihr.

Hier sind zum Beispiel zwei gültige Nummerierungen von $L(5, 3)$:

<img alt="zwei gültige Zahlenangaben von L(5, 3)" src="https://cdn.freecodecamp.org/curriculum/project-euler/gnomon-numbering-2.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Sei $LC(m, n)$ die Anzahl der gültigen Nummerierungen von $L(m, n)$. Es lässt sich nachweisen, dass $LC(3, 0) = 42$, $LC(5, 3) = 250\\,250$, $LC(6, 3) = 406\\,029\\,023\\,400$ und $LC(10, 5)\bmod 76\\,543\\,217 = 61\\\,251\\,715$.

Finde $LC(10\\,000, 5\\,000)\bmod 76\\,543\\,217$.

# --hints--

`gnomonNumbering()` sollte `38788800` zurückgeben.

```js
assert.strictEqual(gnomonNumbering(), 38788800);
```

# --seed--

## --seed-contents--

```js
function gnomonNumbering() {

  return true;
}

gnomonNumbering();
```

# --solutions--

```js
// solution required
```
