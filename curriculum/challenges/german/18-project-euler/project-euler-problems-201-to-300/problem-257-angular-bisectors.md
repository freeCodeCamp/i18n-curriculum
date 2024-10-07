---
id: 5900f46e1000cf542c50ff80
title: 'Problem 257: Winkelhalbierende'
challengeType: 1
forumTopicId: 301905
dashedName: problem-257-angular-bisectors
---

# --description--

Gegeben ist ein ganzseitiges Dreieck $ABC$ mit den Seiten $a ≤ b ≤ c$ ($AB = c$, $BC = a$ und $AC = b$).

Die Winkelhalbierenden des Dreiecks schneiden die Seiten in den Punkten $E$, $F$ und $G$ (siehe Bild unten).

<img alt="Dreieck ABC, dessen Winkelhalbierende die Seiten in den Punkten E, F und G schneiden" src="https://cdn.freecodecamp.org/curriculum/project-euler/angular-bisectors.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Die Segmente $EF$, $EG$ und $FG$ teilen das Dreieck $ABC$ in vier kleinere Dreiecke: $AEG$, $BFE$, $CGF$ und $EFG$. Es kann bewiesen werden, dass für jedes dieser vier Dreiecke das Verhältnis $\frac{\text{area}(ABC)}{\text{area}(\text{subtriangle})}$ rational ist. Es gibt jedoch Dreiecke, bei denen einige oder alle dieser Verhältnisse ganzzahlig sind.

Wie viele Dreiecke $ABC$ mit dem Perimeter $≤ 100\\,000\\,000$ existieren, so dass das Verhältnis $\frac{\text{area}(ABC)}{\text{area}(AEG)}$ ganzzahlig ist?

# --hints--

`angularBisectors()` sollte `139012411` zurückgeben.

```js
assert.strictEqual(angularBisectors(), 139012411);
```

# --seed--

## --seed-contents--

```js
function angularBisectors() {

  return true;
}

angularBisectors();
```

# --solutions--

```js
// solution required
```
