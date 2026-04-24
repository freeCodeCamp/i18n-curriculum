---
id: 6920dae65fb8bb6949bcdaba
title: Paso 4
challengeType: 1
dashedName: step-4
---

# --description--

Para ver cómo se comporta el bucle dentro de `printCharacters`, llámalo con el argumento `"hello"`.

# --hints--

Debes llamar a la función `printCharacters` con `"hello"` como argumento.

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
