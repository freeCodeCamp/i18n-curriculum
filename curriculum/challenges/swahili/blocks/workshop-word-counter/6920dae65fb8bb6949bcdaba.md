---
id: 6920dae65fb8bb6949bcdaba
title: Hatua 4
challengeType: 1
dashedName: step-4
---

# --description--

Ili kuona jinsi mzunguko ndani ya `printCharacters` unavyotenda, fanya wito wake ukiwa na hoja `"hello"`.

# --hints--

Unapaswa kufanya wito wa kitendakazi `printCharacters` ukiwa na `"hello"` kama hoja yake.

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
