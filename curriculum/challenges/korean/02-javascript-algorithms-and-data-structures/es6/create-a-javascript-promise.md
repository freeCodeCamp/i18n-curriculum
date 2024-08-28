---
id: 5cdafbb0291309899753167f
title: 자바스크립트 프로미스 생성하기
challengeType: 1
forumTopicId: 301197
dashedName: create-a-javascript-promise
---

# --description--

자바스크립트에서 프로미스는 정확히 들리는 대로 입니다 - 주로 비동기적으로 어떤 것을 하기 위한 약속(프로미스)을 만들기 위해 사용합니다. 작업이 완료될 때 프로미스가 성공하거나 실패하게 됩니다. `Promise`는 생성자 함수이어서 생성하기 위해서는 `new` 키워드를 사용해야 합니다. 프로미스는 두 가지 파라미터 - `resolve`와 `reject`를 인자로 두는 함수를 필요합니다. 이 두 파라미터는 해당 프로미스의 결과를 결정하기 위해 사용되는 메소드입니다. 구문은 다음과 같습니다.

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
