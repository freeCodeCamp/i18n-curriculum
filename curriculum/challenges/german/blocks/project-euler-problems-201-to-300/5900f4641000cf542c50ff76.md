---
id: 5900f4641000cf542c50ff76
title: 'Problem 247: Quadrate unter einer Hyperbel'
challengeType: 1
forumTopicId: 301894
dashedName: problem-247-squares-under-a-hyperbola
---

# --description--

Betrachte eine Region begrenzt durch $1 ≤ x$ und $0 ≤ y ≤ \frac{1}{x}$.

Lass $S_1$ das größte Quadrat sein, das unter die Kurve passt.

Lass $S_2$ das größte Quadrat, das in den restlichen Bereich passt, und so weiter.

Lass den Index von $S_n$ das Paar (links, unten) sein, der die Anzahl der Quadraten links von $S_n$ und die Anzahl der Quadraten unterhalb von $S_n$ angibt.

<img alt="Diagramm mit Quadraten unter der Hyperbel" src="https://cdn.freecodecamp.org/curriculum/project-euler/squares-under-a-hyperbola.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Das Diagramm zeigt einige solche Quadrate, die mit Nummern gekennzeichnet sind.

$S_2$ hat ein Quadrat zu seiner Linken und keines unterhalb, also ist der Index von $S_2$ (1, 0).

Es ist zu erkennen, dass der Index von $S_{32} (1,1), sowie der Index von $S_{50}$ ist.

50 ist die größte $n$, für die der Index von $S_n$ (1, 1) ist.

Was ist die größte $n$, für die der Index von $S_n$ (3, 3) ist?

# --hints--

`squaresUnderAHyperbola()` sollte `782252` zurückgeben.

```js
assert.strictEqual(squaresUnderAHyperbola(), 782252);
```

# --seed--

## --seed-contents--

```js
function squaresUnderAHyperbola() {

  return true;
}

squaresUnderAHyperbola();
```

# --solutions--

```js
// solution required
```
