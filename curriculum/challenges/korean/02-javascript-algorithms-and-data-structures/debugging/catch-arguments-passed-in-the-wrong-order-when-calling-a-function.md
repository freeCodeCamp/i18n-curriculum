---
id: 587d7b85367417b2b2512b3a
title: 함수를 호출할 때 잘못된 순서로 전달된 인자를 찾아내기
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

함수 `raiseToPower`는 밑(base) 을 지수(exponent) 만큼 제곱하는 기능을 합니다. 안타깝게도, 이 함수는 올바르게 호출되지 않았습니다. 코드를 수정하여 `power`의 값이 8이 되도록 하세요.

# --hints--

변수 `power`가 3의 제곱이 아닌 2의 세제곱이 되도록 코드를 수정해야 합니다.

```js
assert(power == 8);
```

`raiseToPower` 함수를 호출할 때 인자를 순서에 맞게 전달해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/raiseToPower\(\s*?base\s*?,\s*?exp\s*?\);/g));
```

# --seed--

## --seed-contents--

```js
function raiseToPower(b, e) {
  return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(exp, base);
console.log(power);
```

# --solutions--

```js
function raiseToPower(b, e) {
 return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(base, exp);
console.log(power);
```
