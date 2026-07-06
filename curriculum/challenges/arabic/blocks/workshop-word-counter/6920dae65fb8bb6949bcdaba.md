---
id: 6920dae65fb8bb6949bcdaba
title: الخطوة 4
challengeType: 1
dashedName: step-4
---

# --description--

لمعرفة كيف يتصرف الحلقة داخل `printCharacters`، نفذ استدعاء لها مع المعلمة `"hello"`.

# --hints--

يجب استدعاء الدالة `printCharacters` مع المعلمة `"hello"`.

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
