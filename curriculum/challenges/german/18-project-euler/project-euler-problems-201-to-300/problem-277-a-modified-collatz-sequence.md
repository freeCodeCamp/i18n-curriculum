---
id: 5900f4811000cf542c50ff94
title: 'Problem 277: Eine modifizierte Collatz-Sequenz'
challengeType: 1
forumTopicId: 301927
dashedName: problem-277-a-modified-collatz-sequence
---

# --description--

Eine modifizierte Collatz-Folge ganzer Zahlen wird auf folgende Weise aus einem Startwert $a_1$ gewonnen:

$a_{n + 1} = \frac{a_n}{3}$, wenn $a_n$ durch 3 teilbar ist. Wir bezeichnen dies als einen großen Schritt nach unten, "D".

$a_{n + 1} = \frac{4a_n + 2}{3}$, wenn $a_n$ geteilt durch 3 einen Rest von 1 ergibt. Wir bezeichnen dies als einen Schritt nach oben, "U".

$a_{n + 1} = \frac{2a_n - 1}{3}$ wenn $a_n$ geteilt durch 3 einen Rest von 2 ergibt. Wir bezeichnen dies als einen kleinen Schritt nach unten, "d".

Die Folge ist beendet, wenn $a_n = 1$ ist.

Bei einer beliebigen ganzen Zahl können wir die Reihenfolge der Schritte auflisten. Wenn zum Beispiel $a_1 = 231$, dann entspricht die Folge $\\{a_n\\} = \\\{231, 77, 51, 17, 11, 7, 10, 14, 9, 3, 1\\}$ den Schritten "DdDddUUdDD".

Natürlich gibt es auch andere Sequenzen, die mit der gleichen Sequenz "DdDddUUdDD...." beginnen.

Wenn zum Beispiel $a_1 = 1004064$, dann ist die Folge DdDddUUdDDDdUDUUUdDdUUDDDUdDD.

Tatsächlich ist 1004064 das kleinstmögliche $a_1 > {10}^6$, das mit der Folge DdDddUUdDD beginnt.

Was ist das kleinste $a_1 > {10}^{15}$, das mit der Folge "UDDDUdddDDUDDddDdDddDDDDUDDdUUDd" beginnt?

# --hints--

`modifiedCollatzSequence()` sollte `1125977393124310` zurückgeben.

```js
assert.strictEqual(modifiedCollatzSequence(), 1125977393124310);
```

# --seed--

## --seed-contents--

```js
function modifiedCollatzSequence() {

  return true;
}

modifiedCollatzSequence();
```

# --solutions--

```js
// solution required
```
