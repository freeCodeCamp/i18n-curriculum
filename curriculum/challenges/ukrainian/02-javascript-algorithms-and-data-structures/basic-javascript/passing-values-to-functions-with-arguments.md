---
id: 56533eb9ac21ba0edf2244bd
title: Передача значень до функцій за допомогою аргументів
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy8rahW'
forumTopicId: 18254
dashedName: passing-values-to-functions-with-arguments
---

# --description--

<dfn>Parameters</dfn> are variables that act as placeholders for the values that are to be input to a function when it is called. When a function is defined, it is typically defined along with one or more parameters. The actual values that are input (or <dfn>"passed"</dfn>) into a function when it is called are known as <dfn>arguments</dfn>.

Ось функція з двома параметрами, `param1` та `param2`:

```js
function testFun(param1, param2) {
  console.log(param1, param2);
}
```

Потім ми можемо викликати `testFun`, ось так: `testFun("Hello", "World");`. Ми передали два рядкові аргументи: `Hello` та `World`. Всередині функції `param1` дорівнюватиме рядку `Hello`, а `param2` дорівнюватиме рядку `World`. Зверніть увагу на те, що ви можете викликати `testFun` знову, використовуючи інші аргументи та параметри, які приймуть значення нових аргументів.

# --instructions--

<ol><li>Create a function called <code>functionWithArgs</code> that accepts two arguments and outputs their sum to the dev console.</li><li>Викличте функцію з двома числами як аргументи.</li></ol>

# --hints--

`functionWithArgs` має бути функцією.

```js
assert(typeof functionWithArgs === 'function');
```

`functionWithArgs(1,2)` повинна вивести `3`.

```js
if (typeof functionWithArgs === 'function') {
  capture();
  functionWithArgs(1, 2);
  uncapture();
}
assert(logOutput == 3);
```

`functionWithArgs(7,9)` повинна вивести `16`.

```js
if (typeof functionWithArgs === 'function') {
  capture();
  functionWithArgs(7, 9);
  uncapture();
}
assert(logOutput == 16);
```

Ви повинні викликати `functionWithArgs` з двома числами після того, як визначите її.

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
