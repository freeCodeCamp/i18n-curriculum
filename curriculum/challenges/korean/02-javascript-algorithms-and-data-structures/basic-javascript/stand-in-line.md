---
id: 56533eb9ac21ba0edf2244c6
title: 줄 서기
challengeType: 1
forumTopicId: 18307
dashedName: stand-in-line
---

# --description--

In Computer Science a <dfn>queue</dfn> is an abstract <dfn>Data Structure</dfn> where items are kept in order. New items can be added at the back of the queue and old items are taken off from the front of the queue.

# --instructions--

배열 `arr`과 숫자 `item`을 인수로 받는 함수 `nextInLine`을 작성하세요.

이 함수는 배열의 맨 뒤에 주어진 숫자 item를 추가한 후, 배열의 첫 번째 요소를 제거합니다.

`nextInLine` 함수는 제거된 요소를 반환해야 합니다.

# --hints--

`nextInLine([], 5)` 는 숫자를 반환해야 합니다.

```js
assert.isNumber(nextInLine([], 5));
```

`nextInLine([], 1)`는 `1`을 반환해야 합니다.

```js
assert(nextInLine([], 1) === 1);
```

`nextInLine([2], 1)`는 `2`를 반환해야 합니다.

```js
assert(nextInLine([2], 1) === 2);
```

nextInLine([5,6,7,8,9], 1) 는 5를 반환해야 합니다.

```js
assert(nextInLine([5, 6, 7, 8, 9], 1) === 5);
```

`nextInLine(testArr, 10)`를 실행한 후, `testArr[4]`는 `10`이어야 합니다.

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
