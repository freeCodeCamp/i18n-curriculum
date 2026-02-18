---
id: cf1111c1c11feddfaeb4bdef
title: 使用 JavaScript 從一個數字中減去另一個數字
challengeType: 1
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

我們也可以用一個數字減去另一個數字。

JavaScript 使用 `-` 符號來做減法。

**範例**

```js
const myVar = 12 - 6;
```

`myVar` 將會有值 `6`。
# --instructions--

將 `0` 改成使差值為 `12`。

# --hints--

變數 `difference` 應該相等於 `12`。

```js
assert(difference === 12);
```

你應該只從 `45` 中減去一個數字。

```js
assert(/difference=45-33;?/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'difference = '+z;})(difference);
```

## --seed-contents--

```js
const difference = 45 - 0;
```

# --solutions--

```js
const difference = 45 - 33;
```
