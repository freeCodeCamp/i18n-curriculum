---
id: 56bbb991ad1ed5201cd392cc
title: Manipulate Arrays With pop Method
challengeType: 1
videoUrl: 'https://scrimba.com/c/cRbVZAB'
forumTopicId: 18236
dashedName: manipulate-arrays-with-pop
---

# --description--

배열 내의 데이터를 변경하는 방법으로 `.pop()` 함수도 있습니다.

`.pop()`은 배열의 끝에서 값을 제거하는 데 사용됩니다. 이 제거된 값을 변수에 할당하여 저장할 수 있습니다. 다르게 표현하자면, `.pop()`은 배열의 마지막 항목을 삭제하고 그 항목을 돌려줍니다.

어떠한 종류의 항목이든 숫자, 문자열, 심지어 중첩된 배열까지 배열에서 제거될 수 있습니다.

```js
const threeArr = [1, 4, 6];
const oneDown = threeArr.pop();
console.log(oneDown);
console.log(threeArr);
```

첫 번째 `console.log`는 값 `6`을 표시하고, 두 번째는 값 `[1, 4]`를 표시합니다.

# --instructions--

`.pop()` 함수를 사용해서 `myArray`의 맨 마지막 항목을 제거하고 이 제거된 값을 `removedFromMyArray`에 할당하세요.

# --hints--

`myArray`는 `[["John", 23]]`만 가지고 있어야 합니다.

```js
assert(
  (function (d) {
    if (d[0][0] == 'John' && d[0][1] === 23 && d[1] == undefined) {
      return true;
    } else {
      return false;
    }
  })(myArray)
);
```

`myArray`에 `pop()`을 사용해야 합니다.

```js
assert(/removedFromMyArray\s*=\s*myArray\s*.\s*pop\s*(\s*)/.test(__helpers.removeJSComments(code)));
```

`removedFromMyArray`는 `["cat", 2]`만 가지고 있어야 합니다.

```js
assert(
  (function (d) {
    if (d[0] == 'cat' && d[1] === 2 && d[2] == undefined) {
      return true;
    } else {
      return false;
    }
  })(removedFromMyArray)
);
```

# --seed--

## --after-user-code--

```js
if (typeof removedFromMyArray !== 'undefined') (function(y, z){return 'myArray = ' + JSON.stringify(y) + ' & removedFromMyArray = ' + JSON.stringify(z);})(myArray, removedFromMyArray);
```

## --seed-contents--

```js
// Setup
const myArray = [["John", 23], ["cat", 2]];

// Only change code below this line

```

# --solutions--

```js
const myArray = [["John", 23], ["cat", 2]];
const removedFromMyArray = myArray.pop();
```
