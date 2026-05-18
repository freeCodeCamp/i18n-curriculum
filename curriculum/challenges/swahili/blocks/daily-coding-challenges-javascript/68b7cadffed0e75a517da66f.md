---
id: 68b7cadffed0e75a517da66f
title: "Zoezi la 50: Neno refu zaidi"
challengeType: 28
dashedName: challenge-50
---

# --description--

Ukitoa sentensi, rudisha neno refu zaidi katika sentensi hiyo.

- Puuza alama za nukta (`.`) wakati wa kubaini urefu wa neno.
- Ikiwa maneno mengi yana urefu sawa wa neno refu zaidi, rudisha neno la kwanza lililotokea.

# --hints--

`getLongestWord("coding is fun")` inapaswa kurudisha `"coding"`.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` inapaswa kurudisha `"educational"`.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` inapaswa kurudisha `"sentence"`.

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
