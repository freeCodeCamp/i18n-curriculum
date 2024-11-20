---
id: cf1111c1c11feddfaeb8bdef
title: 인덱스로 배열 데이터를 수정하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/czQM4A8'
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

문자열과는 다르게, 배열의 항목은 <dfn>변할 수 있으며(mutable)</dfn>, 배열이 `const`로 선언되어 있는 경우라도 변경하는 것이 가능합니다.

**예)**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray`는 이제 `[15, 40, 30]`의 값을 가집니다.

**노트:** `array [0]`처럼 배열명과 중괄호(브라켓) 사이에 공백이 들어가면 안됩니다. JavaScript는 이것을 올바르게 처리하지만, 이 코드를 읽는 다른 프로그래머를 혼란시킬 위험이 있습니다.

# --instructions--

`myArray`의 인덱스 `0`에 할당되어 있는 값을 `45`로 변경하세요.

# --hints--

`myArray`는 이제 `[45, 64, 99]`가 되어야 합니다.

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

당신은 올바른 인덱스를 사용해서 `myArray`의 값을 변경해야 합니다.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
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
if(typeof myArray !== "undefined"){(function(){return myArray;})();}
```

## --seed-contents--

```js
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
