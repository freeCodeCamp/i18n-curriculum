---
id: 56533eb9ac21ba0edf2244d1
title: Confronto con l'operatore di uguaglianza stretta
challengeType: 1
forumTopicId: 16790
dashedName: comparison-with-the-strict-equality-operator
---

# --description--

Strict equality (`===`) is the counterpart to the equality operator (`==`). However, unlike the equality operator, which attempts to convert both values being compared to a common type, the strict equality operator does not perform a type conversion.

Se i valori confrontati hanno tipi diversi, sono considerati ineguali, e l'operatore di uguaglianza stretta restituirà falso.

**Esempi**

```js
3 ===  3  // true
3 === '3' // false
```

Nel secondo esempio, `3` è un tipo `Number` e `'3'` è un tipo `String`.

# --instructions--

Usa l'operatore di uguaglianza stretta nella condizione dell'`if` in modo che la funzione restituisca la stringa `Equal` quando `val` è strettamente uguale a `7`.

# --hints--

`testStrict(10)` dovrebbe restituire la stringa `Not Equal`

```js
assert(testStrict(10) === 'Not Equal');
```

`testStrict(7)` dovrebbe restituire la stringa `Equal`

```js
assert(testStrict(7) === 'Equal');
```

`testStrict("7")` dovrebbe restituire la stringa `Not Equal`

```js
assert(testStrict('7') === 'Not Equal');
```

Dovresti usare l'operatore `===`

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
