---
id: 56533eb9ac21ba0edf2244c6
title: 排隊
challengeType: 1
forumTopicId: 18307
dashedName: stand-in-line
---

# --description--

In Computer Science a <dfn>queue</dfn> is an abstract <dfn>Data Structure</dfn> where items are kept in order. New items can be added at the back of the queue and old items are taken off from the front of the queue.

# --instructions--

寫一個函數 `nextInLine`，用一個數組（`arr`）和一個數字（`item`）作爲參數。

把數字添加到數組的結尾，然後移出數組的第一個元素。

最後 `nextInLine` 函數應該返回被刪除的元素。

# --hints--

`nextInLine([], 5)` 應該返回一個數字。

```js
assert.isNumber(nextInLine([], 5));
```

`nextInLine([], 1)` 應該返回 `1`

```js
assert(nextInLine([], 1) === 1);
```

`nextInLine([2], 1)` 應該返回 `2`

```js
assert(nextInLine([2], 1) === 2);
```

`nextInLine([5,6,7,8,9], 1)` 應該返回 `5`

```js
assert(nextInLine([5, 6, 7, 8, 9], 1) === 5);
```

在 `nextInLine(testArr, 10)` 執行後 `testArr[4]` 應該是 `10`

```js
nextInLine(testArr, 10);
assert(testArr[4] === 10);
```

# --seed--

## --before-user-code--

```js
var logOutput = [];
var originalConsole = console
function capture() {
    var nativeLog = console.log;
    console.log = function (message) {
        logOutput.push(message);
        if(nativeLog.apply) {
          nativeLog.apply(originalConsole, arguments);
        } else {
          var nativeMsg = Array.prototype.slice.apply(arguments).join(' ');
          nativeLog(nativeMsg);
        }
    };
}

function uncapture() {
  console.log = originalConsole.log;
}

capture();
```

## --after-user-code--

```js
uncapture();
testArr = [1,2,3,4,5];
(function() { return logOutput.join("\n");})();
```

## --seed-contents--

```js
function nextInLine(arr, item) {
  // Only change code below this line

  return item;
  // Only change code above this line
}

// Setup
let testArr = [1, 2, 3, 4, 5];

// Display code
console.log("Before: " + JSON.stringify(testArr));
console.log(nextInLine(testArr, 6));
console.log("After: " + JSON.stringify(testArr));
```

# --solutions--

```js
let testArr = [1, 2, 3, 4, 5];

function nextInLine(arr, item) {
    arr.push(item);
    return arr.shift();
}
```
