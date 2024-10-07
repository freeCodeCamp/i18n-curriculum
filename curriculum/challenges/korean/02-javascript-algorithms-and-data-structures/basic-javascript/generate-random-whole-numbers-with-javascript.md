---
id: cf1111c1c12feddfaeb1bdef
title: 자바스크립트로 무작위 정수 생성하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cRn6bfr'
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

You can generate random decimal numbers with `Math.random()`, but sometimes you need to generate random whole numbers. The following process will give you a random whole number less than `20`:

1. Use `Math.random()` to generate a random decimal number.
2. 무작위 십진수에 `20`을 곱하시오.
3. 가장 근사한 정수로 내림하도록 `Math.floor()`을 사용하시오.

`Math.floor()`로 내림 시 `Math.random()`가 `1`을 절대 반환할 수 없으므로 `20`을 얻을 수 없다는 것에 주의하시기 바랍니다. 이 과정은 `0`에서 `19` 사이의 무작위 정수를 줄 것입니다.

모두 함께 넣어보면, 코드는 다음과 같을 것입니다:

```js
Math.floor(Math.random() * 20);
```

`Math.random()`을 호출하여 결과에 20을 곱한 다음에 가장 근사한 정수로 내림하도록 `Math.floor()`에 해당 값을 을 전달합니다.

# --instructions--

`0`과 `9` 사이의 무작위 정수를 생성하고 반환하도록 이 방법을 사용하시오.

# --hints--

`randomWholeNum`의 결과는 정수이어야 합니다.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

무작위 십진수를 생성하기 위해 `Math.random`을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

`Math.random`의 결과를 0과 9사이의 숫자로 만들도록 10을 곱해야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

해당 숫자의 소숫점을 제거하기 위해 `Math.floor`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --after-user-code--

```js
(function(){return randomWholeNum();})();
```

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
