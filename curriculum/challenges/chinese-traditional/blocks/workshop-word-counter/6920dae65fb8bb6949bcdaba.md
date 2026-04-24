---
id: 6920dae65fb8bb6949bcdaba
title: 第 4 步
challengeType: 1
dashedName: step-4
---

# --description--

要觀察 `printCharacters` 內部的迴圈行為，請用引數 `"hello"` 呼叫它。

# --hints--

你應該用引數 `printCharacters` 呼叫函式 `"hello"`。

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
