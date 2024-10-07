---
id: 5900f5131000cf542c510025
title: 'Problem 422: Sequenz der Punkte auf einer Hyperbola'
challengeType: 1
forumTopicId: 302092
dashedName: problem-422-sequence-of-points-on-a-hyperbola
---

# --description--

Sei $H$ die Hyperbel, die durch die Gleichung $12x^2 + 7xy - 12y^2 = 625$ definiert ist.

Definiere nun $X$ als den Punkt (7, 1). Es ist ersichtlich, dass $X$ in $H$ liegt.

Wir definieren nun eine Folge von Punkten in $H, \\{P_i : i ≥ 1\\}$, als:

- $P_1 = (13, \frac{61}{4})$.
- $P_2 = (\frac{-43}{6}, -4)$.
- Für $i > 2$ ist $P_i$ der einzige Punkt in $H$, der von $P_{i - 1}$ verschieden und so beschaffen ist, dass die Linie $P_iP_{i - 1}$ parallel zur Linie $P_{i - 2}X$ ist. Es kann gezeigt werden, dass $P_i$ wohldefiniert ist und dass seine Koordinaten immer rational sind.

<img alt="die Animation zeigt die Definitionspunkte P_1 bis P_6" src="https://cdn.freecodecamp.org/curriculum/project-euler/sequence-of-points-on-a-hyperbola.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Es ist gegeben, dass $P_3 = (\frac{-19}{2}, \frac{-229}{24})$, $P_4 = (\frac{1267}{144}, \frac{-37}{12})$ und $P_7 = (\frac{17\\, 194\\,218\\,091}{143\\,327\\,232}, \frac{274\\,748\\,766\\,781}{1\\,719\\,926\\,784})$.

Finde $P_n$ für $n = {11}^{14}$ im folgenden Format: Wenn $P_n = (\frac{a}{b}, \frac{c}{d})$, wobei die Brüche in kleinsten Termen stehen und die Nenner positiv sind, dann ist die Antwort $(a + b + c + d)\bmod 1\\,000\\,000\,007$.

Für $n = 7$ hätte die Antwort gelautet: $806\\,236\,837$.

# --hints--

`sequenceOfPointsOnHyperbola()` sollte `92060460` zurückgeben.

```js
assert.strictEqual(sequenceOfPointsOnHyperbola(), 92060460);
```

# --seed--

## --seed-contents--

```js
function sequenceOfPointsOnHyperbola() {

  return true;
}

sequenceOfPointsOnHyperbola();
```

# --solutions--

```js
// solution required
```
