---
id: 56533eb9ac21ba0edf2244d1
title: Vergleich mit dem strikten Gleichheitsoperator
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy87atr'
forumTopicId: 16790
dashedName: comparison-with-the-strict-equality-operator
---

# --description--

Strict equality (`===`) is the counterpart to the equality operator (`==`). However, unlike the equality operator, which attempts to convert both values being compared to a common type, the strict equality operator does not perform a type conversion.

Wenn die zu vergleichenden Werte unterschiedliche Typen haben, werden sie als ungleich angesehen und der strikte Gleichheitsoperator wird false zurückgeben.

**Beispiele**

```js
3 ===  3  // true
3 === '3' // false
```

Im zweiten Beispiel ist `3` ein `Number`-Typ und `'3'` ist ein `String`-Typ.

# --instructions--

Verwende den strikten Gleichheitsoperator in der `if`-Anweisung, damit die Funktion den String `Equal` zurückgibt, wenn `val` genau gleich `7` ist.

# --hints--

`testStrict(10)` sollte den String `Not Equal` zurückgeben

```js
assert(testStrict(10) === 'Not Equal');
```

`testStrict(7)` sollte den String `Equal` zurückgeben

```js
assert(testStrict(7) === 'Equal');
```

`testStrict("7")` sollte den String `Not Equal` zurückgeben

```js
assert(testStrict('7') === 'Not Equal');
```

Du solltest den `===` Operator verwenden

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
