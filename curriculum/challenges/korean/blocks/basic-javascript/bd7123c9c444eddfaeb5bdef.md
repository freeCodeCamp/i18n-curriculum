---
id: bd7123c9c444eddfaeb5bdef
title: 문자열 변수 선언하기
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

이전에 변수를 선언할 때 다음 코드를 사용했습니다:

```js
var myName;
```

하지만 문자열 변수를 이렇게 선언할 수도 있습니다:

```js
var myName = "your name";
```

`"your name"`는 <dfn>문자열</dfn> <dfn>리터럴</dfn>이라고 합니다. 문자열 리터럴, 즉 문자열은 작은따옴표나 큰따옴표로 둘러싸인 0개 이상의 문자들로 이루어진 연속입니다.

# --instructions--

두 개의 새로운 문자열 변수를 만드세요: `myFirstName`과 `myLastName`를 각각 이름과 성의 값으로 할당하세요.

# --hints--

`myFirstName`는 최소 한 글자 이상의 문자열이어야 합니다.

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName`는 최소 한 글자 이상의 문자열이어야 합니다.

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
