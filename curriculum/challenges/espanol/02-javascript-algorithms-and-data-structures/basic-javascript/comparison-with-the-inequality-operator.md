---
id: 56533eb9ac21ba0edf2244d2
title: Comparación con el operador de desigualdad
challengeType: 1
forumTopicId: 16787
dashedName: comparison-with-the-inequality-operator
---

# --description--

El operador de desigualdad (`!=`) es lo opuesto al operador de igualdad. Inequality means not equal. The inequality operator returns `false` when the equality operator would return `true` and *vice versa*. Al igual que el operador de igualdad, el operador de desigualdad convertirá los tipos de datos mientras los compara.

**Ejemplos**

```js
1 !=  2    // true
1 != "1"   // false
1 != '1'   // false
1 != true  // false
0 != false // false
```

# --instructions--

Agrega el operador de desigualdad `!=` en la sentencia `if` para que la función devuelva la cadena `Not Equal` cuando `val` no sea equivalente a `99`.

# --hints--

`testNotEqual(99)` debe devolver la cadena `Equal`

```js
assert(testNotEqual(99) === 'Equal');
```

`testNotEqual("99")` debe devolver la cadena `Equal`

```js
assert(testNotEqual('99') === 'Equal');
```

`testNotEqual(12)` debe devolver la cadena `Not Equal`

```js
assert(testNotEqual(12) === 'Not Equal');
```

`testNotEqual("12")` debe devolver la cadena `Not Equal`

```js
assert(testNotEqual('12') === 'Not Equal');
```

`testNotEqual("bob")` debe devolver la cadena `Not Equal`

```js
assert(testNotEqual('bob') === 'Not Equal');
```

Debes utilizar el operador `!=`

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
