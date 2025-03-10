---
id: 56533eb9ac21ba0edf2244d0
title: 등호 연산자로 비교하기
challengeType: 1
forumTopicId: 16784
dashedName: comparison-with-the-equality-operator
---

# --description--

There are many <dfn>comparison operators</dfn> in JavaScript. All of these operators return a boolean `true` or `false` value.

가장 기본적인 연산자는 등호 연산자 `==`입니다. 등호 연산자는 두 값을 비교해서 동일하면 `true`를 반환하고 그렇지 않으면 `false`를 반환합니다. 등호는 할당(`=`)과 다르다는 점을 주의하세요. 할당은 연산자 오른쪽의 값을 왼쪽 변수에 할당합니다.

```js
function equalityTest(myVal) {
  if (myVal == 10) {
    return "Equal";
  }
  return "Not Equal";
}
```

만약 `myVal`이 `10`과 같다면 등호 연산자는 `true`를 반환하므로 중괄호 안의 코드가 실행되고 함수는 `Equal`을 반환할 것입니다. 그렇지 않으면 함수는 `Not Equal`을 반환합니다. 자바스크립트가 두 가지 다른 <dfn>데이터 유형</dfn>(예: `숫자`와 `문자열`)을 비교하려면 한 유형을 다른 유형으로 변환해야 합니다. 이를 형 변환(Type Coercion)이라고 합니다. 한번 변환하고 나면 다음과 같이 용어를 비교할 수 있습니다.

```js
1   ==  1  // true
1   ==  2  // false
1   == '1' // true
"3" ==  3  // true
```

# --instructions--

지시된 줄에 등호 연산자를 추가하여 함수가 `val`이 `12`와 동일한 경우 문자열 `Equal`을 반환하도록 합니다.

# --hints--

`testEqual(10)`은 문자열 `Not Equal`을 반환해야 합니다.

```js
assert(testEqual(10) === 'Not Equal');
```

`testEqual(12)`는 문자열 `Equal`을 반환해야 합니다.

```js
assert(testEqual(12) === 'Equal');
```

`testEqual("12")`는 문자열 `Equal`을 반환해야 합니다.

```js
assert(testEqual('12') === 'Equal');
```

`==` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/==/g) && !__helpers.removeJSComments(code).match(/===/g));
```

# --seed--

## --seed-contents--

```js
// Setup
function testEqual(val) {
  if (val) { // Change this line
    return "Equal";
  }
  return "Not Equal";
}

testEqual(10);
```

# --solutions--

```js
function testEqual(val) {
  if (val == 12) {
    return "Equal";
  }
  return "Not Equal";
}
```
