---
id: 68b7cadffed0e75a517da66f
title: "도전 과제 50: 가장 긴 단어"
challengeType: 28
dashedName: challenge-50
---

# --description--

문장이 주어지면, 문장에서 가장 긴 단어를 반환하세요.

- 단어 길이를 판단할 때 마침표(`.`)는 무시하세요.
- 가장 긴 단어가 여러 개라면, 문장에 처음 나오는 단어를 반환하세요.

# --hints--

`getLongestWord("coding is fun")`은 `"coding"`를 반환해야 합니다.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")`은 `"educational"`를 반환해야 합니다.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")`은 `"sentence"`를 반환해야 합니다.

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
