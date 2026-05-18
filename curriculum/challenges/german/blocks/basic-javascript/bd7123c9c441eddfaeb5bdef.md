---
id: bd7123c9c441eddfaeb5bdef
title: Boolean-Werte verstehen
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Ein weiterer Datentyp ist der <dfn>Boolean</dfn>. Booleans können nur einen von zwei Werten annehmen: `true` oder `false`. Sie sind im Grunde kleine Ein-Aus-Schalter, wobei `true` an und `false` aus bedeutet. Diese beiden Zustände schließen sich gegenseitig aus.

**Hinweis:** Boolean-Werte werden niemals in Anführungszeichen geschrieben. Die Strings `"true"` und `"false"` sind keine Booleans und haben in JavaScript keine besondere Bedeutung.

# --instructions--

Ändern Sie die `welcomeToBooleans`-Funktion so, dass sie `true` anstelle von `false` zurückgibt.

# --hints--

Die `welcomeToBooleans()`-Funktion sollte einen Boolean-Wert (`true` oder `false`) zurückgeben.

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` sollte `true` zurückgeben.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

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
