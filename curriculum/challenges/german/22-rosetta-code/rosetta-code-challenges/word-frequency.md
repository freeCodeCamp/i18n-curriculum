---
id: 5e94a54cc7b022105bf0fd2c
title: Wortfrequenz
challengeType: 1
forumTopicId: 393913
dashedName: word-frequency
---

# --description--

Gibt bei einer Textzeichenfolge und einer ganzen Zahl n die n häufigsten Wörter in der Datei (und die Anzahl ihrer Vorkommen) in abnehmender Häufigkeit zurück.

# --instructions--

Schreibe eine Funktion, die die Vorkommen der einzelnen Wörter zählt und die n häufigsten Wörter zusammen mit der Anzahl ihrer Vorkommen in abnehmender Häufigkeit zurückgibt.

Die Funktion sollte ein 2D-Array mit jedem der Elemente in der folgenden Form zurückgeben: `[word, freq]`. `word` sollte die klein geschriebene Version des Wortes sein und `freq` die Zahl, die die Anzahl angibt.

Die Funktion sollte eine leere Anordnung zurückgeben, wenn keine Zeichenkette angegeben wird.

Die Funktion sollte die Groß- und Kleinschreibung nicht berücksichtigen, z. B. sollten die Zeichenketten "Hallo" und "hallo" gleich behandelt werden.

Du kannst Wörter, die Sonderzeichen wie Unterstriche, Bindestriche, Apostrophe, Kommas usw. enthalten, als eigene Wörter behandeln.

Bei der Zeichenkette "Hello hello goodbye" zum Beispiel sollte deine Funktion `[['hello', 2], ['goodbye', 1]]` zurückgeben.

# --hints--

`wordFrequency` sollte eine Funktion sein.

```js
assert.isFunction(wordFrequency);
```

`wordFrequency` sollte ein Array zurückgeben.

```js
assert.isArray(wordFrequency('test'));
```

`wordFrequency("Hello hello world", 2)` sollte `[['hello', 2], ['world', 1]]` zurückgeben

```js
const example_1 = 'Hello hello world';
const example_1_solution = [['hello', 2], ['world', 1]];

assert.deepEqual(wordFrequency(example_1, 2), example_1_solution);
```

`wordFrequency("The quick brown fox jumped over the lazy dog", 1)` sollte `[['the', 2]]` zurückgeben

```js
const example_2 = 'The quick brown fox jumped over the lazy dog';
const example_2_solution = [['the', 2]];

assert.deepEqual(wordFrequency(example_2, 1), example_2_solution);
```

`wordFrequency("Opensource opensource open-source open source", 1)` sollte `[['opensource', 2]]` zurückgeben

```js
const example_3 = 'Opensource opensource open-source open source';
const example_3_solution = [['opensource', 2]];

assert.deepEqual(wordFrequency(example_3, 1), example_3_solution);
```

`wordFrequency("Apple App apply aPP aPPlE", 3)` sollte `[['app', 2], ['apple', 2], ['apply', 1]]` oder `[['apple', 2], ['app', 2], ['apply', 1]]` zurückgeben

```js
const example_4 = 'Apple App apply aPP aPPlE';
const example_4_solution = [["app", 2],["apple", 2],["apply", 1]];

const arr = wordFrequency(example_4, 3);
assert.includeDeepMembers(arr, example_4_solution);
```

`wordFrequency("c d a d c a b d d c", 4)` sollte `[['d', 4], ['c', 3], ['a', 2], ['b', 1]]` zurückgeben

```js
const example_5 = 'c d a d c a b d d c';
const example_5_solution = [['d', 4], ['c', 3], ['a', 2], ['b', 1]];

assert.deepEqual(wordFrequency(example_5, 4), example_5_solution);
```

`wordFrequency("", 5)` sollte `[]` zurückgeben

```js
const example_6 = '';
const example_6_solution = [];

assert.deepEqual(wordFrequency(example_6, 5), example_6_solution);
```

# --seed--

## --seed-contents--

```js
function wordFrequency(txt, n) {

}
```

# --solutions--

```js
function wordFrequency(txt, n) {
  var words = txt.split(/\s+/);
  var wordCount = {};
  words.forEach(word => {
    if (word == '') {
      return;
    }
    const lowerWord = word.toLowerCase();
    wordCount[lowerWord] =
      lowerWord in wordCount ? wordCount[lowerWord] + 1 : 1;
  });

  var wordsArray = [];
  for (let [word, count] of Object.entries(wordCount)) {
    wordsArray.push([word, count]);
  }

  wordsArray.sort((a, b) => {
    if (a[1] !== b[1]) {
      return b[1] - a[1];
    } else if (a[0] !== b[0]) {
      return a[0] < b[0] ? -1 : 1;
    }
    return 0;
  });
  return wordsArray.slice(0, n);
}
```
