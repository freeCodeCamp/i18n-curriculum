---
id: cf1111c1c11feddfaeb5bdef
title: 자바스크립트 for문을 사용하여 반복하기
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

You can run the same code multiple times by using a loop.

가장 일반적인 자바스크립트 루프 유형은 특정 횟수 동안 실행되기 때문에 `for`문으로 불립니다.

For문은 세미콜론으로 구분된 세 가지 선택적 표현식으로 선언됩니다:

`for (a; b; c)`에서 `a`는 초기화절이고, `b`는 조건절이며, `c`는 증감절입니다.

초기화절은 반복이 시작되기 전에 한번만 실행됩니다. 이는 일반적으로 반복문의 변수를 정의하고 초기화하는 데 사용됩니다.

조건절은 매 반복 실행의 시작에 평가되고, `true`로 평가되면 계속 진행합니다. 만약 반복 실행의 시작에 조건이 `false`이면 반복문은 실행을 중단합니다. 즉, 조건절이 거짓으로 시작하면 반복문은 절대 실행되지 않습니다.

증감절은 주로 반복문의 카운터를 증가시키거나 감소시킬때 사용되며 다음 조건절 확인 전에, 각 반복 실행의 마지막에 실행됩니다.

다음의 예제에서는 `i = 0`로 초기화를 시키고, 조건 `i < 5`가 참인 동안 반복할 것 입니다. 각 반복때 `i++`를 증감절로 사용하여 `i`를 `1`씩 증가시킵니다.

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray`는 이제 `[0, 1, 2, 3, 4]`를 값으로 가지게 됩니다.

# --instructions--

`for`문을 사용하여 `myArray`에 값을 1부터 5까지 삽입하세요.

# --hints--

이를 위해 `for` 루프를 사용해야 합니다.

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray`는 `[1, 2, 3, 4, 5]`와 같아야 합니다.

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
```

# --seed--

## --after-user-code--

```js
if (typeof myArray !== "undefined"){(function(){return myArray;})();}
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
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
