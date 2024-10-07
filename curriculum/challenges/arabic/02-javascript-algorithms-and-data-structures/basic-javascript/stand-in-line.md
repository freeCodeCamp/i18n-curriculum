---
id: 56533eb9ac21ba0edf2244c6
title: قف في الصف
challengeType: 1
videoUrl: 'https://scrimba.com/c/ca8Q8tP'
forumTopicId: 18307
dashedName: stand-in-line
---

# --description--

In Computer Science a <dfn>queue</dfn> is an abstract <dfn>Data Structure</dfn> where items are kept in order. New items can be added at the back of the queue and old items are taken off from the front of the queue.

# --instructions--

اكتب الوظيفة `nextInLine` و التي تأخذ القائمة الآتية (`arr`) ورَقْم (`item`) كمعطيات.

أضف الرَقْم إلى نهاية القائمة، ثم أزل العنصر الأول من القائمة.

يجب أن تقوم وظيفة `nextInLine` بإرجاع العنصر الذي تمت إزالته.

# --hints--

يجب أن ينتج `nextInLine([], 5)` رَقْم.

```js
assert.isNumber(nextInLine([], 5));
```

يجب أن ينتج `nextInLine([], 1)` رَقْم `1`

```js
assert(nextInLine([], 1) === 1);
```

يجب أن ينتج `nextInLine([2], 1)` رَقْم `2`

```js
assert(nextInLine([2], 1) === 2);
```

يجب أن ينتج `nextInLine([5,6,7,8,9], 1)` رَقْم `5`

```js
assert(nextInLine([5, 6, 7, 8, 9], 1) === 5);
```

بعد `nextInLine(testArr, 10)`, يجب أن يتكون `testArr[4]` من `10`

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
