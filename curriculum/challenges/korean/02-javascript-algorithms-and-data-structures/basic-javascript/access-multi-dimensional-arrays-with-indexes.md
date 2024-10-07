---
id: 56592a60ddddeae28f7aa8e1
title: 인덱스로 다차원 배열에 접촉하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/ckND4Cq'
forumTopicId: 16159
dashedName: access-multi-dimensional-arrays-with-indexes
---

# --description--

One way to think of a <dfn>multi-dimensional</dfn> array, is as an *array of arrays*. When you use brackets to access your array, the first set of brackets refers to the entries in the outermost (the first level) array, and each additional pair of brackets refers to the next level of entries inside.

**예)**

```js
const arr = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14]
];

const subarray = arr[3];
const nestedSubarray = arr[3][0];
const element = arr[3][0][1];
```

In this example, `subarray` has the value `[[10, 11, 12], 13, 14]`, `nestedSubarray` has the value `[10, 11, 12]`,   and `element` has the value `11` .

**노트:** `array [0][0]` 처럼 배열명과 중괄호(브라켓) 사이에 공백이 들어가면 안됩니다. 또한 `array [0] [0]` 은 사용할 수 없습니다. JavaScript는 이것을 올바르게 처리하지만, 이 코드를 읽는 다른 프로그래머를 혼란시킬 위험이 있습니다.

# --instructions--

브라켓 표기법을 사용해서 `myData`가 `8`과 같아지도록 `myArray` 에서 항목을 선택하세요.

# --hints--

`myData`는 `8`과 같아야 합니다.

```js
assert(myData === 8);
```

당신은 브라켓 표기법을 사용해서 `myArray`에서 제대로 된 값을 읽어와야 합니다.

```js
assert(/myData=myArray\[2\]\[1\]/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --after-user-code--

```js
if(typeof myArray !== "undefined"){(function(){return "myData: " + myData + " myArray: " + JSON.stringify(myArray);})();}
```

## --seed-contents--

```js
const myArray = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14],
];

const myData = myArray[0][0];
```

# --solutions--

```js
const myArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [[10, 11, 12], 13, 14]];
const myData = myArray[2][1];
```
