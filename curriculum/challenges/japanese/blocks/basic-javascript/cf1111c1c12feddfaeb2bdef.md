---
id: cf1111c1c12feddfaeb2bdef
title: 範囲内のランダムな整数を生成する
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

0から指定した数までの範囲でランダムな整数を生成できます。この範囲の下限を別の数に設定することも可能です。

最小値の数を`min`、最大値の数を`max`と呼びます。

この式は`min`から`max`までの範囲でランダムな整数を返します。少し時間を取って読み、このコードが何をしているのか理解してみてください。

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

`randomRange`という関数を作成してください。この関数は`myMin`と`myMax`の範囲を受け取り、`myMin`以上かつ`myMax`以下のランダムな整数を返します。

# --hints--

`randomRange`で生成される最小のランダムな数は、最小値である`myMin`と等しくなる必要があります。

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

`randomRange`で生成される最大のランダムな数は、最大値である`myMax`と等しくなる必要があります。

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

`randomRange`で生成されるランダムな数は、小数ではなく整数である必要があります。

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange`は`myMax`と`myMin`の両方を使い、範囲内のランダムな数を返す必要があります。

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
