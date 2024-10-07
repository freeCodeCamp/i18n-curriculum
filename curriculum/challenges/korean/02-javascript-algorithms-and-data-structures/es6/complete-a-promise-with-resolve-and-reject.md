---
id: 5cdafbc32913098997531680
title: resolve와 reject로 프로미스 완료하기
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

위 예시는 이 함수들의 인자로 문자열을 사용하지만 인자는 어떤 것이든 상관없습니다. 많은 경우에 웹사이트나 다른 곳에 사용할 데이터는 객체일 수 있습니다.

# --instructions--

성공과 실패를 처리하는 프로미스를 생성하시오. `responseFromServer`가 `true`라면 프로미스를 성공적으로 완료시키기 위해 `resolve` 메소드를 호출하시오. `We got the data` 라는 문자열을 `resolve`에 전달하시오. `responseFromServer`가 `false`라면 `reject` 메소드를 사용하고 문자열 `Data not received`를 해당 메소드에 전달하시오.

# --hints--

`resolve`는 `if` 조건이 `true`일 때 예상 문자열 값과 함께 호출되어야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

`reject`는 `if` 조건이 `false`일 때 예상 문자열 값과 함께 호출되어야 합니다.

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
