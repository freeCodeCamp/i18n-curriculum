---
id: 5900f4761000cf542c50ff88
title: 'Problem 265: Binäre Kreise'
challengeType: 1
forumTopicId: 301914
dashedName: problem-265-binary-circles
---

# --description--

$2^N$ Binärziffern können in einem Kreis platziert werden, so dass alle $N$-stellige Teilfolgen im Uhrzeigersinn verschieden sind.

Für $N = 3$ sind zwei solche kreisförmigen Anordnungen möglich, wobei Drehungen ignoriert werden:

<img alt="zwei kreisförmige Arrangements für N = 3" src="https://cdn.freecodecamp.org/curriculum/project-euler/binary-circles.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Für das erste Arrangement sind die dreistelligen Teilfolgen im Uhrzeigersinn: 000, 001, 010, 101, 011, 111, 110 und 100.

Jede kreisförmige Anordnung kann als Zahl kodiert werden, indem die binären Ziffern aneinandergereiht werden, beginnend mit der Teilfolge aller Nullen als höchstwertigen Bits und im Uhrzeigersinn fortschreitend. Die beiden Arrangements für $N = 3$ werden also als 23 und 29 dargestellt:

$${00010111}_2 = 23\\\\
{00011101}_2 = 29$$

Nennt man $S(N)$ die Summe der eindeutigen numerischen Darstellungen, so sieht man, dass $S(3) = 23 + 29 = 52$.

Finde $S(5)$.

# --hints--

`binaryCircles()` sollte `209110240768` zurückgeben.

```js
assert.strictEqual(binaryCircles(), 209110240768);
```

# --seed--

## --seed-contents--

```js
function binaryCircles() {

  return true;
}

binaryCircles();
```

# --solutions--

```js
// solution required
```
