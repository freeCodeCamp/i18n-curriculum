---
id: 587d7b7b367417b2b2512b15
title: For문으로 배열의 모든 항목 순회하기
challengeType: 1
forumTopicId: 301161
dashedName: iterate-through-all-an-arrays-items-using-for-loops
---

# --description--

Sometimes when working with arrays, it is very handy to be able to iterate through each item to find one or more elements that we might need, or to manipulate an array based on which data items meet a certain set of criteria. JavaScript offers several built in methods that each iterate over arrays in slightly different ways to achieve different results (such as `every()`, `forEach()`, `map()`, etc.), however the technique which is most flexible and offers us the greatest amount of control is a simple `for` loop.

다음을 고려해 보세요.

```js
function greaterThanTen(arr) {
  let newArr = [];
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] > 10) {
      newArr.push(arr[i]);
    }
  }
  return newArr;
}

greaterThanTen([2, 12, 8, 14, 80, 0, 1]);
```

`for` 루프를 사용하여 이 함수는 배열의 각 요소에 접근하고 반복하여, 우리가 만든 간단한 테스트를 적용합니다. 이렇게 함으로써, 우리는 프로그래밍 방식으로 쉽게 `10`보다 큰 데이터 항목이 어떤 것인지 알아내고, 해당 항목을 포함하는 새 배열, `[12, 14, 80]`을 반환했습니다.

# --instructions--

우리는 `filteredArray`라는 함수를 정의했습니다. 이 함수는 중첩된 배열인 `arr`과 `elem`을 인수로 받아 새 배열을 반환합니다. `elem`은 `arr` 내부의 하나 이상의 배열에 존재할 수도 있고 없을 수도 있는 요소를 나타냅니다. 함수를 수정하세요. `for` 루프를 사용하여 전달된 배열의 필터링된 버전을 반환하도록 하고, `arr` 내부에 `elem`이 포함된 배열이 제거되도록합니다.

# --hints--

`filteredArray([[10, 8, 3], [14, 6, 23], [3, 18, 6]], 18)`은 `[[10, 8, 3], [14, 6, 23]]`을 반환해야합니다.

```js
assert.deepEqual(
  filteredArray(
    [
      [10, 8, 3],
      [14, 6, 23],
      [3, 18, 6]
    ],
    18
  ),
  [
    [10, 8, 3],
    [14, 6, 23]
  ]
);
```

`filteredArray([["trumpets", 2], ["flutes", 4], ["saxophones", 2]], 2)`은 `[["flutes", 4]]`를 반환해야합니다.

```js
assert.deepEqual(
  filteredArray(
    [
      ['trumpets', 2],
      ['flutes', 4],
      ['saxophones', 2]
    ],
    2
  ),
  [['flutes', 4]]
);
```

`filteredArray([["amy", "beth", "sam"], ["dave", "sean", "peter"]], "peter")`은 `[["amy", "beth", "sam"]]`를 반환해야합니다.

```js
assert.deepEqual(
  filteredArray(
    [
      ['amy', 'beth', 'sam'],
      ['dave', 'sean', 'peter']
    ],
    'peter'
  ),
  [['amy', 'beth', 'sam']]
);
```

`filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3)`은 `[]`를 반환해야합니다.

```js
assert.deepEqual(
  filteredArray(
    [
      [3, 2, 3],
      [1, 6, 3],
      [3, 13, 26],
      [19, 3, 9]
    ],
    3
  ),
  []
);
```

`filteredArray` 함수는 `for` 루프를 활용해야합니다.

```js
assert.notStrictEqual(filteredArray.toString().search(/for/), -1);
```

# --seed--

## --seed-contents--

```js
function filteredArray(arr, elem) {
  let newArr = [];
  // Only change code below this line

  // Only change code above this line
  return newArr;
}

console.log(filteredArray([[3, 2, 3], [1, 6, 3], [3, 13, 26], [19, 3, 9]], 3));
```

# --solutions--

```js
function filteredArray(arr, elem) {
  let newArr = [];
  for (let i = 0; i<arr.length; i++) {
    if (arr[i].indexOf(elem) < 0) {
      newArr.push(arr[i]);
    }
  }
  return newArr;
}
```
