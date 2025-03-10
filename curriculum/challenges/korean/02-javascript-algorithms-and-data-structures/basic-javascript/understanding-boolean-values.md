---
id: bd7123c9c441eddfaeb5bdef
title: 불리언 값 이해하기
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**Note:** 불리언 값들은 따옴표와 쓰이지 않습니다. 문자열 `"true"`와 `"false"`는 불리언이 아니고, JavaScript에서 특별한 의미를 가지지 않습니다.

# --instructions--

`false`대신 `true`를 반환하도록 `welcomeToBooleans` 함수를 고치세요.

# --hints--

`welcomeToBooleans()`함수는 불리언값(`true`나 `false`) 을 반환해야 합니다.

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()`는 `true`를 반환해야 합니다.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --after-user-code--

```js
welcomeToBooleans();
```

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
