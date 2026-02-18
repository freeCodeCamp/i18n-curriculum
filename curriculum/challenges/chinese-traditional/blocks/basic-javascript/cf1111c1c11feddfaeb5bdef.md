---
id: cf1111c1c11feddfaeb5bdef
title: 使用 JavaScript 迴圈進行迭代
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

你可以使用迴圈多次執行相同的程式碼。

JavaScript 最常見的迴圈型別稱為 `for` 迴圈，因為它會執行特定次數。

迴圈是用三個以分號分隔的選用表達式宣告的：

`for (a; b; c)`，其中 `a` 是初始化述語，`b` 是條件述語，`c` 是最終表達式。

初始化述語只會在迴圈開始前執行一次。它通常用來定義和設定你的迴圈變數。

條件述語會在每次迴圈開始時被評估，並且只要評估結果為 `true` 就會繼續執行。當條件在迴圈開始時為 `false`，迴圈將停止執行。這表示如果條件一開始就是 false，你的迴圈將永遠不會執行。

最終的表達式會在每次迴圈執行結束時執行，且在下一次條件檢查之前，通常用於遞增或遞減你的迴圈計數器。

在以下範例中，我們以 `i = 0` 初始化，並在條件 `i < 5` 為真時進行迭代。我們將在每次迴圈迭代中以 `i++` 作為最後的表達式，將 `i` 增加 `1`。

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray` 現在將具有值 `[0, 1, 2, 3, 4]`。

# --instructions--

使用 `for` 迴圈將值 1 到 5 推入 `myArray`。

# --hints--

你應該為此使用 `for` 迴圈。

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray` 應該與 `[1, 2, 3, 4, 5]` 相等。

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
```

# --seed--

## --after-user-code--

```js
if (typeof myArray !== "undefined"){(function(){return myArray;})();}
```

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
