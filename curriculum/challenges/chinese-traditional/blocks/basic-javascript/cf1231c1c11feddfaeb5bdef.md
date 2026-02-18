---
id: cf1231c1c11feddfaeb5bdef
title: 使用 JavaScript 相乘兩個數字
challengeType: 1
forumTopicId: 18243
dashedName: multiply-two-numbers-with-javascript
---

# --description--

我們也可以將一個數字乘以另一個數字。

JavaScript 使用 `*` 符號來乘兩個數字。

**範例**

```js
const myVar = 13 * 13;
```

`myVar` 將會有值 `169`。

# --instructions--

將 `0` 改成使產品相等於 `80`。

# --hints--

變數 `product` 應該相等於 80。

```js
assert(product === 80);
```

你應該使用 `*` 運算子。

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'product = '+z;})(product);
```

## --seed-contents--

```js
const product = 8 * 0;
```

# --solutions--

```js
const product = 8 * 10;
```
