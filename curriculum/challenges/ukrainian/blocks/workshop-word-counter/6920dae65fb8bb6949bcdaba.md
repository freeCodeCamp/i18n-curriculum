---
id: 6920dae65fb8bb6949bcdaba
title: Крок 4
challengeType: 1
dashedName: step-4
---

# --description--

Щоб побачити, як поводиться цикл всередині `printCharacters`, викличте його з аргументом `"hello"`.

# --hints--

Ви маєте викликати функцію `printCharacters` з `"hello"` як аргументом.

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
