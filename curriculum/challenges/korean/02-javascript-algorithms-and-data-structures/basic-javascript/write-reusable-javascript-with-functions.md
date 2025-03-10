---
id: 56bbb991ad1ed5201cd392cf
title: 함수를 사용해서 재이용 가능한 JavaScript를 작성하기
challengeType: 1
forumTopicId: 18378
dashedName: write-reusable-javascript-with-functions
---

# --description--

In JavaScript, we can divide up our code into reusable parts called <dfn>functions</dfn>.

여기에 함수에 관한 예가 있습니다:

```js
function functionName() {
  console.log("Hello World");
}
```

당신이 이 함수를 이름과 괄호를 붙여서(`functionName();` 처럼) <dfn>부를</dfn> 때마다, 함수는 `Hello World`라는 메시지를 개발 콘솔에 출력할 것입니다. 함수가 불러질 때마다, 중괄호 안에 있는 코드의 부분이 전부 실행될 것입니다.

# --instructions--

<ol>
  <li>
    Create a function called <code>reusableFunction</code> which prints the string <code>Hi World</code> to the dev console.
  </li>
  <li>
    이 함수를 부르세요.
  </li>
</ol>

# --hints--

`reusableFunction`는 함수여야 합니다.

```js
assert(typeof reusableFunction === 'function');
```

만약 `reusableFunction`이 불러지면, `Hi World`를 콘솔에 출력해야 합니다.

```js
assert(testConsole());
```

당신은 `reusableFunction` 를 정의한 후에 불러야 합니다.

```js
const functionStr = reusableFunction && __helpers.removeWhiteSpace(reusableFunction.toString());
const codeWithoutFunction = __helpers.removeWhiteSpace(__helpers.removeJSComments(code)).replace(/reusableFunction\(\)\{/g, '');
assert(/reusableFunction\(\)/.test(codeWithoutFunction));
```

# --seed--

## --after-user-code--

```js

function testConsole() {
  var logOutput = "";
  var originalConsole = console;
  var nativeLog = console.log;
  var hiWorldWasLogged = false;
  console.log = function (message) {
    if(message === 'Hi World')  {
      console.warn(message)
      hiWorldWasLogged = true;
    }
    if(message && message.trim) logOutput = message.trim();
    if(nativeLog.apply) {
      nativeLog.apply(originalConsole, arguments);
    } else {
      var nativeMsg = Array.prototype.slice.apply(arguments).join(' ');
      nativeLog(nativeMsg);
    }
  };
  reusableFunction();
  console.log = nativeLog;
  return hiWorldWasLogged;
}

```

## --seed-contents--

```js

```

# --solutions--

```js
function reusableFunction() {
  console.log("Hi World");
}
reusableFunction();
```
