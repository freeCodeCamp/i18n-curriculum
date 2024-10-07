---
id: 5cdafbb0291309899753167f
title: 创建一个 JavaScript Promise
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

创建一个名为 `makeServerRequest` 的 promise。 给构造器函数传入 `resolve` 和 `reject` 两个参数。

# --hints--

应该给名为 `makeServerRequest` 的变量指定一个 promise。

```js
assert(makeServerRequest instanceof Promise);
```

promise 应该接收一个函数做为参数，该函数应该包含 `resolve` 和 `reject` 两个参数。

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
