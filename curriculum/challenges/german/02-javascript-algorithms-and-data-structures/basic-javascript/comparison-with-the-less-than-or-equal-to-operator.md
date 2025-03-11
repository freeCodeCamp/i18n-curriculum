---
id: 56533eb9ac21ba0edf2244d7
title: Vergleich mit dem Kleiner-als-oder-Gleich-Operator
challengeType: 1
forumTopicId: 16788
dashedName: comparison-with-the-less-than-or-equal-to-operator
---

# --description--

The less than or equal to operator (`<=`) compares the values of two numbers. If the number to the left is less than or equal to the number to the right, it returns `true`. If the number on the left is greater than the number on the right, it returns `false`. Like the equality operator, the less than or equal to operator converts data types.

**Beispiele**

```js
4   <= 5 // true
'7' <= 7 // true
5   <= 5 // true
3   <= 2 // false
'8' <= 4 // false
```

# --instructions--

Füge den Kleiner-als-oder-Gleich-Operator zu den angegebenen Zeilen hinzu, damit die Return-Anweisungen einen Sinn ergeben.

# --hints--

`testLessOrEqual(0)` sollte den String `Smaller Than or Equal to 12` zurückgeben

```js
assert(testLessOrEqual(0) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(11)` sollte den String `Smaller Than or Equal to 12` zurückgeben

```js
assert(testLessOrEqual(11) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(12)` sollte den String `Smaller Than or Equal to 12` zurückgeben

```js
assert(testLessOrEqual(12) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(23)` sollte den String `Smaller Than or Equal to 24` zurückgeben

```js
assert(testLessOrEqual(23) === 'Smaller Than or Equal to 24');
```

`testLessOrEqual(24)` sollte den String `Smaller Than or Equal to 24` zurückgeben

```js
assert(testLessOrEqual(24) === 'Smaller Than or Equal to 24');
```

`testLessOrEqual(25)` sollte den String `More Than 24` zurückgeben

```js
assert(testLessOrEqual(25) === 'More Than 24');
```

`testLessOrEqual(55)` sollte den String `More Than 24` zurückgeben

```js
assert(testLessOrEqual(55) === 'More Than 24');
```

Du solltest den `<=` Operator mindestens zweimal verwenden

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
