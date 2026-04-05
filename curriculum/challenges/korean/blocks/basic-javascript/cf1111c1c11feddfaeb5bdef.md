---
id: cf1111c1c11feddfaeb5bdef
title: JavaScript For 루프로 반복하기
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

루프를 사용하면 같은 코드를 여러 번 실행할 수 있습니다.

JavaScript에서 가장 흔한 루프 유형은 특정 횟수만큼 실행되기 때문에 `for` 루프라고 합니다.

For 루프는 세 개의 선택적 표현식이 세미콜론으로 구분되어 선언됩니다:

`for (a; b; c)`, 여기서 `a`는 초기화 문, `b`는 조건문, `c`는 마지막 표현식입니다.

초기화 문은 루프가 시작되기 전에 한 번만 실행됩니다. 보통 루프 변수를 정의하고 설정하는 데 사용합니다.

조건문은 매 루프 반복 시작 시 평가되며 `true`로 평가되는 동안 계속 실행됩니다. 반복 시작 시 조건이 `false`이면 루프 실행이 중단됩니다. 즉, 조건이 처음부터 false라면 루프는 한 번도 실행되지 않습니다.

마지막 표현식은 각 루프 반복이 끝난 후 다음 조건 검사 전에 실행되며 보통 루프 카운터를 증가시키거나 감소시키는 데 사용합니다.

다음 예제에서는 `i = 0`로 초기화하고 조건 `i < 5`가 true인 동안 반복합니다. 각 루프 반복에서 `i`를 `1`만큼 증가시키며 `i++`을 마지막 표현식으로 사용합니다.

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray`는 이제 `[0, 1, 2, 3, 4]` 값을 갖게 됩니다.

# --instructions--

`for` 루프를 사용해 값 1부터 5까지를 `myArray`에 추가하세요.

# --hints--

이 작업에는 `for` 루프를 사용해야 합니다.

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray`는 `[1, 2, 3, 4, 5]`와 같아야 합니다.

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
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
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
