---
id: cf1231c1c11feddfaeb5bdef
title: JavaScriptで2つの数字を乗算する
challengeType: 1
forumTopicId: 18243
dashedName: multiply-two-numbers-with-javascript
---

# --description--

1つの数字を別の数字で乗算することもできます。

JavaScriptでは、2つの数字の乗算に`*`記号を使います。

**例**

```js
const myVar = 13 * 13;
```

`myVar`は`169`の値になります。

# --instructions--

`0`を変更して、積が`80`になるようにしてください。

# --hints--

変数`product`は80と等しくなる必要があります。

```js
assert(product === 80);
```

`*`演算子を使うべきです。

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const product = 8 * 0;
```

# --solutions--

```js
const product = 8 * 10;
```
