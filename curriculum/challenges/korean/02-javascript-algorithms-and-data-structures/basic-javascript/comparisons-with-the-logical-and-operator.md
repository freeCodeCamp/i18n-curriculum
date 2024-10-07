---
id: 56533eb9ac21ba0edf2244d8
title: 논리곱 연산자로 비교하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cvbRVtr'
forumTopicId: 16799
dashedName: comparisons-with-the-logical-and-operator
---

# --description--

Sometimes you will need to test more than one thing at a time. The <dfn>logical and</dfn> operator (`&&`) returns `true` if and only if the <dfn>operands</dfn> to the left and right of it are true.

`if`문을 다른 `if` 안에 중첩하여 동일한 효과를 얻을 수 있습니다.

```js
if (num > 5) {
  if (num < 10) {
    return "Yes";
  }
}
return "No";
```

이 코드는 `num`이 `5`보다 크고 `10`보다 작을 때 `Yes`를 반환합니다. <dfn>논리곱</dfn> 연산자를 사용하여 동일한 로직을 작성할 수 있습니다.

```js
if (num > 5 && num < 10) {
  return "Yes";
}
return "No";
```

# --instructions--

두개의 if문을 `&&`연산자를 사용하여 `val`가 `50`보다 작거나 같고, `25`보다 크거나 같다면 `Yes` 문자열을 반환하는 하나의 구문으로 치환하세요. 해당하지 않는다면, `No` 문자열을 반환합니다.

# --hints--

`&&` 연산자를 한번만 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/&&/g).length === 1);
```

`if`문을 한번만 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/if/g).length === 1);
```

`testLogicalAnd(0)`는 `No` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(0) === 'No');
```

`testLogicalAnd(24)`는 `No` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(24) === 'No');
```

`testLogicalAnd(25)`는 `Yes` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(25) === 'Yes');
```

`testLogicalAnd(30)`는 `Yes` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(30) === 'Yes');
```

`testLogicalAnd(50)`는 `Yes` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(50) === 'Yes');
```

`testLogicalAnd(51)`는 `No` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(51) === 'No');
```

`testLogicalAnd(75)`는 `No` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(75) === 'No');
```

`testLogicalAnd(80)`는 `No` 문자열을 반환해야 합니다.

```js
assert(testLogicalAnd(80) === 'No');
```

# --seed--

## --seed-contents--

```js
function testLogicalAnd(val) {
  // Only change code below this line

  if (val) {
    if (val) {
      return "Yes";
    }
  }

  // Only change code above this line
  return "No";
}

testLogicalAnd(10);
```

# --solutions--

```js
function testLogicalAnd(val) {
  if (val >= 25 && val <= 50) {
    return "Yes";
  }
  return "No";
}
```
