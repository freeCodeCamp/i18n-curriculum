---
id: 599a789b454f2bbd91a3ff4d
title: 다양한 값 비교 연습하기
challengeType: 1
forumTopicId: 301174
dashedName: practice-comparing-different-values
---

# --description--

In the last two challenges, we learned about the equality operator (`==`) and the strict equality operator (`===`). Let's do a quick review and practice using these operators some more.

비교되는 값의 자료형이 같지 않으면 동등 연산자가 형 변환을 수행하고 값들을 평가합니다. 그러나 엄격한 동등 연산자는 한 자료형을 다른 자료형으로 변환하지 않고 데이터 자료형과 값을 있는 그대로 비교합니다.

**예시**

`3 == '3'`는 JavaScript가 문자열에서 숫자형으로 형 변환을 하기 때문에 `true`를 반환합니다. `3 === '3'`는 자료형이 다르고, 형변환이 실행되지 않기 때문에 `false`를 반환합니다.

**Note:** 자바스크립트에서는 `typeof` 연산자를 다음과 같이 사용하여 값의 자료형이나 값을 결정할 수 있습니다:

```js
typeof 3
typeof '3'
```

`typeof 3`는 `number` 문자열을 반환하고, `typeof '3'`는 `string` 문자열을 반환합니다.

# --instructions--

편집기의 `compareEquality`함수는 두 값을 동등 연산자를 사용하여 비교합니다. 함수가 값들이 엄격하게 동일한 경우에만 `Equal`문자열을 반환하도록 수정하세요.

# --hints--

`compareEquality(10, "10")`은 문자열 `Not Equal`을 반환해야 합니다.

```js
assert(compareEquality(10, '10') === 'Not Equal');
```

`compareEquality("20", 20)`은 문자열 `Not Equal`을 반환해야 합니다.

```js
assert(compareEquality('20', 20) === 'Not Equal');
```

`===` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/===/g));
```

# --seed--

## --seed-contents--

```js
// Setup
function compareEquality(a, b) {
  if (a == b) { // Change this line
    return "Equal";
  }
  return "Not Equal";
}

compareEquality(10, "10");
```

# --solutions--

```js
function compareEquality(a,b) {
  if (a === b) {
    return "Equal";
  }
  return "Not Equal";
}
```
