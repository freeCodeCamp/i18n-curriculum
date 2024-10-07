---
id: 5900f4801000cf542c50ff92
title: 'Problem 275: Balancierte Skulpturen'
challengeType: 1
forumTopicId: 301925
dashedName: problem-275-balanced-sculptures
---

# --description--

Definieren wir eine balancierte Skulptur der Ordnung $n$ wie folgt:

- Ein Polyomino besteht aus $n + 1$ Spielsteinen, den sogenannten Blöcken ($n$ Spielsteine) und dem Sockel (restlicher Spielstein);
- der Sockel hat seinen Mittelpunkt an der Position ($x = 0$, $y = 0$);
- die Blöcke haben $y$-Koordinaten größer als Null (daher ist der Sockel die einzigartige niedrigste Kachel);
- der Massenschwerpunkt aller Blöcke zusammen hat die $x$-Koordinate gleich Null.

Bei der Zählung der Skulpturen werden alle Anordnungen, die lediglich Spiegelungen um die $y$-Achse sind, <u>nicht</u> als eindeutig gezählt. Zum Beispiel werden die 18 ausgewogenen Skulpturen der Reihenfolge 6 unten gezeigt; Beachten Sie, dass jedes Paar von Spiegelbildern (etwa die $y$-Achse) als eine Skulptur gezählt wird:

<img alt="18 ausgewogene Skulpturen der Ordnung 6" src="https://cdn.freecodecamp.org/curriculum/project-euler/balanced-sculptures.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Es gibt 964 ausgewogene Skulpturen der Ordnung 10 und 360505 der Ordnung 15.

Wie viele ausbalancierte Skulpturen gibt es in Ordnung 18?

# --hints--

`balancedSculptures()` sollte `15030564` zurückgeben.

```js
assert.strictEqual(balancedSculptures(), 15030564);
```

# --seed--

## --seed-contents--

```js
function balancedSculptures() {

  return true;
}

balancedSculptures();
```

# --solutions--

```js
// solution required
```
