---
id: cf1391c1c11feddfaeb4bdef
title: 자바스크립트에서 소수 생성하기
challengeType: 1
forumTopicId: 16826
dashedName: create-decimal-numbers-with-javascript
---

# --description--

We can store decimal numbers in variables too. Decimal numbers are sometimes referred to as <dfn>floating point</dfn> numbers or <dfn>floats</dfn>.

**Note:** when you compute numbers, they are computed with finite precision. Operations using floating points may lead to different results than the desired outcome. If you are getting one of these results, open a topic on the <a href="https://forum.freecodecamp.org/" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp forum</a>.

# --instructions--

변수 `myDecimal`을 생성해서, 정수 부분과 소수 부분으로 나뉘어진 실수(예를 들면 `5.7`)을 할당해 주세요.

# --hints--

`myDecimal`은 숫자여야 합니다.

```js
assert(typeof myDecimal === 'number');
```

`myDecimal`은 소수점 자리를 가지고 있어야 합니다.

```js
assert(myDecimal % 1 != 0);
```

# --seed--

## --after-user-code--

```js
(function(){if(typeof myDecimal !== "undefined"){return myDecimal;}})();
```

## --seed-contents--

```js
const ourDecimal = 5.7;

// Only change code below this line

```

# --solutions--

```js
const myDecimal = 9.9;
```
