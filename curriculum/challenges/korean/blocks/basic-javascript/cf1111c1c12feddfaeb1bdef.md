---
id: cf1111c1c12feddfaeb1bdef
title: JavaScript로 무작위 정수 생성하기
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

`Math.random()`으로 무작위 소수를 생성할 수 있지만, 때로는 무작위 정수를 생성해야 할 때가 있습니다. 다음 과정은 `20`보다 작은 무작위 정수를 생성합니다:

1. `Math.random()`를 사용해 무작위 소수를 생성하세요.
2. 그 무작위 소수에 `20`을 곱하세요.
3. `Math.floor()`를 사용해 이 숫자를 가장 가까운 정수로 내림하세요.

`Math.random()`는 절대 `1`를 반환하지 못하므로, `20`로 내림하기 때문에 실제로 `Math.floor()`를 얻는 것은 불가능하다는 점을 기억하세요. 이 과정은 `0`부터 `19`까지 범위 내의 무작위 정수를 생성합니다.

모든 과정을 합치면, 코드는 다음과 같습니다:

```js
Math.floor(Math.random() * 20);
```

`Math.random()`를 호출하고, 결과에 20을 곱한 뒤, 그 값을 `Math.floor()`에 전달해 가장 가까운 정수로 내림합니다.

# --instructions--

이 기법을 사용해 `0`부터 `9`까지 범위 내의 무작위 정수를 생성하고 반환하세요.

# --hints--

`randomWholeNum`의 결과는 정수여야 합니다.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

무작위 숫자를 생성하려면 `Math.random`를 사용하세요.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

`Math.random`의 결과에 10을 곱해 0부터 9까지 범위의 숫자를 만드세요.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

숫자의 소수 부분을 제거하려면 `Math.floor`를 사용하세요.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

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
