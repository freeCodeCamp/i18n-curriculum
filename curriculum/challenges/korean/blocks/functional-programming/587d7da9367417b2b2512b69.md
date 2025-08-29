---
id: 587d7da9367417b2b2512b69
title: sort 메소드로 알파벳 순서로 배열 정렬하기
challengeType: 1
forumTopicId: 18303
dashedName: sort-an-array-alphabetically-using-the-sort-method
---

# --description--

`sort` 메소드는 콜백 함수에 따라 배열의 요소를 정렬합니다.

예시:

```js
function ascendingOrder(arr) {
  return arr.sort(function(a, b) {
    return a - b;
  });
}

ascendingOrder([1, 5, 2, 3, 4]);
```

이는 `[1, 2, 3, 4, 5]`을 반환할 것입니다.

```js
function reverseAlpha(arr) {
  return arr.sort(function(a, b) {
    return a === b ? 0 : a < b ? 1 : -1;
  });
}

reverseAlpha(['l', 'h', 'z', 'b', 's']);
```

이는 `['z', 's', 'l', 'h', 'b']`을 반환할 것입니다.

자바스크립트의 정렬 메소드의 기본값은 문자열의 유니코드 값으로 정렬하는 것인데 예상치 못한 결과를 반환할지도 모릅니다. 그러므로 어떻게 배열을 정렬할 것인지 특정하기 위해 콜백 함수를 제공하는 것이 권장됩니다. 보통 `compareFunction`라고 불리는 콜백 함수가 제공될 때 배열 요소는 `compareFunction`의 반환 결과에 의해 정렬됩니다: `compareFunction(a,b)`가 두 요소 `a`와 `b`에 대해 0보다 적은 값을 반환하면 `a`가 `b` 전에 위치하게 될 것입니다. `compareFunction(a,b)`가 두 요소 `a`와 `b`에 대해 0보다 큰 값을 반환하면 `b`는 `a` 전에 위치하게 될 것입니다. `compareFunction(a,b)`가 두 요소 `a`와 `b`에 대해 0을 반환한다면 `a`와 `b`의 위치는 변하지 않을 것입니다.

# --instructions--

`arr`의 요소를 알파벳 순서로 정렬하기 위해 `alphabeticalOrder` 함수에 `sort` 메소드를 사용하시오. 함수는 정렬된 배열을 반환해야 합니다.

# --hints--

`sort` 메소드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.sort/g));
```

`alphabeticalOrder(["a", "d", "c", "a", "z", "g"])`는 `["a", "a", "c", "d", "g", "z"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(alphabeticalOrder(['a', 'd', 'c', 'a', 'z', 'g'])) ===
    JSON.stringify(['a', 'a', 'c', 'd', 'g', 'z'])
);
```

`alphabeticalOrder(["x", "h", "a", "m", "n", "m"])`는 `["a", "h", "m", "m", "n", "x"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(alphabeticalOrder(['x', 'h', 'a', 'm', 'n', 'm'])) ===
    JSON.stringify(['a', 'h', 'm', 'm', 'n', 'x'])
);
```

`alphabeticalOrder(["a", "a", "a", "a", "x", "t"])`는 `["a", "a", "a", "a", "t", "x"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(alphabeticalOrder(['a', 'a', 'a', 'a', 'x', 't'])) ===
    JSON.stringify(['a', 'a', 'a', 'a', 't', 'x'])
);
```

# --seed--

## --seed-contents--

```js
function alphabeticalOrder(arr) {
  // Only change code below this line

  return arr
  // Only change code above this line
}

alphabeticalOrder(["a", "d", "c", "a", "z", "g"]);
```

# --solutions--

```js
function alphabeticalOrder(arr) {
  return arr.sort();
}
```
