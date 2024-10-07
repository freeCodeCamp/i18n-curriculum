---
id: 587d7b85367417b2b2512b3a
title: 関数を呼び出すときに間違った順序で渡された引数をキャッチする
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

関数 `raiseToPower` で、底 (base) の指数 (exponent) 乗を計算しようとしていますが、 残念ながら正しく呼び出されていません。`power` の値が期待どおり 8 になるようにコードを修正してください。

# --hints--

コードの変数 `power` を修正して、3 の 2 乗ではなく 2 の 3 乗になるようにする必要があります。

```js
assert(power == 8);
```

コードで `raiseToPower` 関数を呼び出すときに、引数を正しい順序で使用する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/raiseToPower\(\s*?base\s*?,\s*?exp\s*?\);/g));
```

# --seed--

## --seed-contents--

```js
function raiseToPower(b, e) {
  return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(exp, base);
console.log(power);
```

# --solutions--

```js
function raiseToPower(b, e) {
 return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(base, exp);
console.log(power);
```
