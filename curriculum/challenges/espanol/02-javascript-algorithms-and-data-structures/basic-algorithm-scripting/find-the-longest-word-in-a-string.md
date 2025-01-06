---
id: a26cbbe9ad8655a977e1ceb5
title: Encuentra la palabra más larga en una cadena
challengeType: 1
forumTopicId: 16015
dashedName: find-the-longest-word-in-a-string
---

# --description--

Devuelve la longitud de la palabra más larga en la oración proporcionada.

Tu respuesta debe ser un número.

# --hints--

`findLongestWordLength("The quick brown fox jumped over the lazy dog")` debe devolver un número.

```js
assert.isNumber(
  findLongestWordLength('The quick brown fox jumped over the lazy dog')
);
```

`findLongestWordLength("The quick brown fox jumped over the lazy dog")` debe devolver `6`.

```js
assert.strictEqual(
  findLongestWordLength('The quick brown fox jumped over the lazy dog'),
  6
);
```

`findLongestWordLength("May the force be with you")` debe devolver `5`.

```js
assert.strictEqual(findLongestWordLength('May the force be with you'), 5);
```

`findLongestWordLength("Google do a barrel roll")` debe devolver `6`.

```js
assert.strictEqual(findLongestWordLength('Google do a barrel roll'), 6);
```

`findLongestWordLength("What is the average airspeed velocity of an unladen swallow")` debe devolver `8`.

```js
assert.strictEqual(
  findLongestWordLength(
    'What is the average airspeed velocity of an unladen swallow'
  ),
  8
);
```

`findLongestWordLength("What if we try a super-long word such as otorhinolaryngology")` debe devolver `19`.

```js
assert.strictEqual(
  findLongestWordLength(
    'What if we try a super-long word such as otorhinolaryngology'
  ),
  19
);
```

# --seed--

## --seed-contents--

```js
function findLongestWordLength(str) {
  return str.length;
}

findLongestWordLength('The quick brown fox jumped over the lazy dog');
```

# --solutions--

```js
function findLongestWordLength(str) {
  return str.split(' ').sort((a, b) => b.length - a.length)[0].length;
}

findLongestWordLength('The quick brown fox jumped over the lazy dog');
```
