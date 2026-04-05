---
id: cf1111c1c12feddfaeb2bdef
title: 범위 내에서 무작위 정수 생성
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

0부터 주어진 숫자까지 범위 내에서 무작위 정수를 생성할 수 있습니다. 이 범위에 대해 다른 최솟값을 선택할 수도 있습니다.

최솟값은 `min`로, 최댓값은 `max`로 지정하세요.

이 공식은 `min`부터 `max`까지 범위 내의 무작위 정수를 제공합니다. 잠시 시간을 내어 이 코드가 무엇을 하는지 이해해 보세요:

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

`randomRange`라는 함수를 만드세요. 이 함수는 `myMin`와 `myMax` 범위를 받아 `myMin` 이상이고 `myMax` 이하인 무작위 정수를 반환해야 합니다.

# --hints--

`randomRange`가 생성할 수 있는 가장 낮은 무작위 숫자는 최솟값인 `myMin`와 같아야 합니다.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

`randomRange`가 생성할 수 있는 가장 높은 무작위 숫자는 최댓값인 `myMax`와 같아야 합니다.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

`randomRange`가 생성하는 무작위 숫자는 소수가 아닌 정수여야 합니다.

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange`는 `myMax`와 `myMin` 둘 다 사용해서 범위 내 무작위 숫자를 반환해야 합니다.

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
