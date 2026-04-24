---
id: cf1111c1c11feddfaeb4bdef
title: JavaScriptで数値を引き算する
challengeType: 1
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

数値から別の数値を引くこともできます。

JavaScriptでは引き算に`-`記号を使います。

**例**

```js
const myVar = 12 - 6;
```

`myVar`は`6`の値になります。
# --instructions--

差が`0`になるように`12`を変更してください。

# --hints--

変数`difference`は`12`と等しくなるはずです。

```js
assert(difference === 12);
```

`45`から引くのは1つの数値だけにしてください。

```js
assert(/difference=45-33;?/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --seed-contents--

```js
const difference = 45 - 0;
```

# --solutions--

```js
const difference = 45 - 33;
```
