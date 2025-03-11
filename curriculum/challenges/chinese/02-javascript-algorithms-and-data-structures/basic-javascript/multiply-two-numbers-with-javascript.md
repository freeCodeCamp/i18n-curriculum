---
id: cf1231c1c11feddfaeb5bdef
title: 乘法运算
challengeType: 1
forumTopicId: 18243
dashedName: multiply-two-numbers-with-javascript
---

# --description--

We can also multiply one number by another.

JavaScript 使用 `*` 符号表示两数相乘。

**示例**

```js
const myVar = 13 * 13;
```

现在，变量 `myVar` 的值为 `169`。

# --instructions--

改变数值 `0` 来让变量 product 的值等于`80`。

# --hints--

变量 `product` 的值应该等于 80。

```js
assert(product === 80);
```

使用 `*` 运算符。

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
