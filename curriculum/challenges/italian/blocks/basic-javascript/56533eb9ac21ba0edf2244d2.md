---
id: 56533eb9ac21ba0edf2244d2
title: Confrontare con l'operatore di disuguaglianza
challengeType: 1
forumTopicId: 16787
dashedName: comparison-with-the-inequality-operator
---

# --description--

The inequality operator (`!=`) is the opposite of the equality operator. Inequality means not equal. The inequality operator returns `false` when the equality operator would return `true` and *vice versa*. Like the equality operator, the inequality operator will convert data types of values while comparing.

**Esempi**

```js
1 !=  2    // true
1 != "1"   // false
1 != '1'   // false
1 != true  // false
0 != false // false
```

# --instructions--

Aggiungi l'operatore di disuguaglianza `!=` nella condizione dell'`if` in modo che la funzione restituisca la stringa `Not Equal` quando `val` non è equivalente a `99`.

# --hints--

`testNotEqual(99)` dovrebbe restituire la stringa `Equal`

```js
assert(testNotEqual(99) === 'Equal');
```

`testNotEqual("99")` dovrebbe restituire la stringa `Equal`

```js
assert(testNotEqual('99') === 'Equal');
```

`testNotEqual(12)` dovrebbe restituire la stringa `Not Equal`

```js
assert(testNotEqual(12) === 'Not Equal');
```

`testNotEqual("12")` dovrebbe restituire la stringa `Not Equal`

```js
assert(testNotEqual('12') === 'Not Equal');
```

`testNotEqual("bob")` dovrebbe restituire la stringa `Not Equal`

```js
assert(testNotEqual('bob') === 'Not Equal');
```

Dovresti utilizzare l'operatore `!=`

```js
assert(__helpers.removeJSComments(code).match(/(?!!==)!=/));
```

# --seed--

## --seed-contents--

```js
// Setup
function testNotEqual(val) {
  if (val) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

testNotEqual(10);
```

# --solutions--

```js
function testNotEqual(val) {
  if (val != 99) {
    return "Not Equal";
  }
  return "Equal";
}
```
