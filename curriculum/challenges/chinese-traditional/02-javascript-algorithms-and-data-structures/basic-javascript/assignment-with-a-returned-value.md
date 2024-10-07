---
id: 56533eb9ac21ba0edf2244c3
title: 使用返回值賦值
challengeType: 1
videoUrl: 'https://scrimba.com/c/ce2pEtB'
forumTopicId: 16658
dashedName: assignment-with-a-returned-value
---

# --description--

If you'll recall from our discussion about <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Storing Values with the Assignment Operator</a>, everything to the right of the equal sign is resolved before the value is assigned. This means we can take the return value of a function and assign it to a variable.

假設我們有一個預先定義的函數 `sum` ，它將兩個數相加。

```js
ourSum = sum(5, 12);
```

調用 `sum` 函數，參數爲 `5` 和 `12`，生成的返回值爲 `17`。 將返回值賦給 `ourSum` 變量。

# --instructions--

調用 `processArg` 函數，參數爲 `7`，然後把返回的值賦值給變量 `processed`。

# --hints--

`processed` 的值應爲 `2`。

```js
assert(processed === 2);
```

應該將 `processArg` 賦值給 `processed`。

```js
assert(/processed\s*=\s*processArg\(\s*7\s*\)/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){return "processed = " + processed})();
```

## --seed-contents--

```js
// Setup
let processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

// Only change code below this line

```

# --solutions--

```js
var processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

processed = processArg(7);
```
