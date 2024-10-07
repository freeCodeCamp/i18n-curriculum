---
id: cf1111c1c11feddfaeb1bdef
title: 자바스크립트 While 루프로 순환하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c8QbnCM'
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

You can run the same code multiple times by using a loop.

배우게 될 첫번째 루프 유형은 특정 조건이 참이 되는 동안 동작하고 조건이 더이상 참이 아닐 시 멈추기 때문에 `while`이라고 불립니다.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

위 예시에서 `while` 루프는 5번 실행될 것이고 `ourArray`에 0부터 4까지 추가될 것입니다.

while 루프로 배열에 값을 추가하는 것을 시도해 보겠습니다.

# --instructions--

`while` 루프로 `myArray`에 내림차순으로 5부터 0까지 추가하시오.

# --hints--

이를 위해 `while` 루프를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray`는 `[5, 4, 3, 2, 1, 0]`과 같아야 합니다.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --after-user-code--

```js
if(typeof myArray !== "undefined"){(function(){return myArray;})();}
```

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
