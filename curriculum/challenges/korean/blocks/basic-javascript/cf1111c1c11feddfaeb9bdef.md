---
id: cf1111c1c11feddfaeb9bdef
title: 자바스크립트로 무작위 분수 생성하기
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

Random numbers are useful for creating random behavior.

자바스크립트자바스크립트에는 `0` (포함)부터 `1` (미포함) 사이의 무작위 십진수를 생성하는 `Math.random()` 함수가 있습니다. 따라서 `Math.random()`은 `0`을 반환할 수 있지만 `1`은 반환하지 않습니다.

**참고:** <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">할당 연산자를 사용하여 값 저장하기</a>와 같이, 모든 함수 호출은 `return`이 실행되기 전에 해결되므로, 우리는 `Math.random()` 함수의 값을 `return`할 수 있습니다.

# --instructions--

`randomFraction`을 `0`을 반환하는 대신 무작위 숫자를 반환하도록 변경하십시오.

# --hints--

`randomFraction`은 무작위 숫자를 반환해야 합니다.

```js
assert(typeof randomFraction() === 'number');
```

`randomFraction`에 의해 반환된 숫자는 십진수여야 합니다.

```js
assert((randomFraction() + '').match(/\./g));
```

무작위 십진수를 생성하기 위해 `Math.random`을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --after-user-code--

```js
(function(){return randomFraction();})();
```

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
