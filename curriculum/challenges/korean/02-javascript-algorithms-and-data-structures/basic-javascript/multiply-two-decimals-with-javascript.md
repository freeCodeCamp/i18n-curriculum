---
id: bd7993c9c69feddfaeb7bdef
title: JavaScript에서 2개의 실수를 곱하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/ce2GeHq'
forumTopicId: 301173
dashedName: multiply-two-decimals-with-javascript
---

# --description--

자바스크립트에서 실수의 계산도 정수와 동일하게 진행합니다.

자, 2개의 실수를 곱해서 값을 계산해 봅시다.

# --instructions--

`0.0`을 변경해서, 값이 `5.0`과 동일하게 되도록 하세요.

# --hints--

변수 `product`는 `5.0`과 동일해야 합니다.

```js
assert(product === 5.0);
```

당신은 `*` 연산자를 사용해야 합니다.

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(y){return 'product = '+y;})(product);
```

## --seed-contents--

```js
const product = 2.0 * 0.0;
```

# --solutions--

```js
const product = 2.0 * 2.5;
```
