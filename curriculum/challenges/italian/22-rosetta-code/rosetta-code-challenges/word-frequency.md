---
id: 5e94a54cc7b022105bf0fd2c
title: Frequenza delle parole
challengeType: 1
forumTopicId: 393913
dashedName: word-frequency
---

# --description--

Given a text string and an integer n, return the n most common words in the file (and the number of their occurrences) in decreasing frequency.

# --instructions--

Scrivere una funzione per contare le occorrenze di ogni parola e restituire le n parole più comuni insieme al numero delle loro occorrenze in ordine di frequenza decrescente.

La funzione dovrebbe restituire un array 2D con ciascuno degli elementi nella seguente forma: `[word, freq]`. `word` dovrebbe essere la versione minuscola della parola e `freq` il numero che indica il conteggio.

La funzione dovrebbe restituire un array vuoto, se non viene fornita alcuna stringa.

La funzione dovrebbe ignorare maiuscole e minuscole, per esempio, le stringe "Hello" e "hello" devono essere trattate allo stesso modo.

Puoi le parole che hanno caratteri speciali come sottolineature, trattini, apostrofi, virgole, ecc., come parole distinte.

Per esempio, data la stringa "Hello hello goodbye", la tua funzione dovrebbe restituire `[['hello', 2], ['goodbye', 1]]`.

# --hints--

`wordFrequency` dovrebbe essere una funzione.

```js
assert.isFunction(wordFrequency);
```

`wordFrequency` dovrebbe restituire un array.

```js
assert.isArray(wordFrequency('test'));
```

`wordFrequency("Hello hello world", 2)` dovrebbe restituire `[['hello', 2], ['world', 1]]`

```js
const example_1 = 'Hello hello world';
const example_1_solution = [['hello', 2], ['world', 1]];

assert.deepEqual(wordFrequency(example_1, 2), example_1_solution);
```

`wordFrequency("The quick brown fox jumped over the lazy dog", 1)` dovrebbe restituire `[['the', 2]]`

```js
const example_2 = 'The quick brown fox jumped over the lazy dog';
const example_2_solution = [['the', 2]];

assert.deepEqual(wordFrequency(example_2, 1), example_2_solution);
```

`wordFrequency("Opensource opensource open-source open source", 1)` dovrebbe restituire `[['opensource', 2]]`

```js
const example_3 = 'Opensource opensource open-source open source';
const example_3_solution = [['opensource', 2]];

assert.deepEqual(wordFrequency(example_3, 1), example_3_solution);
```

`wordFrequency("Apple App apply aPP aPPlE", 3)` dovrebbe restituire `[['app', 2], ['apple', 2], ['apply', 1]]` oppure `[['apple', 2], ['app', 2], ['apply', 1]]`

```js
const example_4 = 'Apple App apply aPP aPPlE';
const example_4_solution = [["app", 2],["apple", 2],["apply", 1]];

const arr = wordFrequency(example_4, 3);
assert.includeDeepMembers(arr, example_4_solution);
```

`wordFrequency("c d a d c a b d d c", 4)` dovrebbe restituire `[['d', 4], ['c', 3], ['a', 2], ['b', 1]]`

```js
const example_5 = 'c d a d c a b d d c';
const example_5_solution = [['d', 4], ['c', 3], ['a', 2], ['b', 1]];

assert.deepEqual(wordFrequency(example_5, 4), example_5_solution);
```

`wordFrequency("", 5)` dovrebbe restituire `[]`

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
