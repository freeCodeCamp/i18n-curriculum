---
id: 68b7cadffed0e75a517da66f
title: "Завдання 50: найдовше слово"
challengeType: 28
dashedName: challenge-50
---

# --description--

Дано речення, поверніть найдовше слово в реченні.

- Ігноруйте крапки (`.`) при визначенні довжини слова.
- Якщо кілька слів мають однакову максимальну довжину, поверніть перше з них, що зустрічається.

# --hints--

`getLongestWord("coding is fun")` має повернути `"coding"`.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` має повернути `"educational"`.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` має повернути `"sentence"`.

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
