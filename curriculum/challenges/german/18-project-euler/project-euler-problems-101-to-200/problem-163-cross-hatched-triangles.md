---
id: 5900f40f1000cf542c50ff22
title: 'Problem 163: Überkreuzte Dreiecke'
challengeType: 1
forumTopicId: 301797
dashedName: problem-163-cross-hatched-triangles
---

# --description--

Betrachte ein gleichseitiges Dreieck, in dem gerade Linien von jedem Scheitelpunkt zur Mitte der gegenüberliegenden Seite gezogen werden, wie in dem Dreieck der Größe 1 in der Skizze unten.

<img alt="Dreiecke mit Größe 1 und Größe 2" src="https://cdn.freecodecamp.org/curriculum/project-euler/cross-hatched-triangles.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Sechzehn Dreiecke mit unterschiedlicher Form, Größe, Ausrichtung oder Lage können nun in diesem Dreieck wahrgenommen werden. Wenn Dreiecke der Größe 1 als Bausteine verwendet werden, können größere Dreiecke gebildet werden, wie das Dreieck der Größe 2 in der obigen Skizze. In diesem Dreieck der Größe 2 können nun einhundertundvier Dreiecke in unterschiedlicher Form, Größe oder Ausrichtung oder Position beobachtet werden.

Es kann beobachtet werden, dass das Dreieck der Größe 2 aus 4 Dreiecksbausteinen der Größe 1 besteht. Ein Dreieck der Größe 3 würde 9 Dreiecksbausteine der Größe 1 enthalten und ein Dreieck der Größe $n$ würde also $n^2$ Dreiecksbausteine der Größe 1 enthalten.

Wenn wir $T(n)$ als die Anzahl der Dreiecke angeben, die in einem Dreieck der Größe $n$vorhanden sind, dann

$$\begin{align}   & T(1) = 16 \\\\
  & T(2) = 104 \end{align}$$

Finde $T(36)$.

# --hints--

`crossHatchedTriangles()` sollte `343047` zurückgeben.

```js
assert.strictEqual(crossHatchedTriangles(), 343047);
```

# --seed--

## --seed-contents--

```js
function crossHatchedTriangles() {

  return true;
}

crossHatchedTriangles();
```

# --solutions--

```js
// solution required
```
