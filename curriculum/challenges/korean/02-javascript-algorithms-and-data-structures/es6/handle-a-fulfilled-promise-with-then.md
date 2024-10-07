---
id: 5cdafbd72913098997531681
title: 이행된 프로미스를 then으로 처리하기
challengeType: 1
forumTopicId: 301203
dashedName: handle-a-fulfilled-promise-with-then
---

# --description--

Promises are most useful when you have a process that takes an unknown amount of time in your code (i.e. something asynchronous), often a server request. When you make a server request it takes some amount of time, and after it completes you usually want to do something with the response from the server. This can be achieved by using the `then` method.

```js
Promise.prototype.then(onFulfilled, onRejected)
```

`then` 메소드는 프로미스가 완료되었을 때, 즉 이행되거나 거부될 때 콜백 함수를 예약합니다. `onFulfilled`와 `onRejected` 핸들러 중 하는 현재 프로미스의 이행 혹은 거부를 처리하기 위해 실행될 것입니다. 프로미스가 `resolve`과 함께 이행될 때, `onFulfilled` 핸들러가 호출됩니다.

```js
myPromise.then(result => {

});
```

`result`는 `resolve` 메소드에 주어진 인자로부터 얻습니다.

# --instructions--

프로미스에 `then`을 추가하시오. `result`을 콜백 함수의 파라미터로 사용하여 `result`을 콘솔에 출력하시오.

# --hints--

프로미스에 `then` 메소드를 호출해야 합니다.

```js
assert(
  __helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/(makeServerRequest|\))\.then\(/g)
);
```

`then` 메소드는 `result`을 파라미터로 가지는 콜백 함수를 가져야 합니다.

```js
assert(resultIsParameter);
```

`result`를 콘솔에 출력해야 합니다.

```js
assert(
  resultIsParameter &&
    __helpers
      .removeWhiteSpace(__helpers.removeJSComments(code))
      .match(/\.then\(.*?result.*?console.log\(result\).*?\)/)
);
```

# --seed--

## --after-user-code--

```js
const resultIsParameter = /\.then\((function\(result\){|result|\(result\)=>)/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code)));
```

## --seed-contents--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer is set to true to represent a successful response from a server
  let responseFromServer = true;

  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }
});
```

# --solutions--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer is set to true to represent a successful response from a server
  let responseFromServer = true;

  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }
});

makeServerRequest.then(result => {
  console.log(result);
});
```
