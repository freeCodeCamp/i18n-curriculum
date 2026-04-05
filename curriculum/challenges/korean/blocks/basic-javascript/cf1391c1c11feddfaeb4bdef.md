---
id: cf1391c1c11feddfaeb4bdef
title: JavaScript로 소수 만들기
challengeType: 1
forumTopicId: 16826
dashedName: create-decimal-numbers-with-javascript
---

# --description--

변수에 소수도 저장할 수 있습니다. 소수는 때때로 <dfn>부동 소수점</dfn> 숫자 또는 <dfn>float</dfn>라고 부릅니다.

**참고:** 숫자를 계산할 때는 유한한 정밀도로 계산됩니다. 부동 소수점을 사용하는 연산은 원하는 결과와 다른 결과를 낼 수 있습니다. 이런 결과가 나오면 <a href="https://forum.freecodecamp.org/" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 포럼</a>에 주제를 올려주세요.

# --instructions--

변수 `myDecimal`를 만들고 소수 부분이 있는 소수 값을 할당하세요(예: `5.7`).

# --hints--

`myDecimal`는 숫자여야 합니다.

```js
assert(typeof myDecimal === 'number');
```

`myDecimal`는 소수점이 있어야 합니다.

```js
assert(myDecimal % 1 != 0);
```

# --seed--

## --seed-contents--

```js
const ourDecimal = 5.7;

// Only change code below this line

```

# --solutions--

```js
const myDecimal = 9.9;
```
