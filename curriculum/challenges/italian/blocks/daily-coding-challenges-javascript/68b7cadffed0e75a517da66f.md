---
id: 68b7cadffed0e75a517da66f
title: "Sfida 50: parola più lunga"
challengeType: 28
dashedName: challenge-50
---

# --description--

Data una frase, restituisci la parola più lunga nella frase.

- Ignora i punti (`.`) quando determini la lunghezza della parola.
- Se più parole hanno la stessa lunghezza massima, restituisci la prima che compare.

# --hints--

`getLongestWord("coding is fun")` dovrebbe restituire `"coding"`.

```js
assert.equal(getLongestWord("coding is fun"), "coding");
```

`getLongestWord("Coding challenges are fun and educational.")` dovrebbe restituire `"educational"`.

```js
assert.equal(getLongestWord("Coding challenges are fun and educational."), "educational");
```

`getLongestWord("This sentence has multiple long words.")` dovrebbe restituire `"sentence"`.

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
