---
id: cf1111c1c11feddfaeb9bdef
title: JavaScript로 무작위 분수 생성하기
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

무작위 숫자는 무작위 동작을 만들 때 유용합니다.

JavaScript에는 `Math.random()` 함수가 있어 `0` (포함)과 `1` (미포함) 사이의 무작위 소수를 생성합니다. 따라서 `Math.random()`는 `0`를 반환할 수 있지만 `1`는 절대 반환하지 않습니다.

**참고:** <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">대입 연산자로 값 저장하기</a>와 마찬가지로, 모든 함수 호출은 `return`가 실행되기 전에 해결되므로 `return` 함수의 값을 `Math.random()`할 수 있습니다.

# --instructions--

`randomFraction`를 `0`를 반환하는 대신 무작위 숫자를 반환하도록 변경하세요.

# --hints--

`randomFraction`는 무작위 숫자를 반환해야 합니다.

```js
assert(typeof randomFraction() === 'number');
```

`randomFraction`가 반환하는 숫자는 소수여야 합니다.

```js
assert((randomFraction() + '').match(/\./g));
```

무작위 소수를 생성하려면 `Math.random`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
