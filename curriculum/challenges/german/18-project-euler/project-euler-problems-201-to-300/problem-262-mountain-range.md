---
id: 5900f4731000cf542c50ff85
title: 'Problem 262: Gebirgskette'
challengeType: 1
forumTopicId: 301911
dashedName: problem-262-mountain-range
---

# --description--

Die folgende Gleichung stellt die kontinuierliche Topographie einer Gebirgsregion dar und gibt die Höhe $h$ an jedem Punkt ($x$,$y$) an:

$$h = \left(5000 - \frac{x^2 + y^2 + xy}{200} + \frac{25(x + y)}{2}\right) \times e^{-\left|\frac{x^2 + y^2}{1\\,000\\,000} - \frac{3(x + y)}{2000} + \frac{7}{10}\right|}$$

Eine Stechmücke will von A(200,200) nach B(1400,1400) fliegen, ohne das durch $0 ≤ x$, $y ≤ 1600$ gegebene Gebiet zu verlassen.

Wegen der dazwischenliegenden Berge steigt sie zunächst gerade bis zu einem Punkt A' mit der Höhe $f$ an. Dann fliegt er, während er auf derselben Höhe $f$ bleibt, um alle Hindernisse herum, bis er an einem Punkt B' direkt über B ankommt.

Bestimme zunächst $f_{min}$, d. h. die minimale konstante Steigung, die eine solche Fahrt von A nach B ermöglicht, während sie in dem angegebenen Gebiet bleibt. Bestimme dann die Länge des kürzesten Weges zwischen A' und B', während des Fluges in dieser konstanten Höhe $f_{min}$.

Gib diese Länge als Antwort an, gerundet auf drei Dezimalstellen.

**Hinweis:** Zur Bequemlichkeit wird die oben angezeigte Höhenfunktion unten in einer Form wiederholt, die für die meisten Programmiersprachen geeignet ist: `h=( 5000-0.005*(x*x+y*y+x*y)+12.5*(x+y) )* exp( -abs(0.000001*(x*x+y*y)-0.0015*(x+y)+0.7) )`.

# --hints--

`mountainRange()` sollte `2531.205` zurückgeben.

```js
assert.strictEqual(mountainRange(), 2531.205);
```

# --seed--

## --seed-contents--

```js
function mountainRange() {

  return true;
}

mountainRange();
```

# --solutions--

```js
// solution required
```
