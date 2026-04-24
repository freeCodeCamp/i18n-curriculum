---
id: 6920dae65fb8bb6949bcdaba
title: Passaggio 4
challengeType: 1
dashedName: step-4
---

# --description--

Per vedere come si comporta il loop all'interno di `printCharacters`, chiamalo con l'argomento `"hello"`.

# --hints--

Dovresti chiamare la funzione `printCharacters` con `"hello"` come suo argomento.

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
