---
id: cf1391c1c11feddfaeb4bdef
title: JavaScriptで小数を作成する
challengeType: 1
forumTopicId: 16826
dashedName: create-decimal-numbers-with-javascript
---

# --description--

小数も変数に格納できます。小数は時に<dfn>浮動小数点</dfn>数や<dfn>フロート</dfn>と呼ばれます。

**注意:** 数値を計算するときは有限の精度で計算されます。浮動小数点を使った演算は、期待した結果と異なる場合があります。もしそのような結果が出たら、<a href="https://forum.freecodecamp.org/" target="_blank" rel="noopener noreferrer nofollow">freeCodeCampフォーラム</a>でトピックを立ててください。

# --instructions--

変数`myDecimal`を作成し、小数点以下の値を持つ小数を代入してください（例：`5.7`）。

# --hints--

`myDecimal`は数値である必要があります。

```js
assert(typeof myDecimal === 'number');
```

`myDecimal`は小数点を含む必要があります。

```js
assert(myDecimal % 1 != 0);
```

# --seed--

## --seed-contents--

```js
const ourDecimal = 5.7;

// Only change code below this line

```

# --solutions--

```js
const myDecimal = 9.9;
```
