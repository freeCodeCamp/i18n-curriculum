---
id: 68b7cadffed0e75a517da66f
title: "挑戰 50：最長的字、單字"
challengeType: 28
dashedName: challenge-50
---

# --description--

給定一個句子，傳回句子中最長的字。

- 判斷字長時忽略句點（`．`）。
- 如果多個字的長度相同，傳回第一個出現的字。

# --hints--

`getLongestWord("coding is fun")` 應該傳回 `"coding"`。

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` 應該傳回 `"educational"`。

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` 應該傳回 `"sentence"`。

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
