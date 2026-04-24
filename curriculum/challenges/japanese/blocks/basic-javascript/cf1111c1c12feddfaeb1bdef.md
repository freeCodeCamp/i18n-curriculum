---
id: cf1111c1c12feddfaeb1bdef
title: JavaScriptでランダムな整数を生成する
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

`Math.random()`を使ってランダムな小数を生成できますが、時にはランダムな整数を生成する必要があります。以下の手順で`20`未満のランダムな整数を得られます。

1. `Math.random()`を使ってランダムな小数を生成します。
2. そのランダムな小数に`20`を乗算します。
3. `Math.floor()`を使ってこの数値を最も近い整数に切り捨てます。

`Math.random()`は決して`1`を返さないため、`20`で切り捨てているので実際に`Math.floor()`を得ることは不可能です。この手順で`0`から`19`の範囲のランダムな整数が得られます。

これらをまとめると、コードは次のようになります。

```js
Math.floor(Math.random() * 20);
```

`Math.random()`を呼び出し、その結果に20を乗算し、さらに`Math.floor()`に渡して最も近い整数に切り捨てています。

# --instructions--

この手法を使って、`0`から`9`の範囲のランダムな整数を生成して返してください。

# --hints--

`randomWholeNum`の結果は整数である必要があります。

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

ランダムな数を生成するには`Math.random`を使うべきです。

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

`Math.random`の結果に10を乗算して、0から9の範囲の数にする必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

数値の小数部分を取り除くには`Math.floor`を使うべきです。

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

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
