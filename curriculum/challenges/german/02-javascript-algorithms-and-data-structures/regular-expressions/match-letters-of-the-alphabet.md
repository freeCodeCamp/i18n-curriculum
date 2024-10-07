---
id: 587d7db5367417b2b2512b96
title: Buchstaben des Alphabets abgleichen
challengeType: 1
forumTopicId: 301354
dashedName: match-letters-of-the-alphabet
---

# --description--

You saw how you can use <dfn>character sets</dfn> to specify a group of characters to match, but that's a lot of typing when you need to match a large range of characters (for example, every letter in the alphabet). Fortunately, there is a built-in feature that makes this short and simple.

Im Zeichensatz können Bindestriche (`-`) verwendet werden, um den Bereich der zu übereinstimmenden Zeichen zu definieren.

Um zum Beispiel die Kleinbuchstaben `a` bis `e` zu finden, würdest du `[a-e]` verwenden.

```js
let catStr = "cat";
let batStr = "bat";
let matStr = "mat";
let bgRegex = /[a-e]at/;
catStr.match(bgRegex);
batStr.match(bgRegex);
matStr.match(bgRegex);
```

In dieser Reihenfolge würden die drei `match`-Aufrufe die Werte `["cat"]`, `["bat"]` und `null` zurückgeben.

# --instructions--

Finde alle Buchstaben in dem String `quoteSample`.

**Hinweis**: Achte darauf, dass sowohl Groß- als auch Kleinbuchstaben übereinstimmen.

# --hints--

Dein Regex `alphabetRegex` sollte 35 Einträge finden.

```js
assert(result.length == 35);
```

Dein Regex `alphabetRegex` sollte den globale Flag verwenden.

```js
assert(alphabetRegex.flags.match(/g/).length == 1);
```

Dein regulärer Ausdruck `alphabetRegex` sollte die Groß- und Kleinschreibung nicht berücksichtigen.

```js
assert(alphabetRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "The quick brown fox jumps over the lazy dog.";
let alphabetRegex = /change/; // Change this line
let result = alphabetRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "The quick brown fox jumps over the lazy dog.";
let alphabetRegex = /[a-z]/gi; // Change this line
let result = quoteSample.match(alphabetRegex); // Change this line
```
