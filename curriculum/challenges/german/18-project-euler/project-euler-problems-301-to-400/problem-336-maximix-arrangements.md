---
id: 5900f4bd1000cf542c50ffcf
title: 'Problem 336: Maximix-Anordnungen'
challengeType: 1
forumTopicId: 301994
dashedName: problem-336-maximix-arrangements
---

# --description--

In einem Zug werden vier Waggons in der Reihenfolge: $ABCD$ transportiert. Wenn der Zug jedoch ankommt, um die Waggons abzuholen, sind sie manchmal nicht in der richtigen Reihenfolge.

Um die Waggons neu zu ordnen, werden sie alle auf eine große Drehscheibe platziert. Nachdem die Wagen an einem bestimmten Punkt abgekoppelt wurden, fährt der Zug von der Drehscheibe und zieht die noch angehängten Wagen mit sich. Die übrigen Waggons werden um 180° gedreht. Anschließend werden alle Wagen wieder zusammengefügt und dieser Vorgang wird so oft wie nötig wiederholt, um eine möglichst geringe Anzahl von Einsätzen der Drehscheibe zu erreichen.

Einige Anordnungen, wie $ADCB$, lassen sich leicht lösen: Die Waggons werden zwischen $A$ und $D$ getrennt, und nachdem $DCB$ gedreht wurde, ist die richtige Reihenfolge erreicht.

Der einfache Simon, der Zugführer, ist jedoch nicht für seine Effizienz bekannt, sodass er das Problem immer dadurch löst, dass er zuerst den Wagen $A$ an die richtige Stelle bringt, dann den Wagen $B$ und so weiter.

Bei der Verwendung von vier Wagen sind die schlechtesten möglichen Anordnungen für Simon, die wir als Maximalanordnungen bezeichnen, $DACB$ und $DBAC$; sie erfordern jeweils fünf Umdrehungen (obwohl sie mit dem effizientesten Ansatz mit nur drei Umdrehungen gelöst werden könnten). Der Prozess, den er für $DACB$ verwendet, wird unten angezeigt.

<img alt="Fünf Rotationen für die Maximalanordnung DACB" src="https://cdn.freecodecamp.org/curriculum/project-euler/maximix-arrangements.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Es lässt sich nachweisen, dass es 24 Maximix-Anordnungen für sechs Wagen gibt, von denen die zehnte lexikographische Maximix-Anordnung $DFAECB$ ist.

Finde die ${2011}^{\text{th}}$ lexikographische Maximalanordnung für elf Waggons.

# --hints--

`maximixArrangements()` sollte einen String zurückgeben.

```js
asset.isString(maximixArrangements());
```

`maximixArrangements()` sollte den String `CAGBIHEFJDK` zurückgeben.

```js
assert.strictEqual(maximixArrangements(), 'CAGBIHEFJDK');
```

# --seed--

## --seed-contents--

```js
function maximixArrangements() {

  return true;
}

maximixArrangements();
```

# --solutions--

```js
// solution required
```
