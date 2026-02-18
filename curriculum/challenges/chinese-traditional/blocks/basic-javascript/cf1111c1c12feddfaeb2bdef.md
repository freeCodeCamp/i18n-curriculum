---
id: cf1111c1c12feddfaeb2bdef
title: 在範圍內產生隨機整數
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

你可以在從零到指定數字的範圍內產生一個隨機整數。你也可以為此範圍選擇不同的較低數字。

你會將你的最小數字稱為 `min`，最大數字稱為 `max`。

這個公式會在 `min` 到 `max` 的範圍內給出一個隨機整數。花點時間閱讀並嘗試理解這段程式碼的作用：

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

創建一個名為 `randomRange` 的函式（程式），該函式接受一個範圍 `myMin` 和 `myMax`，並傳回一個大於或相等於 `myMin` 且小於或相等於 `myMax` 的隨機整數。

# --hints--

`randomRange` 可以產生的最低隨機數應該要與你的最小數字 `myMin` 相等。

```js
assert(calcMin === 5);
```

`randomRange` 可以產生的最高隨機數應該要與你的最大數字 `myMax` 相等。

```js
assert(calcMax === 15);
```

由 `randomRange` 產生的隨機數應該是整數，而非小數。

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange` 應該同時使用 `myMax` 和 `myMin`，並傳回你範圍內的隨機數。

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

## --after-user-code--

```js
var calcMin = 100;
var calcMax = -100;
for(var i = 0; i < 100; i++) {
  var result = randomRange(5,15);
  calcMin = Math.min(calcMin, result);
  calcMax = Math.max(calcMax, result);
}
(function(){
  if(typeof myRandom === 'number') {
    return "myRandom = " + myRandom;
  } else {
    return "myRandom undefined";
  }
})()
```

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
