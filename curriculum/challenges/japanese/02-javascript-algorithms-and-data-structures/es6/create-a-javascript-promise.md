---
id: 5cdafbb0291309899753167f
title: JavaScript のプロミスを作成する
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

`makeServerRequest` という新しいプロミスを作成してください。 `resolve` と `reject` のパラメーターを持つ関数をコンストラクターに渡してください。

# --hints--

`makeServerRequest` という名前の宣言された変数に、プロミスを割り当てる必要があります。

```js
assert(makeServerRequest instanceof Promise);
```

プロミスには、`resolve` と `reject` をパラメーターとして持つ関数を渡す必要があります。

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
