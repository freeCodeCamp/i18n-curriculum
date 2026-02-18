---
id: 68b7cadffed0e75a517da66f
title: "挑战 50：最长单词"
challengeType: 28
dashedName: challenge-50
---

# --description--

给定一个句子，返回句子中最长的单词。

- 忽略句号（`.`）来确定单词长度。
- 如果多个单词并列为最长，返回第一个出现的那个。

# --hints--

`getLongestWord("coding is fun")` 应该返回 `"coding"`。

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` 应该返回 `"educational"`。

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` 应该返回 `"sentence"`。

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
