---
id: a6e40f1041b06c996f7b2406
title: 파인더 키퍼(Finders Keepers)
challengeType: 1
forumTopicId: 16016
dashedName: finders-keepers
---

# --description--

배열 `arr`에서 '참값 테스트'(truth test)를 통과하는 첫 번째 요소를 반환하는 함수를 작성하세요. '참값 테스트'는 주어진 요소 `x`에 대해, `func(x)`가 `true`면 통과한다는 것을 의미합니다. 어떤 요소도 이 테스트를 통과하지 못한다면 `undefined`를 반환하세요.

# --hints--

`findElement([1, 3, 5, 8, 9, 10], function(num) { return num % 2 === 0; })`는 `8`을 반환해야 합니다.

```js
assert.strictEqual(
  findElement([1, 3, 5, 8, 9, 10], function (num) {
    return num % 2 === 0;
  }),
  8
);
```

`findElement([1, 3, 5, 9], function(num) { return num % 2 === 0; })`는 `undefined`를 반환해야 합니다.

```js
assert.strictEqual(
  findElement([1, 3, 5, 9], function (num) {
    return num % 2 === 0;
  }),
  undefined
);
```

# --seed--

## --seed-contents--

```js
function findElement(arr, func) {
  let num = 0;
  return num;
}

findElement([1, 2, 3, 4], num => num % 2 === 0);
```

# --solutions--

```js
function findElement(arr, func) {
  return arr.filter(func)[0];
}

findElement([1, 2, 3, 4], num => num % 2 === 0);
```
