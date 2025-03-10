---
id: cf1231c1c11feddfaeb5bdef
title: 자바스크립트로 2개의 수치를 곱하기
challengeType: 1
forumTopicId: 18243
dashedName: multiply-two-numbers-with-javascript
---

# --description--

We can also multiply one number by another.

자바스크립트에서는 2개의 수치를 곱하기 할 때 `*` 기호를 사용합니다.

**예:**

```js
const myVar = 13 * 13;
```

`myVar`의 값은 `169`가 될 것입니다.

# --instructions--

`0`을 변경하여, 결과 값이 `80`이 되도록 하세요.

# --hints--

변수 `product`는 값이 80 이어야 합니다.

```js
assert(product === 80);
```

`*` 연산자를 사용해야 합니다.

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'product = '+z;})(product);
```

## --seed-contents--

```js
const product = 8 * 0;
```

# --solutions--

```js
const product = 8 * 10;
```
