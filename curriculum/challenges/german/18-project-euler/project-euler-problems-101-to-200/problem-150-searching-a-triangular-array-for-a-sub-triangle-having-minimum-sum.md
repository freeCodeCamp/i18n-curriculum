---
id: 5900f4031000cf542c50ff15
title: >-
  Problem 150: Durchsuchen eines dreieckigen Feldes nach einem Unterdreieck mit minimaler Summe
challengeType: 1
forumTopicId: 301781
dashedName: problem-150-searching-a-triangular-array-for-a-sub-triangle-having-minimum-sum
---

# --description--

In einer dreieckigen Anordnung positiver und negativer Integer soll ein Unterdreieck gefunden werden, bei dem die Summe der darin enthaltenen Zahlen die kleinstmögliche ist.

Im folgenden Beispiel kann leicht überprüft werden, ob das markierte Dreieck diese Bedingung erfüllt und eine Summe von -42 hat.

<img alt="dreiecksfeld, mit markiertem Unterdreieck, mit der Summe -42" src="https://cdn.freecodecamp.org/curriculum/project-euler/searching-a-triangular-array-for-a-sub-triangle-having-minimum-sum.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Wir möchten ein solches Dreiecksfeld mit tausend Zeilen erstellen und erzeugen daher 500500 Pseudozufallszahlen $s_k$ im Bereich $±2^{19}$, indem wir eine Art Zufallszahlengenerator (bekannt als Linearer Kongruenzgenerator) wie folgt verwenden:

$$\begin{align}   t := & \\ 0\\\\
  \text{for}\\ & k = 1\\ \text{up to}\\ k = 500500:\\\\   & t := (615949 × t + 797807)\\ \text{modulo}\\ 2^{20}\\\\
  & s_k := t − 219\\\\ \end{align}$$

Somit ist: $s_1 = 273519$, $s_2 = −153582$, $s_3 = 450905$ etc.

Unser dreieckiges Feld wird dann mit Hilfe der Pseudozufallszahlen gebildet:

$$ s_1 \\\\
s_2\\;s_3 \\\\ s_4\\; s_5\\; s_6 \\\\
s_7\\; s_8\\; s_9\\; s_{10} \\\\ \ldots $$

Teil-Dreiecke können an jedem beliebigen Element des Feldes beginnen und sich beliebig weit nach unten erstrecken (indem sie die beiden direkt darunter liegenden Elemente der nächsten Reihe aufnehmen, die drei direkt darunter liegenden Elemente der übernächsten Reihe usw.).

Die "Summe eines Teildreiecks" ist definiert als die Summe aller Elemente, die es enthält.

Finde die kleinstmögliche Summe der Teildreiecke.

# --hints--

`smallestSubTriangleSum()` sollte `-271248680` zurückgeben.

```js
assert.strictEqual(smallestSubTriangleSum(), -271248680);
```

# --seed--

## --seed-contents--

```js
function smallestSubTriangleSum() {

  return true;
}

smallestSubTriangleSum();
```

# --solutions--

```js
// solution required
```
