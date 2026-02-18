---
id: cf1111c1c11feddfaeb1bdef
title: 使用 JavaScript While 迴圈進行迭代
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

你可以使用迴圈多次執行相同的程式碼。

我們將學習的第一種迴圈稱為 `while` 迴圈，因為它會在指定條件為真時執行，並在該條件不再為真時停止。

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

在上述程式碼範例中，`while` 迴圈將執行 5 次，並將數字 0 到 4 附加到 `ourArray`。

讓我們嘗試透過將值推入陣列來讓 while 迴圈運作。

# --instructions--

使用 `while` 迴圈將數字 5 到 0（包含）以遞減順序添加到 `myArray`。

# --hints--

你應該為此使用 `while` 迴圈。

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray` 應該與 `[5, 4, 3, 2, 1, 0]` 相等。

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --after-user-code--

```js
if(typeof myArray !== "undefined"){(function(){return myArray;})();}
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
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
