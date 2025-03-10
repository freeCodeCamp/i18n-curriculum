---
id: bd7123c9c444eddfaeb5bdef
title: 문자열 변수를 선언하기
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

Previously you used the following code to declare a variable:

```js
var myName;
```

그런데, 다음과 같이 문자열 변수를 선언하는 것도 가능합니다.

```js
var myName = "your name";
```

이런 `"your name"` 같은 것을 <dfn>문자열(string)</dfn> <dfn>리터럴(literal)</dfn> 이라고 합니다. 문자열 리터럴(혹은 문자열) 은 작은 따옴표(') 또는 큰 따옴표(") 로 둘러싸인 0개 이상의 문자입니다.

# --instructions--

2개의 새로운 문자열 변수를 만드세요: `myFirstName` 와 `myLastName`, 그리고 당신의 성과 이름을 각각 그들에게 할당하세요.

# --hints--

`myFirstName`는 적어도 하나의 문자를 포함한 한 문자열이어야 합니다.

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

`myLastName`는 적어도 하나의 문자를 포함한 한 문자열이어야 합니다.

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

## --after-user-code--

```js
if(typeof myFirstName !== "undefined" && typeof myLastName !== "undefined"){(function(){return myFirstName + ', ' + myLastName;})();}
```

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
