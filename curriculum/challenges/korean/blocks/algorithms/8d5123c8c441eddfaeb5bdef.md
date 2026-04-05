---
id: 8d5123c8c441eddfaeb5bdef
title: 버블 정렬 구현하기
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

이 도전 과제는 정렬 알고리즘에 관한 여러 도전 과제 중 첫 번째입니다. 정렬되지 않은 항목들의 배열이 주어졌을 때, 정렬된 배열을 반환할 수 있어야 합니다. 이를 위해 여러 가지 방법을 살펴보고, 각 접근법 간의 장단점을 배울 것입니다. 대부분의 최신 언어에는 이런 작업을 위한 내장 정렬 메서드가 있지만, 일반적인 기본 접근법을 이해하고 어떻게 구현할 수 있는지 배우는 것이 여전히 중요합니다.

여기서는 버블 정렬을 살펴봅니다. 버블 정렬은 정렬되지 않은 배열의 처음부터 시작해 인접한 항목들을 비교하며 순서가 잘못된 경우 서로 교환하여 정렬되지 않은 값들을 배열 끝으로 '버블처럼 떠오르게' 합니다. 이 과정을 배열이 완전히 정렬될 때까지 반복합니다. 교환이 더 이상 발생하지 않으면 배열이 정렬된 것입니다.

이 방법은 배열을 여러 번 반복해야 하며, 평균 및 최악의 경우 시간 복잡도가 이차 함수적입니다. 단순하지만 대부분 상황에서는 비실용적입니다.

**지시사항:** 정수 배열을 입력으로 받아 이 정수들을 가장 작은 값부터 가장 큰 값 순서로 정렬한 배열을 반환하는 함수 `bubbleSort`를 작성하세요.

# --hints--

`bubbleSort`는 함수여야 합니다.

```js
assert.isFunction(bubbleSort);
```

`bubbleSort`는 정렬된 배열(작은 값부터 큰 값 순서)을 반환해야 합니다.

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
assert.isTrue(
  isSorted(
    bubbleSort([
      1,
      4,
      2,
      8,
      345,
      123,
      43,
      32,
      5643,
      63,
      123,
      43,
      2,
      55,
      1,
      234,
      92
    ])
  )
);
```

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])`는 순서만 바뀌었을 뿐 나머지는 변경되지 않은 배열을 반환해야 합니다.

```js
assert.sameMembers(
  bubbleSort([
    1,
    4,
    2,
    8,
    345,
    123,
    43,
    32,
    5643,
    63,
    123,
    43,
    2,
    55,
    1,
    234,
    92
  ]),
  [1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]
);
```

`bubbleSort`는 내장 `.sort()` 메서드를 사용하지 않아야 합니다.

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    bubbleSort([0, 1]);
  } finally {
    Array.prototype.sort = temp;
  }
  return sortUsed;
}
assert.isFalse(isBuiltInSortUsed());
```

# --seed--

## --seed-contents--

```js
function bubbleSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function bubbleSort(array) {
  for (let i = 0; i < array.length; i++) {
    let swapped = false;
    for (let j = 1; j < array.length; j++) {
      if (array[j - 1] > array[j]) {
        let temp = array[j-1];
        array[j-1] =  array[j];
        array[j] = temp;
        swapped = true;
      }
    }
    if (swapped === false) {
      break;
    }
  }
  return array;
}
```
