---
id: bd7123c9c441eddfaeb5bdef
title: 불리언 값 이해하기
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

또 다른 데이터 유형은 <dfn>불리언</dfn>입니다. 불리언은 두 값 중 하나만 가질 수 있습니다: `true` 또는 `false`. 기본적으로 `true`가 켜짐이고 `false`가 꺼짐인 작은 온오프 스위치와 같습니다. 이 두 상태는 서로 배타적입니다.

**참고:** 불리언 값은 절대 따옴표로 작성하지 않습니다. 문자열 `"true"`와 `"false"`는 불리언이 아니며 JavaScript에서 특별한 의미가 없습니다.

# --instructions--

`welcomeToBooleans` 함수를 수정하여 `true` 대신 `false`을 반환하게 하세요.

# --hints--

`welcomeToBooleans()` 함수는 불리언(`true` 또는 `false`) 값을 반환해야 합니다.

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()`는 `true`을 반환해야 합니다.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

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
