---
id: cf1111c1c11feddfaeb1bdef
title: JavaScript while 루프로 반복하기
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

루프를 사용하면 같은 코드를 여러 번 실행할 수 있습니다.

우리가 배울 첫 번째 루프 유형은 `while` 루프라고 하며, 지정한 조건이 참인 동안 실행되고 그 조건이 더 이상 참이 아니면 정지합니다.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

위 코드 예제에서 `while` 루프는 5번 실행되며 0부터 4까지의 숫자를 `ourArray`에 추가합니다.

while 루프를 사용해 값을 배열에 추가하는 작업을 해봅시다.

# --instructions--

`myArray`에 5부터 0까지(포함) 내림차순으로 숫자를 `while` 루프를 사용해 추가하세요.

# --hints--

이 작업에는 `while` 루프를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray`는 `[5, 4, 3, 2, 1, 0]`와 같아야 합니다.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

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
