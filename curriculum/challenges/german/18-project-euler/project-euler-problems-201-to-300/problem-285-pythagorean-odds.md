---
id: 5900f48a1000cf542c50ff9c
title: 'Problem 285: Pythagoräische Quoten'
challengeType: 1
forumTopicId: 301936
dashedName: problem-285-pythagorean-odds
---

# --description--

Albert wählt eine positive ganze Zahl $k$, dann werden zwei reelle Zahlen $a$, $b$ zufällig im Intervall [0,1] mit Gleichverteilung gewählt.

Anschließend wird die Quadratwurzel der Summe ${(ka + 1)}^2 + {(kb + 1)}^2$ berechnet und auf die nächste ganze Zahl gerundet. Wenn das Ergebnis gleich $k$ ist, erhält er $k$ Punkte, andernfalls geht er leer aus.

Wenn z. B. $k = 6$, $a = 0.2$ und $b = 0.85$, dann ${(ka + 1)}^2 + {(kb + 1)}^2 = 42.05$. Die Quadratwurzel aus 42,05 ist 6,484... und auf die nächste ganze Zahl gerundet ergibt 6. Dies ist gleich $k$, sodass er 6 Punkte erhält.

Es kann gezeigt werden, dass, wenn er 10 Züge mit $k = 1, k = 2, \ldots, k = 10$ spielt, der Erwartungswert seiner Gesamtpunktzahl, gerundet auf fünf Dezimalstellen, 10,20914 beträgt.

Wenn er ${10}^5$ Züge mit $k = 1, k = 2, k = 3, \ldots, k = {10}^5$ spielt, was ist der Erwartungswert seiner Gesamtpunktzahl, gerundet auf fünf Dezimalstellen?

# --hints--

`pythagoreanOdds()` sollte `157055.80999` zurückgeben.

```js
assert.strictEqual(pythagoreanOdds(), 157055.80999);
```

# --seed--

## --seed-contents--

```js
function pythagoreanOdds() {

  return true;
}

pythagoreanOdds();
```

# --solutions--

```js
// solution required
```
