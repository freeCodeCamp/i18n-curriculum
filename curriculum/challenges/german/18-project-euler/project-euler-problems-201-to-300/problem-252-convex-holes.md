---
id: 5900f4691000cf542c50ff7b
title: 'Problem 252: Konvexe Löcher'
challengeType: 1
forumTopicId: 301900
dashedName: problem-252-convex-holes
---

# --description--

Bei einer Menge von Punkten auf einer Ebene definieren wir ein konvexes Loch als ein konvexes Polygon, das als Scheitelpunkte jeden der gegebenen Punkte hat und keinen der gegebenen Punkte in seinem Inneren enthält (zusätzlich zu den Scheitelpunkten können andere gegebene Punkte auf dem Umfang des Polygons liegen).

Die folgende Abbildung zeigt als Beispiel einen Satz von zwanzig Punkten und einige solcher konvexen Löcher. Das konvexe Loch, das als rotes Heptagon dargestellt ist, hat eine Fläche von 1049694,5 Quadrateinheiten, was die höchstmögliche Fläche für ein konvexes Loch auf der gegebenen Punktmenge ist.

<img alt="Reihe von zwanzig Punkten und konvexen Löchern in der Ebene" src="https://cdn.freecodecamp.org/curriculum/project-euler/convex-holes.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Für unser Beispiel haben wir die ersten 20 Punkte ($T_{2k − 1}$, $T_{2k}$) für $k = 1, 2, Punkte, 20$ verwendet, die mit dem Pseudo-Zufallszahlengenerator erzeugt wurden:

$$\begin{align}   S_0 & = 290\\,797 \\\\
  S_{n+1} & = {S_n}^2 \\; \text{mod} \\; 50\\,515\\,093 \\\\ T_n & = (S_n \\; \text{mod} \\; 2000) − 1000 \end{align}$$

z.B. (527, 144), (−488, 732), (−454, −947), …

Wie groß ist die maximale Fläche eines konvexen Lochs in der Menge, die die ersten 500 Punkte der Pseudo-Zufallsfolge enthält? Gib deine Antwort mit einer Nachkommastelle an.

# --hints--

`convexHoles()` sollte `104924` zurückgeben.

```js
assert.strictEqual(convexHoles(), 104924);
```

# --seed--

## --seed-contents--

```js
function convexHoles() {

  return true;
}

convexHoles();
```

# --solutions--

```js
// solution required
```
