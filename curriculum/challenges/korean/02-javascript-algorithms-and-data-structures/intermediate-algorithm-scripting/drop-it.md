---
id: a5deed1811a43193f9f1c841
title: 드롭하세요
challengeType: 1
forumTopicId: 16010
dashedName: drop-it
---

# --description--

배열 `arr`이 주어졌을 때, `func` 함수가 반복되는 요소를 통해 전달되어 `true`를 반환할 때까지 첫 번째 요소(0번 인덱스)부터 시작하여 각 요소를 반복하면서 제거하세요.

그런 다음 조건이 만족되면 나머지 배열을 반환하고, 그렇지 않으면 `arr`는 빈 배열로 반환됩니다.

# --hints--

`dropElements([1, 2, 3, 4], function(n) {return n >= 3;})`는 `[3, 4]`을 반환해야 합니다.

```js
assert.deepEqual(
  dropElements([1, 2, 3, 4], function (n) {
    return n >= 3;
  }),
  [3, 4]
);
```

`dropElements([0, 1, 0, 1], function(n) {return n === 1;})`는 `[1, 0, 1]`을 반환해야 합니다.

```js
assert.deepEqual(
  dropElements([0, 1, 0, 1], function (n) {
    return n === 1;
  }),
  [1, 0, 1]
);
```

`dropElements([1, 2, 3], function(n) {return n > 0;})`는 `[1, 2, 3]`을 반환해야 합니다.

```js
assert.deepEqual(
  dropElements([1, 2, 3], function (n) {
    return n > 0;
  }),
  [1, 2, 3]
);
```

`dropElements([1, 2, 3, 4], function(n) {return n > 5;})`는 `[]`을 반환해야 합니다.

```js
assert.deepEqual(
  dropElements([1, 2, 3, 4], function (n) {
    return n > 5;
  }),
  []
);
```

`dropElements([1, 2, 3, 7, 4], function(n) {return n > 3;})`는 `[7, 4]`을 반환해야 합니다.

```js
assert.deepEqual(
  dropElements([1, 2, 3, 7, 4], function (n) {
    return n > 3;
  }),
  [7, 4]
);
```

`dropElements([1, 2, 3, 9, 2], function(n) {return n > 2;})`는 `[3, 9, 2]`을 반환해야 합니다.

```js
assert.deepEqual(
  dropElements([1, 2, 3, 9, 2], function (n) {
    return n > 2;
  }),
  [3, 9, 2]
);
```

# --seed--

## --seed-contents--

```js
function dropElements(arr, func) {
  return arr;
}

dropElements([1, 2, 3], function(n) {return n < 3; });
```

# --solutions--

```js
function dropElements(arr, func) {
  while (arr.length && !func(arr[0])) {
    arr.shift();
  }
  return arr;
}
```
