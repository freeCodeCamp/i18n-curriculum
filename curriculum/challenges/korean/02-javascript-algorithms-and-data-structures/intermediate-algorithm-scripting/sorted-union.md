---
id: a105e963526e7de52b219be9
title: 정렬된 유니온
challengeType: 1
forumTopicId: 16077
dashedName: sorted-union
---

# --description--

Write a function that takes two or more arrays and returns a new array of unique values in the order of the original provided arrays.

다시 말해, 모든 배열에서 제공된 모든 값은 원래 순서를 유지해야 하며, 최종 배열에는 중복이 없어야 합니다.

고유한 숫자는 원래의 순서로 정렬되어야 하지만, 최종 배열은 숫자 순서로 정렬되지 않아야 합니다.

예시를 보기 위해서는 단언 테스트를 확인하세요.

# --hints--

`uniteUnique([1, 3, 2], [5, 2, 1, 4], [2, 1])`는 `[1, 3, 2, 5, 4]`를 반환해야 합니다.

```js
assert.deepEqual(uniteUnique([1, 3, 2], [5, 2, 1, 4], [2, 1]), [1, 3, 2, 5, 4]);
```

`uniteUnique([1, 2, 3], [5, 2, 1])`는 `[1, 2, 3, 5]`를 반환해야 합니다.

```js
assert.deepEqual(uniteUnique([1, 2, 3], [5, 2, 1]), [1, 2, 3, 5]);
```

`uniteUnique([1, 2, 3], [5, 2, 1, 4], [2, 1], [6, 7, 8])`는 `[1, 2, 3, 5, 4, 6, 7, 8]`을 반환해야 합니다.

```js
assert.deepEqual(uniteUnique([1, 2, 3], [5, 2, 1, 4], [2, 1], [6, 7, 8]), [
  1,
  2,
  3,
  5,
  4,
  6,
  7,
  8
]);
```

`uniteUnique([1, 3, 2], [5, 4], [5, 6])`는 `[1, 3, 2, 5, 4, 6]`를 반환해야 합니다.

```js
assert.deepEqual(uniteUnique([1, 3, 2], [5, 4], [5, 6]), [1, 3, 2, 5, 4, 6]);
```

`uniteUnique([1, 3, 2, 3], [5, 2, 1, 4], [2, 1])`는 `[1, 3, 2, 5, 4]`를 반환해야 합니다.

```js
assert.deepEqual(uniteUnique([1, 3, 2, 3], [5, 2, 1, 4], [2, 1]), [1, 3, 2, 5, 4]);
```

# --seed--

## --seed-contents--

```js
function uniteUnique(arr) {
  return arr;
}

uniteUnique([1, 3, 2], [5, 2, 1, 4], [2, 1]);
```

# --solutions--

```js
function uniteUnique(arr) {
  return [].slice.call(arguments).reduce(function(a, b) {
    return [].concat(
      a, 
      b.filter(function(e, currentIndex) {
        return b.indexOf(e) === currentIndex && a.indexOf(e) === -1;
      }));
  }, []);
}
```
