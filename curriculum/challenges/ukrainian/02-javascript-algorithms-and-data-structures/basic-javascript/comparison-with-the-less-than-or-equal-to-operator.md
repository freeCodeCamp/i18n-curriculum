---
id: 56533eb9ac21ba0edf2244d7
title: Порівняння з оператором «менше ніж або дорівнює»
challengeType: 1
forumTopicId: 16788
dashedName: comparison-with-the-less-than-or-equal-to-operator
---

# --description--

The less than or equal to operator (`<=`) compares the values of two numbers. If the number to the left is less than or equal to the number to the right, it returns `true`. If the number on the left is greater than the number on the right, it returns `false`. Like the equality operator, the less than or equal to operator converts data types.

**Наприклад:**

```js
4   <= 5 // true
'7' <= 7 // true
5   <= 5 // true
3   <= 2 // false
'8' <= 4 // false
```

# --instructions--

Додайте оператор «менше ніж або дорівнює» до вказаних рядків, щоб повернені інструкції мали сенс.

# --hints--

`testLessOrEqual(0)` має повертати рядок `Smaller Than or Equal to 12`

```js
assert(testLessOrEqual(0) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(11)` має повертати рядок `Smaller Than or Equal to 12`

```js
assert(testLessOrEqual(11) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(12)` має повертати рядок `Smaller Than or Equal to 12`

```js
assert(testLessOrEqual(12) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(23)` має повертати рядок `Smaller Than or Equal to 24`

```js
assert(testLessOrEqual(23) === 'Smaller Than or Equal to 24');
```

`testLessOrEqual(24)` має повертати рядок `Smaller Than or Equal to 24`

```js
assert(testLessOrEqual(24) === 'Smaller Than or Equal to 24');
```

`testLessOrEqual(25)` має повертати рядок `More Than 24`

```js
assert(testLessOrEqual(25) === 'More Than 24');
```

`testLessOrEqual(55)` має повертати рядок `More Than 24`

```js
assert(testLessOrEqual(55) === 'More Than 24');
```

Ви повинні використати оператор `<=` принаймні двічі

```js
assert(__helpers.removeJSComments(code).match(/val\s*<=\s*('|")*\d+('|")*/g).length > 1);
```

# --seed--

## --seed-contents--

```js
function testLessOrEqual(val) {
  if (val) {  // Change this line
    return "Smaller Than or Equal to 12";
  }

  if (val) {  // Change this line
    return "Smaller Than or Equal to 24";
  }

  return "More Than 24";
}

testLessOrEqual(10);
```

# --solutions--

```js
function testLessOrEqual(val) {
  if (val <= 12) {  // Change this line
    return "Smaller Than or Equal to 12";
  }

  if (val <= 24) {  // Change this line
    return "Smaller Than or Equal to 24";
  }

  return "More Than 24";
}
```
