---
id: cf1111c1c11feddfaeb8bdef
title: 인덱스로 배열 데이터 수정하기
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

문자열과 달리 배열의 항목은 <dfn>변경 가능</dfn>하며, 배열이 `const`로 선언되었더라도 자유롭게 바꿀 수 있습니다.

**예시**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray`은 이제 `[15, 40, 30]` 값을 가집니다.

**참고:** 배열 이름과 대괄호 사이에는 `array [0]`처럼 공백이 없어야 합니다. JavaScript는 이를 올바르게 처리할 수 있지만, 다른 프로그래머가 코드를 읽을 때 혼란을 줄 수 있습니다.

# --instructions--

`0`의 인덱스 `myArray`에 저장된 데이터를 `45` 값으로 수정하세요.

# --hints--

`myArray`은 이제 `[45, 64, 99]`이어야 합니다.

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

`myArray`에서 값을 수정하려면 올바른 인덱스를 사용해야 합니다.

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
