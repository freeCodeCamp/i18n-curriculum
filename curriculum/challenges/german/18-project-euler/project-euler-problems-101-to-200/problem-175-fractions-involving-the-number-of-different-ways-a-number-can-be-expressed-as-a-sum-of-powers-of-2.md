---
id: 5900f41c1000cf542c50ff2e
title: >-
  Problem 175: Brüche, bei denen es um die Anzahl der verschiedenen Möglichkeiten geht, eine Zahl als Summe von Potenzen von 2 auszudrücken
challengeType: 1
forumTopicId: 301810
dashedName: >-
  problem-175-fractions-involving-the-number-of-different-ways-a-number-can-be-expressed-as-a-sum-of-powers-of-2
---

# --description--

Definiere $f(0) = 1$ und $f(n)$ als die Anzahl der Möglichkeiten, $n$ als Summe von Potenzen von 2 zu schreiben, wobei keine Potenz mehr als zweimal vorkommt.

Zum Beispiel ist $f(10) = 5$, da es fünf verschiedene Möglichkeiten gibt, 10 auszudrücken:

$$10 = 8 + 2 = 8 + 1 + 1 = 4 + 4 + 2 = 4 + 2 + 2 + 1 + 1 = 4 + 4 + 1 + 1$$

Es kann gezeigt werden, dass es für jeden Bruch $\frac{p}{q}\; (p>0, q>0)$ mindestens eine ganze Zahl $n$ gibt, für die gilt: $\frac{f(n)}{f(n - 1)} = \frac{p}{q}$.

Zum Beispiel ist das kleinste $n$, für das $\frac{f(n)}{f(n - 1)} = \frac{13}{17}$ ist, 241. Die binäre Erweiterung von 241 ist 11110001.

Liest man diese Binärzahl vom höchstwertigen Bit bis zum niedrigstwertigen Bit, so ergeben sich 4 Einsen, 3 Nullen und 1 Eins. Wir nennen den String 4,3,1 die verkürzte binäre Erweiterung von 241.

Finde die verkürzte binäre Expansion des kleinsten $n$, für das

$$\frac{f(n)}{f(n - 1)} = \frac{123456789}{987654321}$$

Gib deine Antwort als String mit durch Kommata getrennten ganzen Zahlen an, ohne Leerzeichen.

# --hints--

`shortenedBinaryExpansionOfNumber()` sollte einen String zurückgeben.

```js
assert(typeof shortenedBinaryExpansionOfNumber() === 'string');
```

`shortenedBinaryExpansionOfNumber()` sollte den String `1,13717420,8` zurückgeben.

```js
assert.strictEqual(shortenedBinaryExpansionOfNumber(), '1,13717420,8');
```

# --seed--

## --seed-contents--

```js
function shortenedBinaryExpansionOfNumber() {

  return true;
}

shortenedBinaryExpansionOfNumber();
```

# --solutions--

```js
// solution required
```
