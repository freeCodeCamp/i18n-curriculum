---
id: 5679ceb97cbaa8c51670a16b
title: 함수에서 불리언 값 반환하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cp62qAQ'
forumTopicId: 18273
dashedName: returning-boolean-values-from-functions
---

# --description--

You may recall from <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/comparison-with-the-equality-operator" target="_blank" rel="noopener noreferrer nofollow">Comparison with the Equality Operator</a> that all comparison operators return a boolean `true` or `false` value.

종종 다음과 같이 비교를 하기 위해 `if/else`를 사용합니다:

```js
function isEqual(a, b) {
  if (a === b) {
    return true;
  } else {
    return false;
  }
}
```

하지만 이를 위한 더 좋은 방법이 있습니다. `===`가 `true` 혹은 `false`을 반환하기 때문에 해당 비교의 결과를 반환할 수 있습니다:

```js
function isEqual(a, b) {
  return a === b;
}
```

# --instructions--

`if/else`문을 제거하도록 함수 `isLess`를 수정하시오.

# --hints--

`isLess(10, 15)`는 `true`를 반환해야 합니다

```js
assert(isLess(10, 15) === true);
```

`isLess(15, 10)`는 `false`를 반환해야 합니다

```js
assert(isLess(15, 10) === false);
```

`if` 나 `else`문을 사용하지 않아야 합니다.

```js
assert(!/if|else/g.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function isLess(a, b) {
  // Only change code below this line
  if (a < b) {
    return true;
  } else {
    return false;
  }
  // Only change code above this line
}

isLess(10, 15);
```

# --solutions--

```js
function isLess(a, b) {
  return a < b;
}
```
