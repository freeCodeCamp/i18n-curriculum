---
id: 5e94a54cc7b022105bf0fd2c
title: 単語頻度
challengeType: 1
forumTopicId: 393913
dashedName: word-frequency
---

# --description--

テキスト文字列と整数 n が与えられています。ファイル内の頻出単語を頻出度の高い順に n 個 (その発生回数とともに) 返します。

# --instructions--

各単語の発生回数をカウントし、n 個の頻出単語をその発生回数とともに頻出度の高い順で返す関数を記述してください。

この関数は、`[word, freq]` の形式で各要素を含む 2 次元配列を返す必要があります。 `word` は単語の小文字バージョンで、`freq` はカウントを表す数字とします。

文字列が指定されていない場合、関数は空の配列を返す必要があります。

関数は大文字と小文字を区別しないものとします。例えば、文字列 "Hello" と "hello" は同じものとして扱われます。

アンダースコア、ダッシュ、アポストロフィ、カンマなどの特殊文字の付いた単語は別の単語として扱うことができます。

例えば、"Hello hello goodbye" という文字列を与えると、関数は `[['hello', 2], ['goodbye', 1]]` を返します。

# --hints--

`wordFrequency` は関数とします。

```js
assert.isFunction(wordFrequency);
```

`wordFrequency` は配列を返す必要があります。

```js
assert.isArray(wordFrequency('test'));
```

`wordFrequency("Hello hello world", 2)` は `[['hello', 2], ['world', 1]]` を返す必要があります。

```js
const example_1 = 'Hello hello world';
const example_1_solution = [['hello', 2], ['world', 1]];

assert.deepEqual(wordFrequency(example_1, 2), example_1_solution);
```

`wordFrequency("The quick brown fox jumped over the lazy dog", 1)` は `[['the', 2]]` を返す必要があります。

```js
const example_2 = 'The quick brown fox jumped over the lazy dog';
const example_2_solution = [['the', 2]];

assert.deepEqual(wordFrequency(example_2, 1), example_2_solution);
```

`wordFrequency("Opensource opensource open-source open source", 1)` は `[['opensource', 2]]` を返す必要があります。

```js
const example_3 = 'Opensource opensource open-source open source';
const example_3_solution = [['opensource', 2]];

assert.deepEqual(wordFrequency(example_3, 1), example_3_solution);
```

`wordFrequency("Apple App apply aPP aPPlE", 3)` は `[['app', 2], ['apple', 2], ['apply', 1]]` または `[['apple', 2], ['app', 2], ['apply', 1]]` を返す必要があります。

```js
const example_4 = 'Apple App apply aPP aPPlE';
const example_4_solution = [["app", 2],["apple", 2],["apply", 1]];

const arr = wordFrequency(example_4, 3);
assert.includeDeepMembers(arr, example_4_solution);
```

`wordFrequency("c d a d c a b d d c", 4)` は `[['d', 4], ['c', 3], ['a', 2], ['b', 1]]` を返す必要があります。

```js
const example_5 = 'c d a d c a b d d c';
const example_5_solution = [['d', 4], ['c', 3], ['a', 2], ['b', 1]];

assert.deepEqual(wordFrequency(example_5, 4), example_5_solution);
```

`wordFrequency("", 5)` は `[]` を返す必要があります。

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
