---
id: a789b3483989747d63b0e427
title: 배열들로부터 가장 큰 수들 반환하기
challengeType: 1
forumTopicId: 16042
dashedName: return-largest-numbers-in-arrays
---

# --description--

Return an array consisting of the largest number from each provided sub-array. For simplicity, the provided array will contain exactly 4 sub-arrays.

간단한 for 루프로 배열의 요소를 하나씩 순회할 수 있고 `arr[i]` 문법을 통해 각 요소에 접근할 수 있다는 점을 기억하세요.

# --hints--

`largestOfFour([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]])`는 배열을 반환해야 합니다.

```js
assert(
  largestOfFour([
    [4, 5, 1, 3],
    [13, 27, 18, 26],
    [32, 35, 37, 39],
    [1000, 1001, 857, 1]
  ]).constructor === Array
);
```

`largestOfFour([[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]])`는 `[27, 5, 39, 1001]`을 반환해야 합니다.

```js
assert.deepEqual(
  largestOfFour([
    [13, 27, 18, 26],
    [4, 5, 1, 3],
    [32, 35, 37, 39],
    [1000, 1001, 857, 1]
  ]),
  [27, 5, 39, 1001]
);
```

`largestOfFour([[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]])`는 `[9, 35, 97, 1000000]`을 반환해야 합니다.

```js
assert.deepEqual(
  largestOfFour([
    [4, 9, 1, 3],
    [13, 35, 18, 26],
    [32, 35, 97, 39],
    [1000000, 1001, 857, 1]
  ]),
  [9, 35, 97, 1000000]
);
```

`largestOfFour([[17, 23, 25, 12], [25, 7, 34, 48], [4, -10, 18, 21], [-72, -3, -17, -10]])`는 `[25, 48, 21, -3]`을 반환해야 합니다.

```js
assert.deepEqual(
  largestOfFour([
    [17, 23, 25, 12],
    [25, 7, 34, 48],
    [4, -10, 18, 21],
    [-72, -3, -17, -10]
  ]),
  [25, 48, 21, -3]
);
```

# --seed--

## --seed-contents--

```js
function largestOfFour(arr) {
  return arr;
}

largestOfFour([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]);
```

# --solutions--

```js
function largestOfFour(arr) {
  return arr.map(subArr => Math.max.apply(null, subArr));
}

largestOfFour([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]);
```
