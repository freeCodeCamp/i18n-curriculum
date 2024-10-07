---
id: a24c1a4622e3c05097f71d67
title: 나는 어디에 속할까요
challengeType: 1
forumTopicId: 16094
dashedName: where-do-i-belong
---

# --description--

Return the lowest index at which a value (second argument) should be inserted into an array (first argument) once it has been sorted. The returned value should be a number.

예를 들어, `getIndexToIns([1,2,3,4], 1.5)`는 `1`을 반환해야 합니다. 왜냐하면 1.5가 `1`(인덱스 0)보다 크지만 `2`(인덱스 1)보다 작기 때문입니다.

마찬가지로, `getIndexToIns([20,3,5], 19)`는 `2`를 반환해야 합니다. 배열이 정렬되면 `[3,5,20]`이 되고 `19`는 `20`(인덱스 2)보다 작지만 `5`(인덱스 1)보다 크기 때문입니다.

# --hints--

`getIndexToIns([10, 20, 30, 40, 50], 35)`는 `3`을 반환해야 합니다.

```js
assert(getIndexToIns([10, 20, 30, 40, 50], 35) === 3);
```

`getIndexToIns([10, 20, 30, 40, 50], 35)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([10, 20, 30, 40, 50], 35) === 'number');
```

`getIndexToIns([10, 20, 30, 40, 50], 30)`는 `2`를 반환해야 합니다.

```js
assert(getIndexToIns([10, 20, 30, 40, 50], 30) === 2);
```

`getIndexToIns([10, 20, 30, 40, 50], 30)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([10, 20, 30, 40, 50], 30) === 'number');
```

`getIndexToIns([40, 60], 50)`는 `1`을 반환해야 합니다.

```js
assert(getIndexToIns([40, 60], 50) === 1);
```

`getIndexToIns([40, 60], 50)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([40, 60], 50) === 'number');
```

`getIndexToIns([3, 10, 5], 3)`는 `0`을 반환해야 합니다.

```js
assert(getIndexToIns([3, 10, 5], 3) === 0);
```

`getIndexToIns([3, 10, 5], 3)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([3, 10, 5], 3) === 'number');
```

`getIndexToIns([5, 3, 20, 3], 5)`는 `2`를 반환해야 합니다.

```js
assert(getIndexToIns([5, 3, 20, 3], 5) === 2);
```

`getIndexToIns([5, 3, 20, 3], 5)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([5, 3, 20, 3], 5) === 'number');
```

`getIndexToIns([2, 20, 10], 19)`는 `2`를 반환해야 합니다.

```js
assert(getIndexToIns([2, 20, 10], 19) === 2);
```

`getIndexToIns([2, 20, 10], 19)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([2, 20, 10], 19) === 'number');
```

`getIndexToIns([2, 5, 10], 15)`는 `3`을 반환해야 합니다.

```js
assert(getIndexToIns([2, 5, 10], 15) === 3);
```

`getIndexToIns([2, 5, 10], 15)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([2, 5, 10], 15) === 'number');
```

`getIndexToIns([], 1)`는 `0`을 반환해야 합니다.

```js
assert(getIndexToIns([], 1) === 0);
```

`getIndexToIns([], 1)`는 숫자를 반환해야 합니다.

```js
assert(typeof getIndexToIns([], 1) === 'number');
```

# --seed--

## --seed-contents--

```js
function getIndexToIns(arr, num) {
  return num;
}

getIndexToIns([40, 60], 50);
```

# --solutions--

```js
function getIndexToIns(arr, num) {
  arr = arr.sort((a, b) => a - b);

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] >= num) {
      return i;
    }
  }

  return arr.length;
}

getIndexToIns([40, 60], 50);
```
