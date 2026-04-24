---
id: cf1111c1c11feddfaeb6bdef
title: JavaScriptで数値を割り算する
challengeType: 1
forumTopicId: 17566
dashedName: divide-one-number-by-another-with-javascript
---

# --description--

数値を別の数値で割ることもできます。

JavaScriptでは割り算に`/`記号を使います。

**例**

```js
const myVar = 16 / 2;
```

`myVar`は今、`8`の値を持っています。
# --instructions--

`0`を変更して、`quotient`が`2`と等しくなるようにしてください。

# --hints--

変数`quotient`は2と等しくなる必要があります。

```js
assert(quotient === 2);
```

`/`演算子を使うべきです。

```js
assert(/\d+\s*\/\s*\d+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const quotient = 66 / 0;
```

# --solutions--

```js
const quotient = 66 / 33;
```
