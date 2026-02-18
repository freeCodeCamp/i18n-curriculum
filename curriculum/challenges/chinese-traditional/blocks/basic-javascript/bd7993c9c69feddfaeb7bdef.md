---
id: bd7993c9c69feddfaeb7bdef
title: 使用 JavaScript 乘以兩個小數
challengeType: 1
forumTopicId: 301173
dashedName: multiply-two-decimals-with-javascript
---

# --description--

在 JavaScript 中，你也可以像使用整數一樣對小數進行計算。

讓我們將兩個小數相乘以取得它們的乘積。

# --instructions--

將 `0.0` 更改為使產品相等於 `5.0`。

# --hints--

變數 `product` 應該相等於 `5.0`。

```js
assert(product === 5.0);
```

你應該使用 `*` 運算子

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(y){return 'product = '+y;})(product);
```

## --seed-contents--

```js
const product = 2.0 * 0.0;
```

# --solutions--

```js
const product = 2.0 * 2.5;
```
