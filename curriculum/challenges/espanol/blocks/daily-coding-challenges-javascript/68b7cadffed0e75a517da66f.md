---
id: 68b7cadffed0e75a517da66f
title: "Desafío 50: Palabra más larga"
challengeType: 28
dashedName: challenge-50
---

# --description--

Dada una oración, devuelve la palabra más larga en la oración.

- Ignora los puntos (`.`) al determinar la longitud de la palabra.
- Si varias palabras empatan como las más largas, devuelve la primera que aparece.

# --hints--

`getLongestWord("coding is fun")` debería devolver `"coding"`.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` debería devolver `"educational"`.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` debería devolver `"sentence"`.

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
