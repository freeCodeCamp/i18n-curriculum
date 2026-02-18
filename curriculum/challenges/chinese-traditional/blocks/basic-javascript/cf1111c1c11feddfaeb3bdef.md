---
id: cf1111c1c11feddfaeb3bdef
title: 用 JavaScript 將兩個數字相加
challengeType: 1
forumTopicId: 16650
dashedName: add-two-numbers-with-javascript
---

# --description--

`Number` 是 JavaScript 中表述數值資料的資料型別。

現在讓我們嘗試使用 JavaScript 將兩個數字相加。

JavaScript 在兩個數字之間放置 `+` 符號時，會將其用作加法運算子。

**範例：**

```js
const myVar = 5 + 10;
```

`myVar` 現在的值是 `15`。

# --instructions--

將 `0` 改成使總和相等於 `20`。

# --hints--

`sum` 應該相等於 `20`。

```js
assert(sum === 20);
```

你應該使用 `+` 運算子。

```js
assert(/\+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'sum = '+z;})(sum);
```

## --seed-contents--

```js
const sum = 10 + 0;
```

# --solutions--

```js
const sum = 10 + 10;
```
