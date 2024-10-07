---
id: 5900f4d91000cf542c50ffea
title: 'Problem 364: Bequemer Abstand'
challengeType: 1
forumTopicId: 302025
dashedName: problem-364-comfortable-distance
---

# --description--

Es gibt $N$ Sitze in einer Reihe. $N$ Personen kommen nacheinander, um die Plätze nach den folgenden Regeln zu besetzen:

1. Wenn es einen Sitz gibt, dessen Nachbarsitz(e) nicht besetzt ist/sind, nehme diesen Sitz ein.
2. Wenn es keinen solchen Platz gibt und ein Platz vorhanden ist, für den nur ein benachbarter Platz besetzt ist, nimm diesen Platz ein.
3. Andernfalls nimmst du einen der noch freien Plätze.

Lasse $T(N)$ die Anzahl der Möglichkeiten sein, die $N$ Sitze von $N$ Personen unter den gegebenen Regeln besetzen. Die folgende Abbildung zeigt $T(4) = 8$.

<img alt="acht Möglichkeiten, wie N Sitze von N Personen besetzt werden können" src="https://cdn.freecodecamp.org/curriculum/project-euler/comfortable-distance.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Wir können nachweisen, dass $T(10) = 61\\,632$ und $T(1\\,000)\bmod 100\\,000\\,007 = 47\\,255\\,094$.

Finde $T(1\\,000\\,000)\bmod 100\\,000\\,007$.

# --hints--

`comfortableDistance()` sollte `44855254` zurückgeben.

```js
assert.strictEqual(comfortableDistance(), 44855254);
```

# --seed--

## --seed-contents--

```js
function comfortableDistance() {

  return true;
}

comfortableDistance();
```

# --solutions--

```js
// solution required
```
