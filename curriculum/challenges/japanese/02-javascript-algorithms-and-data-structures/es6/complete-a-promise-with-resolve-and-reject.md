---
id: 5cdafbc32913098997531680
title: resolve と reject を使用してプロミスを完了する
challengeType: 1
forumTopicId: 301196
dashedName: complete-a-promise-with-resolve-and-reject
---

# --description--

A promise has three states: `pending`, `fulfilled`, and `rejected`. The promise you created in the last challenge is forever stuck in the `pending` state because you did not add a way to complete the promise. The `resolve` and `reject` parameters given to the promise argument are used to do this. `resolve` is used when you want your promise to succeed, and `reject` is used when you want it to fail. These are methods that take an argument, as seen below.

```js
const myPromise = new Promise((resolve, reject) => {
  if(condition here) {
    resolve("Promise was fulfilled");
  } else {
    reject("Promise was rejected");
  }
});
```

上記の例では、これらの関数の引数として文字列を使用していますが、実際には何でも使用できます。 多くの場合はオブジェクトで、そこからウェブサイトなどに設定するデータを取得して使用します。

# --instructions--

プロミスを使用して成功と失敗を処理してください。 `responseFromServer` が `true` の場合は、`resolve` メソッドを呼び出してプロミスを成功として完了してください。 `resolve`には、`We got the data` という値の文字列を渡します。 `responseFromServer` が `false` の場合は、代わりに `reject` メソッドを使用して文字列 `Data not received` を渡してください。

# --hints--

`if` 条件が `true` の場合は、必要な文字列とともに `resolve` を呼び出す必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

`if` 条件が `false` の場合は、必要な文字列とともに `reject` を呼び出す必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(/}\s*else\s*{\s*reject\s*\(\s*('|"|`)Data not received\1\s*\)(\s*|\s*;\s*)}/g)
);
```

# --seed--

## --seed-contents--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    // Change this line
  } else {  
    // Change this line
  }
});
```

# --solutions--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }
});
```
