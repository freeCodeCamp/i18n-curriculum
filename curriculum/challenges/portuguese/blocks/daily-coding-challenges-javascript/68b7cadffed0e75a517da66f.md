---
id: 68b7cadffed0e75a517da66f
title: "Desafio 50: Palavra Mais Longa"
challengeType: 28
dashedName: challenge-50
---

# --description--

Dada uma frase, retorne a palavra mais longa da frase.

- Ignore os pontos (`.`) ao determinar o comprimento da palavra.
- Se várias palavras estiverem empatadas como as mais longas, retorne a primeira que ocorrer.

# --hints--

`getLongestWord("coding is fun")` deve retornar `"coding"`.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Desafios de programação são divertidos e educacionais.")` deve retornar `"educacionais"`.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("Esta frase tem várias palavras longas.")` deve retornar `"frase"`.

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
