---
id: bd7993c9c69feddfaeb7bdef
title: JavaScriptで小数を乗算する
challengeType: 1
forumTopicId: 301173
dashedName: multiply-two-decimals-with-javascript
---

# --description--

JavaScriptでは、整数と同じように小数の計算もできます。

2つの小数を乗算して、その積を求めましょう。

# --instructions--

`0.0` を変更して、productが `5.0` と等しくなるようにしてください。

# --hints--

変数`product`は`5.0`と等しくなる必要があります。

```js
assert(product === 5.0);
```

`*`演算子を使うべきです。

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const product = 2.0 * 0.0;
```

# --solutions--

```js
const product = 2.0 * 2.5;
```
