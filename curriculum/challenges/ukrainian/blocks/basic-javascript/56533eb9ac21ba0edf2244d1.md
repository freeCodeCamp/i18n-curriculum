---
id: 56533eb9ac21ba0edf2244d1
title: Порівняння з оператором «строго дорівнює»
challengeType: 1
forumTopicId: 16790
dashedName: comparison-with-the-strict-equality-operator
---

# --description--

Strict equality (`===`) is the counterpart to the equality operator (`==`). However, unlike the equality operator, which attempts to convert both values being compared to a common type, the strict equality operator does not perform a type conversion.

Якщо порівнювані значення мають різні типи, вони вважаються нерівними і оператор строгої рівності поверне false.

**Приклади**

```js
3 ===  3  // true
3 === '3' // false
```

У другому прикладі `3` є типом `Number`, а `'3'` є типом `String`.

# --instructions--

Використайте оператор «строго дорівнює» в інструкції `if`, щоб функція повернула рядок `Equal`, якщо `val` строго дорівнює `7`.

# --hints--

`testStrict(10)` має повертати рядок `Not Equal`

```js
assert(testStrict(10) === 'Not Equal');
```

`testStrict(7)` має повертати рядок `Equal`

```js
assert(testStrict(7) === 'Equal');
```

`testStrict("7")` має повертати рядок `Not Equal`

```js
assert(testStrict('7') === 'Not Equal');
```

Ви повинні використати оператор `===`

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
