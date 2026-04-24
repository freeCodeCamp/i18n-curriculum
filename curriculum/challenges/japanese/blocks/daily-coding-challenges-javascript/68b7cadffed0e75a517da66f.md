---
id: 68b7cadffed0e75a517da66f
title: "チャレンジ 50: 最長の単語"
challengeType: 28
dashedName: challenge-50
---

# --description--

文章が与えられたとき、その文章の中で最も長い単語を返してください。

- 単語の長さを判断するときは、ピリオド（`.`）を無視してください。
- 最長の単語が複数ある場合は、最初に出現する単語を返してください。

# --hints--

`getLongestWord("coding is fun")` は `"coding"` を返すべきです。

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` は `"educational"` を返すべきです。

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` は `"sentence"` を返すべきです。

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
