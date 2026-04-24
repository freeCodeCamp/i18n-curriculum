---
id: cf1111c1c11feddfaeb1bdef
title: JavaScriptのWhileループで反復する
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

ループを使うと、同じコードを何度も実行できます。

最初に学ぶループの種類は`while`ループと呼ばれ、指定した条件が真の間は実行され、その条件が偽になるとストップします。

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

上のコード例では、`while`ループが5回実行され、0から4までの数字を`ourArray`に追加します。

whileループを使って、配列に値を追加してみましょう。

# --instructions--

`myArray`に、5から0までの数字を降順で`while`ループを使って追加してください。

# --hints--

ここでは`while`ループを使う必要があります。

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray`は`[5, 4, 3, 2, 1, 0]`と等しくなるはずです。

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
