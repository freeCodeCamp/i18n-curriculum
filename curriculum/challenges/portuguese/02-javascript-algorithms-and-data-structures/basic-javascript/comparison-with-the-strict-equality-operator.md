---
id: 56533eb9ac21ba0edf2244d1
title: Comparar com o operador de igualdade estrita
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy87atr'
forumTopicId: 16790
dashedName: comparison-with-the-strict-equality-operator
---

# --description--

Strict equality (`===`) is the counterpart to the equality operator (`==`). However, unlike the equality operator, which attempts to convert both values being compared to a common type, the strict equality operator does not perform a type conversion.

Se os valores que são comparados tiverem valores diferentes, são considerados desiguais, e o operador de igualdade estrito retornará falso.

**Exemplos**

```js
3 ===  3  // true
3 === '3' // false
```

No segundo exemplo, `3` é um tipo de `Number` e `'3'` é um tipo `String`.

# --instructions--

Use o operador de igualdade estrita na instrução `if`, para que a função retorne a string `Equal` quando `val` for estritamente igual a `7`.

# --hints--

`testStrict(10)` deve retornar a string `Not Equal`

```js
assert(testStrict(10) === 'Not Equal');
```

`testStrict(7)` deve retornar a string `Equal`

```js
assert(testStrict(7) === 'Equal');
```

`testStrict("7")` deve retornar a string `Not Equal`

```js
assert(testStrict('7') === 'Not Equal');
```

Você deve usar o operador `===`

```js
assert(__helpers.removeJSComments(code).match(/(val\s*===\s*\d+)|(\d+\s*===\s*val)/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function testStrict(val) {
  if (val) { // Change this line
    return "Equal";
  }
  return "Not Equal";
}

testStrict(10);
```

# --solutions--

```js
function testStrict(val) {
  if (val === 7) {
    return "Equal";
  }
  return "Not Equal";
}
```
