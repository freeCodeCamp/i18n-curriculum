---
id: 56533eb9ac21ba0edf2244d1
title: 일치 연산자로 비교하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy87atr'
forumTopicId: 16790
dashedName: comparison-with-the-strict-equality-operator
---

# --description--

Strict equality (`===`) is the counterpart to the equality operator (`==`). However, unlike the equality operator, which attempts to convert both values being compared to a common type, the strict equality operator does not perform a type conversion.

일치 연산자를 사용하면, 비교하려는 두 값의 타입이 다를 경우 이를 다른 값으로 간주해 false를 반환합니다.

**예시**

```js
3 ===  3  // true
3 === '3' // false
```

두 번째 예시에서, `3`은 `Number`타입이고 `'3'`은 `String` 타입입니다.

# --instructions--

`if`문에서 동등 연산자를 사용하여, `val`이 엄격하게 `7`이라는 값을 가질 때 주어진 함수가 `Equal`이라는 문자열을 반환하도록 만들어주세요.

# --hints--

`testStrict(10)`은 `Not Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrict(10) === 'Not Equal');
```

`testStrict(7)`은 `Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrict(7) === 'Equal');
```

`testStrict("7")`은 `Not Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrict('7') === 'Not Equal');
```

`===` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/(val\s*===\s*\d+)|(\d+\s*===\s*val)/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function testStrict(val) {
  if (val) { // Change this line
    return "Equal";
  }
  return "Not Equal";
}

testStrict(10);
```

# --solutions--

```js
function testStrict(val) {
  if (val === 7) {
    return "Equal";
  }
  return "Not Equal";
}
```
