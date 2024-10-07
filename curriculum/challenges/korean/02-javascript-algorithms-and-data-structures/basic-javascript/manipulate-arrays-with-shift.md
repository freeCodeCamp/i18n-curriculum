---
id: 56bbb991ad1ed5201cd392cd
title: Manipulate Arrays With shift Method
challengeType: 1
videoUrl: 'https://scrimba.com/c/cRbVETW'
forumTopicId: 18238
dashedName: manipulate-arrays-with-shift
---

# --description--

`pop()` always removes the last element of an array. What if you want to remove the first?

그 때 사용되는 것이 바로 `.shift()` 입니다. 이것은 `.pop()` 과 동일하게 동작합니다만, 마지막 항목이 아닌 맨 처음 항목을 삭제합니다.

예:

```js
const ourArray = ["Stimpson", "J", ["cat"]];
const removedFromOurArray = ourArray.shift();
```

`removedFromOurArray`의 값은 문자열 `Stimpson`를 갖게 되며, `ourArray`는 `["J", ["cat"]]`를 갖게 됩니다.

# --instructions--

`.shift()` 함수를 사용해서 `myArray`의 맨 처음 아이템을 삭제하고, "삭제되어 빼내진(shifted off)" 값을 새로운 변수 `removedFromMyArray`에 할당하세요.

# --hints--

`myArray`는 이제 `[["dog", 3]]`와 같아야 합니다.

```js
assert(
  (function (d) {
    if (d[0][0] == 'dog' && d[0][1] === 3 && d[1] == undefined) {
      return true;
    } else {
      return false;
    }
  })(myArray)
);
```

`removedFromMyArray`는 `["John", 23]`를 포함해야 합니다.

```js
assert(
  (function (d) {
    if (
      d[0] == 'John' &&
      d[1] === 23 &&
      typeof removedFromMyArray === 'object'
    ) {
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
const myArray = [["John", 23], ["dog", 3]];

// Only change code below this line

```

# --solutions--

```js
const myArray = [["John", 23], ["dog", 3]];

// Only change code below this line
const removedFromMyArray = myArray.shift();
```
