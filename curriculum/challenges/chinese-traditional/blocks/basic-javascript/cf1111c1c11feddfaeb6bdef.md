---
id: cf1111c1c11feddfaeb6bdef
title: 使用 JavaScript 將一個數字除以另一個數字
challengeType: 1
forumTopicId: 17566
dashedName: divide-one-number-by-another-with-javascript
---

# --description--

我們也可以用一個數字除以另一個數字。

JavaScript 使用 `/` 符號表示除法。

**範例**

```js
const myVar = 16 / 2;
```

`myVar` 現在的值是 `8`。
# --instructions--

將 `0` 改成使 `quotient` 相等於 `2`。

# --hints--

變數 `quotient` 應該相等於 2。

```js
assert(quotient === 2);
```

你應該使用 `/` 運算子。

```js
assert(/\d+\s*\/\s*\d+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'quotient = '+z;})(quotient);
```

## --seed-contents--

```js
const quotient = 66 / 0;
```

# --solutions--

```js
const quotient = 66 / 33;
```
