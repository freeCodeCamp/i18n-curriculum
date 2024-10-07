---
id: 5900f5241000cf542c510037
title: 'Problem 440: GCD und Drehen'
challengeType: 1
forumTopicId: 302112
dashedName: problem-440-gcd-and-tiling
---

# --description--

Wir wollen ein Brett der Länge $n$ und der Höhe 1 vollständig mit 1 × 2 Blöcken oder 1 × 1 Blöcken mit einer einzigen Dezimalziffer obenauf belegen:

<img alt="zehn 1x1 Blöcke mit einer Dezimalziffer oben und einem 1x2 Block" src="https://cdn.freecodecamp.org/curriculum/project-euler/gcd-and-tiling-1.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Hier sind zum Beispiel einige der Möglichkeiten, ein Brett der Länge $n = 8$ zu kacheln:

<img alt="Beispiele für Möglichkeiten, ein Brett der Länge n = 8 zu erstellen" src="https://cdn.freecodecamp.org/curriculum/project-euler/gcd-and-tiling-2.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Lasse $T(n)$ die Anzahl an Möglichkeiten sein, um ein Brett mit einer Länge von $n$ wie oben beschrieben zu kacheln.

Zum Beispiel: $T(1) = 10$ und $T(2) = 101$.

Lasse $S(L)$ die Tripelsumme $\sum_{a, b, c} gcd(T(c^a), T(c^b))$ für $1 ≤ a, b, c ≤ L$ sein.

Zum Beispiel:

$$\begin{align}   & S(2) = 10\\,444 \\\\
  & S(3) = 1\\,292\\,115\\,238\\,446\\,807\\,016\\,106\\,539\\,989 \\\\ & S(4)\bmod 987\\,898\\,789 = 670\\,616\\,280. \end{align}$$

Finde $S(2000)\bmod 987\\,898\\,789$.

# --hints--

`gcdAndTiling()` sollte `970746056` zurückgeben.

```js
assert.strictEqual(gcdAndTiling(), 970746056);
```

# --seed--

## --seed-contents--

```js
function gcdAndTiling() {

  return true;
}

gcdAndTiling();
```

# --solutions--

```js
// solution required
```
