---
id: 68b7cadffed0e75a517da66f
title: "Aufgabe 50: Längstes Wort"
challengeType: 28
dashedName: challenge-50
---

# --description--

Gegeben ist ein Satz. Geben Sie das längste Wort in diesem Satz zurück.

- Ignorieren Sie Punkte (`.`), wenn Sie die Wortlänge bestimmen.
- Wenn mehrere Wörter die gleiche Länge haben, geben Sie das zuerst vorkommende zurück.

# --hints--

`getLongestWord("coding is fun")` sollte `"coding"` zurückgeben.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` sollte `"educational"` zurückgeben.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` sollte `"sentence"` zurückgeben.

```js
assert.equal(getLongestWord("This sentence has multiple long words."), "sentence");
```

# --seed--

## --seed-contents--

```js
function getLongestWord(sentence) {

  return sentence;
}
```

# --solutions--

```js
function getLongestWord(sentence) {
  const words = sentence.split(' ');

  let longest = '';
  for (let word of words) {
    const cleanWord = word.replace(/\./g, '');
    if (cleanWord.length > longest.length) {
      longest = cleanWord;
    }
  }

  return longest;
}
```
