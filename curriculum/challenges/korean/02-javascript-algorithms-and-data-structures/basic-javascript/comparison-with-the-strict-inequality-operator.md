---
id: 56533eb9ac21ba0edf2244d3
title: 엄격한 부등호 연산자로 비교하기
challengeType: 1
forumTopicId: 16791
dashedName: comparison-with-the-strict-inequality-operator
---

# --description--

The strict inequality operator (`!==`) is the logical opposite of the strict equality operator. It means "Strictly Not Equal" and returns `false` where strict equality would return `true` and *vice versa*. The strict inequality operator will not convert data types.

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
