---
id: 56bbb991ad1ed5201cd392ce
title: Manipulate Arrays With unshift Method
challengeType: 1
forumTopicId: 18239
dashedName: manipulate-arrays-with-unshift
---

# --description--

Not only can you `shift` elements off of the beginning of an array, you can also `unshift` elements to the beginning of an array i.e. add elements in front of the array.

`.unshift()`는 `.push()`와 거의 동일하게 동작합니다만, 단 `unshift()`는 배열의 맨 끝에 항목을 추가하는 게 아니라, 배열의 맨 처음에 항목을 추가합니다.

예:

```js
const ourArray = ["Stimpson", "J", "cat"];
ourArray.shift();
ourArray.unshift("Happy");
```

`shift` 다음에, `ourArray`의 값은 `["J", "cat"]`를 가지게 됩니다. `unshift` 다음에, `ourArray`의 값은 `["Happy", "J", "cat"]`을 가지게 됩니다.

# --instructions--

`unshift()`를 사용해서 `["Paul", 35]`을 `myArray` 변수 맨 처음에 추가하세요.

# --hints--

`myArray`는 이제 `[["Paul", 35], ["dog", 3]]`를 가져야 합니다.

```js
assert(
  (function (d) {
    if (
      typeof d[0] === 'object' &&
      d[0][0] == 'Paul' &&
      d[0][1] === 35 &&
      d[1][0] != undefined &&
      d[1][0] == 'dog' &&
      d[1][1] != undefined &&
      d[1][1] == 3
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
(function(y, z){return 'myArray = ' + JSON.stringify(y);})(myArray);
```

## --seed-contents--

```js
// Setup
const myArray = [["John", 23], ["dog", 3]];
myArray.shift();

// Only change code below this line

```

# --solutions--

```js
const myArray = [["John", 23], ["dog", 3]];
myArray.shift();
myArray.unshift(["Paul", 35]);
```
