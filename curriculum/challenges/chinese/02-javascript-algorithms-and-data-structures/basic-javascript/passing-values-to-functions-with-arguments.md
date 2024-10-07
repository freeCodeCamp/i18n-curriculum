---
id: 56533eb9ac21ba0edf2244bd
title: 将值传递给带有参数的函数
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy8rahW'
forumTopicId: 18254
dashedName: passing-values-to-functions-with-arguments
---

# --description--

<dfn>Parameters</dfn> are variables that act as placeholders for the values that are to be input to a function when it is called. When a function is defined, it is typically defined along with one or more parameters. The actual values that are input (or <dfn>"passed"</dfn>) into a function when it is called are known as <dfn>arguments</dfn>.

这是带有两个参数的函数，`param1` 和 `param2`：

```js
function testFun(param1, param2) {
  console.log(param1, param2);
}
```

然后我们可以调用 `testFun`，就像这样： `testFun("Hello", "World");`。 我们传入了两个字符串参数， `Hello` 和 `World`。 在函数中，`param1` 等于字符串 `Hello` 以及 `param2` 等于字符串 `World`。 请注意，`testFun` 函数可以多次调用，每次调用时传递的参数会决定参数的实际值。

# --instructions--

<ol><li>Create a function called <code>functionWithArgs</code> that accepts two arguments and outputs their sum to the dev console.</li><li>自己指定两个数字作为参数，运行函数 functionWithArgs。</li></ol>

# --hints--

`functionWithArgs` 应该是一个函数。

```js
assert(typeof functionWithArgs === 'function');
```

`functionWithArgs(1,2)` 应该输出 `3`。

```js
if (typeof functionWithArgs === 'function') {
  capture();
  functionWithArgs(1, 2);
  uncapture();
}
assert(logOutput == 3);
```

`functionWithArgs(7,9)` 应该输出 `16`。

```js
if (typeof functionWithArgs === 'function') {
  capture();
  functionWithArgs(7, 9);
  uncapture();
}
assert(logOutput == 16);
```

在定义 `functionWithArgs` 之后记得传入两个数字调用它。

```js
assert(
  /functionWithArgs\([-+]?\d*\.?\d*,[-+]?\d*\.?\d*\)/.test(
    __helpers.removeJSComments(code).replace(/\s/g, '')
  )
);
```

# --seed--

## --before-user-code--

```js
var logOutput = "";
var originalConsole = console
function capture() {
    var nativeLog = console.log;
    console.log = function (message) {
        if(message) logOutput = JSON.stringify(message).trim();
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

if (typeof functionWithArgs !== "function") { 
  (function() { return "functionWithArgs is not defined"; })();
} else {
  (function() { return logOutput || "console.log never called"; })();
}
```

## --seed-contents--

```js

```

# --solutions--

```js
function functionWithArgs(a, b) {
  console.log(a + b);
}
functionWithArgs(10, 5);
```
