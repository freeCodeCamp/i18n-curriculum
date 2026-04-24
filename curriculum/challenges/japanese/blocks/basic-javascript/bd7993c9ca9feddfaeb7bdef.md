---
id: bd7993c9ca9feddfaeb7bdef
title: JavaScriptで小数を小数で割る
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

今度は小数を別の小数で割ってみましょう。

# --instructions--

`0.0` を変更して、`quotient` が `2.2` と等しくなるようにしてください。

# --hints--

変数 `quotient` は `2.2` と等しくなるべきです

```js
assert(quotient === 2.2);
```

4.4 を 2 で割るには `/` 演算子を使うべきです

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

quotient 変数には一度だけ代入してください

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
