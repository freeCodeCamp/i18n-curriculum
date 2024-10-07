---
id: 587d7b7e367417b2b2512b24
title: 조건부 (삼항) 연산자 사용하기
challengeType: 1
forumTopicId: 301181
dashedName: use-the-conditional-ternary-operator
---

# --description--

The <dfn>conditional operator</dfn>, also called the <dfn>ternary operator</dfn>, can be used as a one line if-else expression.

The syntax is `a ? b : c`, where `a` is the condition, `b` is the code to run when the condition returns `true`, and `c` is the code to run when the condition returns `false`.

다음 함수는 조건을 확인하기 위해 `if/else`문을 사용합니다.

```js
function findGreater(a, b) {
  if(a > b) {
    return "a is greater";
  }
  else {
    return "b is greater or equal";
  }
}
```

이 함수는 조건부 연산자를 사용하여 다시 작성할 수 있습니다:

```js
function findGreater(a, b) {
  return a > b ? "a is greater" : "b is greater or equal";
}
```

# --instructions--

두 숫자가 같은지 여부를 확인하기 위해 `checkEqual` 함수 안에 조건부 연산자를 사용하시오. 함수는 문자열 `Equal` 혹은 `Not Equal`을 반환해야 합니다.

# --hints--

`checkEqual`는 조건부 연산자를 사용해야 합니다

```js
assert(/.+?\s*?\?\s*?.+?\s*?:\s*?.+?/.test(__helpers.removeJSComments(code)));
```

`checkEqual(1, 2)`는 문자열 `Not Equal`을 반환해야 합니다

```js
assert(checkEqual(1, 2) === 'Not Equal');
```

`checkEqual(1, 1)`는 문자열 `Equal`을 반환해야 합니다

```js
assert(checkEqual(1, 1) === 'Equal');
```

`checkEqual(1, -1)`는 문자열 `Not Equal`을 반환해야 합니다

```js
assert(checkEqual(1, -1) === 'Not Equal');
```

# --seed--

## --seed-contents--

```js
function checkEqual(a, b) {

}

checkEqual(1, 2);
```

# --solutions--

```js
function checkEqual(a, b) {
  return a === b ? "Equal" : "Not Equal";
}
```
