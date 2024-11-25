---
id: cf1111c1c12feddfaeb1bdef
title: JavaScript で整数の乱数を生成する
challengeType: 1
videoUrl: 'https://scrimba.com/c/cRn6bfr'
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

`Math.random()` を使って小数の乱数を生成できますが、整数の乱数が必要なこともあります。 以下の方法で、`20` 未満のランダムな整数が得られます。

1. `Math.random()` を使用して小数の乱数を生成する
2. その小数の乱数に `20` を掛ける
3. `Math.floor()` を使用して小数点以下の端数を切り捨て、最も近い整数を得る

`Math.random()` は決して `1` を返しません。そして `Math.floor()` で切り捨てを行うため、結果が `20` となる可能性はありません。 この方法では `0` ～ `19` のランダムな整数が得られます。

すべてをまとめると次のようなコードになります。

```js
Math.floor(Math.random() * 20);
```

`Math.random()` を呼び出して、その結果に 20 を掛け、その値を `Math.floor()` に渡して端数を切り捨て、最も近い整数を求めています。

# --instructions--

ここで紹介した方法で、`0` ～ `9` の整数の乱数を生成して返してください。

# --hints--

`randomWholeNum` の結果は整数である必要があります。

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

`Math.random` を使用して、乱数を生成する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

`Math.random` の結果に 10 を掛けて、0 ～ 9 の数値を求める必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

`Math.floor` を使用して、小数点以下の端数を切り捨てる必要があります。

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --after-user-code--

```js
(function(){return randomWholeNum();})();
```

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
