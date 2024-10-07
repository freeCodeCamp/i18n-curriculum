---
id: 5cdafbb0291309899753167f
title: 創建一個 JavaScript Promise
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

創建一個名爲 `makeServerRequest` 的 promise。 給構造器函數傳入 `resolve` 和 `reject` 兩個參數。

# --hints--

應該給名爲 `makeServerRequest` 的變量指定一個 promise。

```js
assert(makeServerRequest instanceof Promise);
```

promise 應該接收一個函數做爲參數，該函數應該包含 `resolve` 和 `reject` 兩個參數。

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
