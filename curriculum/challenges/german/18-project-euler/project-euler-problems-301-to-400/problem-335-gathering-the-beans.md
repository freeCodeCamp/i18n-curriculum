---
id: 5900f4bd1000cf542c50ffce
title: 'Problem 335: Die Bohnen sammeln'
challengeType: 1
forumTopicId: 301993
dashedName: problem-335-gathering-the-beans
---

# --description--

Immer wenn Peter sich langweilt, stellt er einige Schalen mit je einer Bohne in einen Kreis. Danach nimmt er alle Bohnen aus einer bestimmten Schüssel und lässt sie im Uhrzeigersinn, eine nach der anderen, in die Schalen fallen. Er wiederholt dies, beginnend mit der Schale, in die er die letzte Bohne fallen ließ, bis die Ausgangssituation wieder eintritt. Bei 5 Schalen handelt er zum Beispiel wie folgt:

<img alt="Animation von bewegten Bohnen in 5 Schalen" src="https://cdn.freecodecamp.org/curriculum/project-euler/gathering-the-beans.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Bei 5 Schalen braucht Peter also 15 Züge, um zur Ausgangssituation zurückzukehren.

Lasse $M(x)$ die Anzahl der Züge sein, die erforderlich sind, um ausgehend von $x$ Schalen zur Ausgangssituation zurückzukehren. Somit ist $M(5) = 15$. Es kann auch nachgewiesen werden, dass $M(100) = 10920$.

Finde $\displaystyle\sum_{k = 0}^{{10}^{18}} M(2^k + 1)$. Gib deine Antwort modulo $7^9$ an.

# --hints--

`gatheringTheBeans()` sollte `5032316` zurückgeben.

```js
assert.strictEqual(gatheringTheBeans(), 5032316);
```

# --seed--

## --seed-contents--

```js
function gatheringTheBeans() {

  return true;
}

gatheringTheBeans();
```

# --solutions--

```js
// solution required
```
