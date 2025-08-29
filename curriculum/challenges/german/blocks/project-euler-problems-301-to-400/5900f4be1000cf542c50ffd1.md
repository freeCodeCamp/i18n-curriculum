---
id: 5900f4be1000cf542c50ffd1
title: 'Problem 338: Rechteckiges Rasterpapier schneiden'
challengeType: 1
forumTopicId: 301996
dashedName: problem-338-cutting-rectangular-grid-paper
---

# --description--

Ein rechteckiges Blatt Rasterpapier mit der Ganzzahlgröße $w$ × $h$ ist gegeben. Sein Rasterabstand beträgt 1.

Wenn wir das Blatt entlang der Rasterlinien in zwei Teile schneiden und diese Teile ohne Überlappung neu anordnen, können wir neue Rechtecke mit unterschiedlichen Dimensionen erstellen.

Zum Beispiel, aus einem Blatt mit den Dimensionen 9 × 4 können wir Rechtecke mit den Dimensionen 18 × 2, 12 × 3 und 6 × 6 erstellen, indem wir wie folgend schneiden und umordnen:

<img alt="Ein Blatt mit den Dimensionen 9 x 4 geschnitten in drei verschiedenen Weisen um Rechtecke mit den Dimensionen 18 x 2, 12 x 3 und 6 x 6 zu erstellen" src="https://cdn.freecodecamp.org/curriculum/project-euler/cutting-rectangular-grid-paper.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Ebenso können wir aus einem Blatt mit den Dimensionen 9 × 8 Rechtecke mit den Dimensionen 18 × 4 und 12 × 6 bilden.

Für ein Paar $w$ und $h$, sei $F(w, h)$ die Anzahl der verschiedenen Rechtecke sein, die aus einem Blatt mit den Dimensionen $w$ × $h$ erstellt werden können. Zum Beispiel: $F(2, 1) = 0$, $F(2, 2) = 1$, $F(9, 4) = 3$ und $F(9, 8) = 2$. Beachte, dass Rechtecke, die deckungsgleich zum Ausgangsrechteck sind, in $F(w, h)$ nicht mitgezählt werden. Beachte auch, dass Rechtecke mit Dimensionen $w$ × $h$ und Dimensionen $h$ × $w$ nicht als unterschiedlich betrachtet werden.

Für eine Ganzzahl $N$, sei $G(N)$ die Summe von $F(w, h)$ für alle $w$- und $h$-Paare, die $0 &lt; h ≤ w ≤ N$ erfüllen. Wir können nachweisen, dass $G(10) = 55$, $G({10}^3) = 971\\,745$ und $G({10}^5) = 9\\,992\\,617\\,687$.

Finde $G({10}^{12})$. Gib deine Antwort modulo ${10}^8$.

# --hints--

`cuttingRectangularGridPaper()` sollte `15614292` zurückgeben.

```js
assert.strictEqual(cuttingRectangularGridPaper(), 15614292);
```

# --seed--

## --seed-contents--

```js
function cuttingRectangularGridPaper() {

  return true;
}

cuttingRectangularGridPaper();
```

# --solutions--

```js
// solution required
```
