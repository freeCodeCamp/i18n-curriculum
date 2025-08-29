---
id: 56bbb991ad1ed5201cd392ca
title: 인덱스로 배열의 데이터에 접근하기
challengeType: 1
forumTopicId: 16158
dashedName: access-array-data-with-indexes
---

# --description--

우리는 <dfn>인덱스</dfn>를 사용해서 배열 내의 데이터에 접근하는 것도 가능합니다.

배열 인덱스는 문자열에서 사용하는 것과 동일하게 브라켓 표기법으로 작성합니다. 다른 점은 문자 대신에 배열 내에 있는 데이터를 순서로 지정한다는 점입니다. 문자열과 동일하게, 배열에서도 <dfn>0부터 시작</dfn>하는 인덱스를 사용하기 때문에, 배열 최초 요소의 인덱스는 `0`이 됩니다.

<br>

**예:**

```js
const array = [50, 60, 70];
console.log(array[0]);
const data = array[1];
```

여기서 `console.log(array[0])`는 `50`을 출력하고, `data`의 값은 `60`을 가집니다.

# --instructions--

`myData`라는 변수를 제작하고, 브라켓 표기법을 사용해서 `myArray` 의 최초 값과 동일하게 되도록 설정하세요.

# --hints--

변수 `myData`는 `myArray`의 최초 요소의 값과 같아야 합니다.

```js
assert(
  (function () {
    if (
      typeof myArray !== 'undefined' &&
      typeof myData !== 'undefined' &&
      myArray[0] === myData
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

브라켓 표기법을 사용해서 변수 `myArray` 내의 데이터에 접촉해야 합니다.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/\s*=\s*myArray\[0\]/g)) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --after-user-code--

```js
if(typeof myArray !== "undefined" && typeof myData !== "undefined"){(function(y,z){return 'myArray = ' + JSON.stringify(y) + ', myData = ' + JSON.stringify(z);})(myArray, myData);}
```

## --seed-contents--

```js
const myArray = [50, 60, 70];


```

# --solutions--

```js
const myArray = [50, 60, 70];
const myData = myArray[0];
```
