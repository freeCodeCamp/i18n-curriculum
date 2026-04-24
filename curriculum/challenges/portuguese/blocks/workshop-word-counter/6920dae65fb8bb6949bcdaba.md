---
id: 6920dae65fb8bb6949bcdaba
title: Passo 4
challengeType: 1
dashedName: step-4
---

# --description--

Para ver como o loop dentro de `printCharacters` se comporta, faça uma chamada com o argumento `"hello"`.

# --hints--

Você deve chamar a função `printCharacters` com `"hello"` como argumento.

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
