---
id: 587d7da9367417b2b2512b6a
title: 본래 배열 변형없이 정렬된 배열 반환하기
challengeType: 1
forumTopicId: 301237
dashedName: return-a-sorted-array-without-changing-the-original-array
---

# --description--

A side effect of the `sort` method is that it changes the order of the elements in the original array. In other words, it mutates the array in place. One way to avoid this is to first concatenate an empty array to the one being sorted (remember that `slice` and `concat` return a new array), then run the `sort` method.

# --instructions--

오름차순으로 배열의 요소를 정렬하기 위해 `nonMutatingSort` 함수에 `sort`를 사용하시오. 이 함수는 새로운 배열을 반환해야 하며 `globalArray` 변수를 변형시키지 않아야 합니다.

# --hints--

`sort` 메소드를 사용해야 합니다.

```js
assert(nonMutatingSort.toString().match(/\.sort/g));
```

`globalArray` 변수는 변하지 않아야 합니다.

```js
assert(JSON.stringify(globalArray) === JSON.stringify([5, 6, 3, 2, 9]));
```

`nonMutatingSort(globalArray)`는 `[2, 3, 5, 6, 9]`을 반환해야 합니다.

```js
assert(
  JSON.stringify(nonMutatingSort(globalArray)) ===
    JSON.stringify([2, 3, 5, 6, 9])
);
```

`nonMutatingSort(globalArray)`는 하드코딩되지 않아야 합니다.

```js
assert(!nonMutatingSort.toString().match(/\[.*?[23569].*?\]/gs));
```

이 함수는 전달받은 배열이 아닌 새로운 배열을 반환해야 합니다.

```js
assert(nonMutatingSort(globalArray) !== globalArray);
```

`nonMutatingSort([1, 30, 4, 21, 100000])`는 `[1, 4, 21, 30, 100000]`를 반환해야 합니다.

```js
assert(JSON.stringify(nonMutatingSort([1, 30, 4, 21, 100000])) ===
    JSON.stringify([1, 4, 21, 30, 100000]))
```

`nonMutatingSort([140000, 104, 99])`는 `[99, 104, 140000]`를 반환해야 합니다.

```js
assert(JSON.stringify(nonMutatingSort([140000, 104, 99])) ===
    JSON.stringify([99, 104, 140000]))
```

# --seed--

## --seed-contents--

```js
const globalArray = [5, 6, 3, 2, 9];

function nonMutatingSort(arr) {
  // Only change code below this line


  // Only change code above this line
}

nonMutatingSort(globalArray);
```

# --solutions--

```js
const globalArray = [5, 6, 3, 2, 9];
function nonMutatingSort(arr) {
  return [].concat(arr).sort((a,b) => a-b);
}
```
