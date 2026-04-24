---
id: 6920dae65fb8bb6949bcdaba
title: ステップ 4
challengeType: 1
dashedName: step-4
---

# --description--

`printCharacters` 内のループがどのように動作するかを見るには、引数 `"hello"` を使って呼び出してください。

# --hints--

`printCharacters` 関数を `"hello"` を引数にして呼び出す必要があります。

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
