---
id: 56bbb991ad1ed5201cd392cb
title: push 메서드를 사용하여 배열 조작하기
challengeType: 1
forumTopicId: 18237
dashedName: manipulate-arrays-with-push
---

# --description--

An easy way to append data to the end of an array is via the `push()` method.

`push()` 메서드는 하나 이상의 <dfn>인수</dfn>를 가져와서 나타나는 순서대로 배열의 끝에 추가합니다. 이 메서드는 배열의 새로운 길이를 반환합니다.

예:

```js
const arr1 = [1, 2, 3];
arr1.push(4, 5);

const arr2 = ["Stimpson", "J", "cat"];
arr2.push(["happy", "joy"]);
```

`arr1`은 이제 `[1, 2, 3, 4, 5]`의 값을 가지고 있으며 `arr2`는 `["Stimpson", "J", "cat", ["happy", "joy"]]`의 값을 가지고 있습니다.

# --instructions--

`["dog", 3]`을 `myArray`의 끝에 넣으세요(Push).

# --hints--

`myArray`는 이제 `[["John", 23], ["cat", 2], ["dog", 3]]`와 같아야 합니다.

```js
assert(
  (function (d) {
    if (
      d[2] != undefined &&
      d[0][0] == 'John' &&
      d[0][1] === 23 &&
      d[2][0] == 'dog' &&
      d[2][1] === 3 &&
      d[2].length == 2
    ) {
      return true;
    } else {
      return false;
    }
  })(myArray)
);
```

# --seed--

## --after-user-code--

```js
(function(z){return 'myArray = ' + JSON.stringify(z);})(myArray);
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
myArray.push(["dog",3]);
```
