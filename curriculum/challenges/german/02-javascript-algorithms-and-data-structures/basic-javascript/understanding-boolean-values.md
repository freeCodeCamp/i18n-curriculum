---
id: bd7123c9c441eddfaeb5bdef
title: Boolesche Werte verstehen
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**Hinweis:** Boolesche Werte werden nie mit Anführungszeichen geschrieben. Die Strings `"true"` und `"false"` sind nicht boolesch und haben keine besondere Bedeutung in JavaScript.

# --instructions--

Ändere die `welcomeToBooleans`-Funktion so, dass sie `true` statt `false` zurückgibt.

# --hints--

Die Funktion `welcomeToBooleans()` sollte einen booleschen Wert (`true` oder `false`) zurückgeben.

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` sollte `true` zurückgeben.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --after-user-code--

```js
welcomeToBooleans();
```

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
