---
id: 6920dae65fb8bb6949bcdaba
title: 4단계
challengeType: 1
dashedName: step-4
---

# --description--

`printCharacters` 내부의 반복문이 어떻게 동작하는지 보려면 인수 `"hello"`를 사용해 호출하세요.

# --hints--

함수 `printCharacters`를 인수 `"hello"`와 함께 호출해야 합니다.

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
