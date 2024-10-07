---
id: 5900f50a1000cf542c51001c
title: 'Problem 413: Ein-Kind-Nummer'
challengeType: 1
forumTopicId: 302082
dashedName: problem-413-one-child-numbers
---

# --description--

Wir sagen, dass eine $d$-stellige Integer (keine vorangestellten Nullen) eine Ein-Kind-Nummer ist, wenn genau einer der untergeordneten Strings durch $d$ teilbar ist.

Zum Beispiel ist 5671 eine vierstellige Ein-Kind-Nummer. Von allen Teilstrings 5, 6, 7, 1, 56, 67, 71, 567, 671 und 5671 ist nur 56 durch 4 teilbar.

Demnach ist 104 eine 3-stellige Ein-Kind-Nummer, da nur 0 durch 3 teilbar ist. 1132451 ist eine 7-stellige Ein-Kind-Nummer, da nur 245 durch 7 teilbar sind.

Lasse $F(N)$, die Zahl der Ein-Kind-Nummern, kleiner als $N$ sein. Wir können nachweisen, dass $F(10) = 9$, $F({10}^3) = 389$ und $F({10}^7) = 277\\,674$.

Finde $F({10}^{19})$.

# --hints--

`oneChildNumbers()` sollte `3079418648040719` zurückgeben.

```js
assert.strictEqual(oneChildNumbers(), 3079418648040719);
```

# --seed--

## --seed-contents--

```js
function oneChildNumbers() {

  return true;
}

oneChildNumbers();
```

# --solutions--

```js
// solution required
```
