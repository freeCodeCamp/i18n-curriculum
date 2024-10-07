---
id: 5900f4f11000cf542c510003
title: 'Problem 387: Harshad-Zahlen'
challengeType: 1
forumTopicId: 302051
dashedName: problem-387-harshad-numbers
---

# --description--

Eine Harshad- oder Niven-Zahl ist eine Zahl, die durch die Summe ihrer Ziffern teilbar ist.

201 ist eine Harshad-Zahl, weil sie durch 3 teilbar ist (die Summe ihrer Ziffern.)

Wenn wir die letzte Ziffer von 201 abschneiden, erhalten wir 20, was eine Harshad-Zahl ist.

Wenn wir die letzte Ziffer von 20 abkürzen, erhalten wir 2, was ebenfalls eine Harshad-Zahl ist.

Nennen wir eine Harshad-Zahl, die durch rekursives Abkürzen der letzten Ziffer immer eine Harshad-Zahl ergibt, eine rechts abkürzbare Harshad-Zahl.

Auch:

$\frac{201}{3} = 67$, was eine Primzahl ist.

Eine Harshad-Zahl, die, wenn sie durch die Summe ihrer Ziffern geteilt wird, eine Primzahl ergibt, nennen wir eine starke Harshad-Zahl.

Nehmen wir nun die Zahl 2011, die eine Primzahl ist. Wenn wir die letzte Ziffer davon abschneiden, erhalten wir 201, eine starke Harshad-Zahl, die auch rechts trimmbar ist. Nennen wir solche Primzahlen starke, rechtsstutzbare Harshad-Primzahlen.

Die Summe der starken, rechtsstutzbaren Harshad-Primzahlen kleiner als 10000 ist 90619.

Finde die Summe der starken, rechtsstutzbaren Harshad-Primzahlen kleiner als ${10}^{14}$.

# --hints--

`harshadNumbers()` sollte `696067597313468` zurückgeben.

```js
assert.strictEqual(harshadNumbers(), 696067597313468);
```

# --seed--

## --seed-contents--

```js
function harshadNumbers() {

  return true;
}

harshadNumbers();
```

# --solutions--

```js
// solution required
```
