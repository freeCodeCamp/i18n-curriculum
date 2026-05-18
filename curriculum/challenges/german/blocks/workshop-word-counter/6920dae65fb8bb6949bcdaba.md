---
id: 6920dae65fb8bb6949bcdaba
title: Schritt 4
challengeType: 1
dashedName: step-4
---

# --description--

Um zu sehen, wie die Schleife innerhalb von `printCharacters` funktioniert, rufen Sie sie mit dem Argument `"hello"` auf.

# --hints--

Sie sollten die Funktion `printCharacters` mit `"hello"` als Argument aufrufen.

```js
const codeWithoutJSComments = __helpers.removeJSComments(code);
const normalizedCode = __helpers.removeWhiteSpace(codeWithoutJSComments);
assert.match(normalizedCode, /printCharacters\(('|"|`)hello\1\)/);
```

# --seed--

## --seed-contents--

```js
function printCharacters(str) {
  for (const char of str) {
    console.log(char);
  }
}
--fcc-editable-region--

--fcc-editable-region--
```
