---
id: cf1111c1c11feddfaeb7bdef
title: 배열 안에 배열 중첩하기
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

배열 안에 다른 배열을 중첩할 수도 있습니다. 아래 예시를 참고하세요:

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

이것을 <dfn>다차원 배열</dfn>이라고도 합니다.

# --instructions--

중첩된 배열 `myArray`을 만드세요.

# --hints--

`myArray`은 배열 안에 적어도 하나 이상의 배열이 중첩되어 있어야 합니다.

```js
assert(Array.isArray(myArray) && myArray.some(Array.isArray));
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = [[1, 2, 3]];
```
