---
id: 56533eb9ac21ba0edf2244d3
title: 엄격한 부등호 연산자로 비교하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cKekkUy'
forumTopicId: 16791
dashedName: comparison-with-the-strict-inequality-operator
---

# --description--

엄격한 부등호 연산자(`!==`) 는 일치 연산자와 반대입니다. 이는 "엄격하게 같지 않다"는 것을 의미하며, 일치 연산자에서 `true`를 반환하는 경우에는 `false`를 반환하고, 그 반대의 경우에는 *true*을 반환합니다. 엄격한 부등호 연산자는 비교 시 데이터 타입 변환을 수행하지 않습니다.

**예시**

```js
3 !==  3  // false
3 !== '3' // true
4 !==  3  // true
```

# --instructions--

`if`문에서 엄격한 부등호 연산자를 사용하여, `val`이 엄격하게 `17`이라는 값을 가지지 않을 때, 주어진 함수가 `Not Equal`이라는 문자열을 반환하도록 만들어주세요

# --hints--

`testStrictNotEqual(17)`은 `Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrictNotEqual(17) === 'Equal');
```

`testStrictNotEqual("17")`은 `Not Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrictNotEqual('17') === 'Not Equal');
```

`testStrictNotEqual(12)`은 `Not Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrictNotEqual(12) === 'Not Equal');
```

`testStrictNotEqual("bob")`은 `Not Equal`이라는 문자열을 반환해야 합니다.

```js
assert(testStrictNotEqual('bob') === 'Not Equal');
```

`!==` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/(val\s*!==\s*\d+)|(\d+\s*!==\s*val)/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function testStrictNotEqual(val) {
  if (val) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

testStrictNotEqual(10);
```

# --solutions--

```js
function testStrictNotEqual(val) {
  if (val !== 17) {
    return "Not Equal";
  }
  return "Equal";
}
```
