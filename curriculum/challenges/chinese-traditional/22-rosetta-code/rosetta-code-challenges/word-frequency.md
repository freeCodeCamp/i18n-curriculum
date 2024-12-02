---
id: 5e94a54cc7b022105bf0fd2c
title: 詞頻
challengeType: 1
forumTopicId: 393913
dashedName: word-frequency
---

# --description--

Given a text string and an integer n, return the n most common words in the file (and the number of their occurrences) in decreasing frequency.

# --instructions--

編寫一個函數來計算每個單詞的出現次數，並返回 n 個最常用的單詞以及它們出現頻率遞減的次數。

該函數應返回一個二維數組，其中包含以下形式的每個元素：`[word, freq]`。 `word` 應該是單詞的小寫版本，`freq` 是表示計數的數字。

如果未提供字符串，該函數應返回一個空數組。

該函數應該不區分大小寫，例如，字符串“Hello”和“hello”應該被視爲相同。

您可以將具有特殊字符（例如下劃線、破折號、撇號、逗號等）的單詞視爲不同的單詞。

例如，給定字符串“Hello hello goodbye”，你的函數應該返回`[['hello', 2], ['goodbye', 1]]`。

# --hints--

`wordFrequency` 應該是一個函數。

```js
assert.isFunction(wordFrequency);
```

`wordFrequency` 應該返回一個數組。

```js
assert.isArray(wordFrequency('test'));
```

`wordFrequency("Hello hello world", 2)` 應該返回`[['hello', 2], ['world', 1]]`

```js
const example_1 = 'Hello hello world';
const example_1_solution = [['hello', 2], ['world', 1]];

assert.deepEqual(wordFrequency(example_1, 2), example_1_solution);
```

`wordFrequency("The quick brown fox jumped over the lazy dog", 1)` 應該返回`[['the', 2]]`

```js
const example_2 = 'The quick brown fox jumped over the lazy dog';
const example_2_solution = [['the', 2]];

assert.deepEqual(wordFrequency(example_2, 1), example_2_solution);
```

`wordFrequency("Opensource opensource open-source open source", 1)` 應該返回`[['opensource', 2]]`

```js
const example_3 = 'Opensource opensource open-source open source';
const example_3_solution = [['opensource', 2]];

assert.deepEqual(wordFrequency(example_3, 1), example_3_solution);
```

`wordFrequency("Apple App apply aPP aPPlE", 3)` 應該返回 `[['app', 2], ['apple', 2], ['apply', 1]]` 或 `[['apple', 2], ['app', 2], ['apply', 1]]`

```js
const example_4 = 'Apple App apply aPP aPPlE';
const example_4_solution = [["app", 2],["apple", 2],["apply", 1]];

const arr = wordFrequency(example_4, 3);
assert.includeDeepMembers(arr, example_4_solution);
```

`wordFrequency("c d a d c a b d d c", 4)` 應該返回 `[['d', 4], ['c', 3], ['a', 2], ['b', 1]]`

```js
const example_5 = 'c d a d c a b d d c';
const example_5_solution = [['d', 4], ['c', 3], ['a', 2], ['b', 1]];

assert.deepEqual(wordFrequency(example_5, 4), example_5_solution);
```

`wordFrequency("", 5)` 應該返回 `[]`

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
