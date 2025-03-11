---
id: 56533eb9ac21ba0edf2244c6
title: Станьте в чергу
challengeType: 1
forumTopicId: 18307
dashedName: stand-in-line
---

# --description--

In Computer Science a <dfn>queue</dfn> is an abstract <dfn>Data Structure</dfn> where items are kept in order. New items can be added at the back of the queue and old items are taken off from the front of the queue.

# --instructions--

Напишіть функцію `nextInLine`, яка приймає масив (`arr`) та число (`item`) як аргументи.

Додайте число до кінця масиву, а тоді видаліть перший елемент з масиву.

Функція `nextInLine` має повертати видалений елемент.

# --hints--

`nextInLine([], 5)` має повертати число.

```js
assert.isNumber(nextInLine([], 5));
```

`nextInLine([], 1)` має повертати `1`

```js
assert(nextInLine([], 1) === 1);
```

`nextInLine([2], 1)` має повертати `2`

```js
assert(nextInLine([2], 1) === 2);
```

`nextInLine([5,6,7,8,9], 1)` має повертати `5`

```js
assert(nextInLine([5, 6, 7, 8, 9], 1) === 5);
```

Після `nextInLine(testArr, 10)`, `testArr[4]` повинен бути `10`

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
