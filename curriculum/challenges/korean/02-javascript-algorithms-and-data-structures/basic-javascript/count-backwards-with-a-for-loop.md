---
id: 56105e7b514f539506016a5e
title: for 루프를 사용하여 거꾸로 세어보기
challengeType: 1
forumTopicId: 16808
dashedName: count-backwards-with-a-for-loop
---

# --description--

알맞은 조건을 정의할 수 있다면 for 루프를 이용해서도 거꾸로 세어갈 수 있습니다.

반복마다 2씩 감소시키려면 초기화, 조건 및 최종 표현식을 변경해야 합니다.

`i = 10`부터 시작하여 `i > 0`인 동안 반복할 것입니다. 각 루프에서 `i`를 2씩 감소시킬 것입니다. `i -= 2`.

```js
const ourArray = [];

for (let i = 10; i > 0; i -= 2) {
  ourArray.push(i);
}
```

`ourArray`는 이제 `[10, 8, 6, 4, 2]`가 될 것입니다. 이제 초기화 및 최종 표현식을 변경하여 두 칸씩 거꾸로 세어내려가는 내림차순 홀수의 배열을 만들어 보겠습니다.

# --instructions--

for 루프를 사용하여 9에서 1까지의 홀수를 `myArray`에 추가하세요.

# --hints--

이 작업에는 `for` 루프를 사용해야 합니다.

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

배열 메서드 `push`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/myArray.push/));
```

`myArray`는 `[9, 7, 5, 3, 1]`과 같아야 합니다.

```js
assert.deepEqual(myArray, [9, 7, 5, 3, 1]);
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
for (let i = 9; i > 0; i -= 2) {
  myArray.push(i);
}
```
