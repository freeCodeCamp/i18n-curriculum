---
id: cf1111c1c12feddfaeb2bdef
title: 범위 내에서 무작위 정수 생성하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cm83yu6'
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

You can generate a random whole number in the range from zero to a given number. You can also pick a different lower number for this range.

최솟값 `min`과 최댓값 `max`을 호출할 것입니다.

이 공식은 `min`과 `max` 범위 내에 있는 무작위 정수를 줄 것입니다. 이 코드가 어떤 동작을 하는지 읽고 생각해보시기 바랍니다.

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

범위 `myMin`과 `myMax`를 전달받고 `myMin`보다 크거나 같고 `myMax`보다 작거나 같은 무작위 정수를 반환하는 `randomRange`라는 함수를 생성하시오.

# --hints--

`randomRange`의해 생성되는 가장 작은 무작위 숫자는 최소값인 `myMin`과 같아야 합니다.

```js
assert(calcMin === 5);
```

`randomRange`에 의해 생성되는 가장 큰 무작위 숫자는 최대값인 `myMax`과 같아야 합니다.

```js
assert(calcMax === 15);
```

`randomRange`의해 생성되는 무작위 숫자는 정수이어야 하며 소수가 아니어야 합니다.

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange`는 `myMax`와 `myMin`를 사용하며 그 범위 내에 있는 무작위 수를 반환해야 합니다.

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
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
var calcMin = 100;
var calcMax = -100;
for(var i = 0; i < 100; i++) {
  var result = randomRange(5,15);
  calcMin = Math.min(calcMin, result);
  calcMax = Math.max(calcMax, result);
}
(function(){
  if(typeof myRandom === 'number') {
    return "myRandom = " + myRandom;
  } else {
    return "myRandom undefined";
  }
})()
```

## --seed-contents--

```js
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
