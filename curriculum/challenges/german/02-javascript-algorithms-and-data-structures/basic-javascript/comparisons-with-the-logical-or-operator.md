---
id: 56533eb9ac21ba0edf2244d9
title: Vergleiche mit dem logischen Oder-Operator
challengeType: 1
forumTopicId: 16800
dashedName: comparisons-with-the-logical-or-operator
---

# --description--

The <dfn>logical or</dfn> operator (`||`) returns `true` if either of the <dfn>operands</dfn> is `true`. Otherwise, it returns `false`.

Der <dfn>logische Oder</dfn>-Operator besteht aus zwei Pipe-Symbolen: (`||`). Diese befindet sich normalerweise zwischen der Backspace- und der Enter-Taste.

Das folgende Muster sollte dir von früheren Zwischenstationen bekannt vorkommen.

```js
if (num > 10) {
  return "No";
}
if (num < 5) {
  return "No";
}
return "Yes";
```

Dieser Code wird `Yes` zurückgeben, wenn `num` zwischen `5` und `10` liegt (einschließlich `5` und `10`). Die gleiche Logik kann mit dem Operator <dfn>logical and</dfn> geschrieben werden.

```js
if (num > 10 || num < 5) {
  return "No";
}
return "Yes";
```

# --instructions--

Kombiniere die beiden `if`-Anweisungen zu einer Anweisung, die den String `Outside` zurückgibt, wenn `val` nicht zwischen `10` und `20` liegt, einschließlich (10 und 20). Andernfalls wird der String `Inside` zurückgegeben.

# --hints--

Du solltest den Operator `||` einmal verwenden

```js
assert(__helpers.removeJSComments(code).match(/\|\|/g).length === 1);
```

Du solltest nur eine `if`-Anweisung verwenden

```js
assert(__helpers.removeJSComments(code).match(/if/g).length === 1);
```

`testLogicalOr(0)` sollte den String `Outside` zurückgeben

```js
assert(testLogicalOr(0) === 'Outside');
```

`testLogicalOr(9)` sollte den String `Outside` zurückgeben

```js
assert(testLogicalOr(9) === 'Outside');
```

`testLogicalOr(10)` sollte den String `Inside` zurückgeben

```js
assert(testLogicalOr(10) === 'Inside');
```

`testLogicalOr(15)` sollte den String `Inside` zurückgeben

```js
assert(testLogicalOr(15) === 'Inside');
```

`testLogicalOr(19)` sollte den String `Inside` zurückgeben

```js
assert(testLogicalOr(19) === 'Inside');
```

`testLogicalOr(20)` sollte den String `Inside` zurückgeben

```js
assert(testLogicalOr(20) === 'Inside');
```

`testLogicalOr(21)` sollte den String `Outside` zurückgeben

```js
assert(testLogicalOr(21) === 'Outside');
```

`testLogicalOr(25)` sollte den String `Outside` zurückgeben

```js
assert(testLogicalOr(25) === 'Outside');
```

# --seed--

## --seed-contents--

```js
function testLogicalOr(val) {
  // Only change code below this line

  if (val) {
    return "Outside";
  }

  if (val) {
    return "Outside";
  }

  // Only change code above this line
  return "Inside";
}

testLogicalOr(15);
```

# --solutions--

```js
function testLogicalOr(val) {
  if (val < 10 || val > 20) {
    return "Outside";
  }
  return "Inside";
}
```
