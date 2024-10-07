---
id: 5cdafbb0291309899753167f
title: 자바스크립트 프로미스 생성하기
challengeType: 1
forumTopicId: 301197
dashedName: create-a-javascript-promise
---

# --description--

A promise in JavaScript is exactly what it sounds like - you use it to make a promise to do something, usually asynchronously. When the task completes, you either fulfill your promise or fail to do so. `Promise` is a constructor function, so you need to use the `new` keyword to create one. It takes a function, as its argument, with two parameters - `resolve` and `reject`. These are methods used to determine the outcome of the promise. The syntax looks like this:

```js
const myPromise = new Promise((resolve, reject) => {

});
```

# --instructions--

`makeServerRequest`이라는 새로운 프로미스를 생성하시오. 해당 생성자에 `resolve`와 `reject` 파라미터를 가진 함수를 전달하시오.

# --hints--

프로미스를 `makeServerRequest`라는 이름으로 선언된 변수에 할당해야 합니다.

```js
assert(makeServerRequest instanceof Promise);
```

프로미스는 `resolve`와 `reject`를 파라미터로 가지는 함수를 전달받아야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /Promise\s*\(\s*(function\s*\(\s*resolve\s*,\s*reject\s*\)\s*{|\(\s*resolve\s*,\s*reject\s*\)\s*=>\s*{)[^}]*}/g
  )
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
const makeServerRequest = new Promise((resolve, reject) => {

});
```
