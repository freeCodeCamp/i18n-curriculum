---
id: 6920dae65fb8bb6949bcdaba
title: 第 4 步
challengeType: 1
dashedName: step-4
---

# --description--

要查看 `printCharacters` 内部的循环如何运行，请用参数 `"hello"` 调用它。

# --hints--

你应该用 `printCharacters` 作为参数调用函数 `"hello"`。

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
