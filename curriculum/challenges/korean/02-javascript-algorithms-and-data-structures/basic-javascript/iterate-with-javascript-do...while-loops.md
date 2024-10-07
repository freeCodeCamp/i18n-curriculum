---
id: 5a2efd662fb457916e1fe604
title: 자바스크립트 Do...While 루프로 순환하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cDqWGcp'
forumTopicId: 301172
dashedName: iterate-with-javascript-do---while-loops
---

# --description--

The next type of loop you will learn is called a `do...while` loop. It is called a `do...while` loop because it will first `do` one pass of the code inside the loop no matter what, and then continue to run the loop `while` the specified condition evaluates to `true`.

```js
const ourArray = [];
let i = 0;

do {
  ourArray.push(i);
  i++;
} while (i < 5);
```

위 예시는 다른 루프와 비슷하게 행동하며 결과 배열은 `[0, 1, 2, 3, 4]`와 같을 것입니다. 하지만 `do...while`과 다른 루프와 차이를 만드는 점은 해당 루프가 첫 검사 시 조건이 맞지 않을 때 행동하는지에 있습니다. 이를 실제로 살펴보겠습니다. 여기 `i < 5` 동안 루프 안의 코드를 동작시키는 `while` 루프가 있습니다.

```js
const ourArray = []; 
let i = 5;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

이 예시에서 `ourArray`의 값을 빈 값으로 초기화하고 `i`의 값을 5로 초기화시킵니다. `while` 루프를 실행시킬 때 `i`가 5보다 작기 때문에 `false`로 평가되어 루프 안의 코드를 실행시키지 않습니다. 그 결과는 `ourArray`는 추가되는 값이 없을 것이며 위 예시의 모든 코드의 동작이 마무리 될 때 `[]`와 같을 것입니다. 이제 `do...while` 루프를 살펴보겠습니다:

```js
const ourArray = []; 
let i = 5;

do {
  ourArray.push(i);
  i++;
} while (i < 5);
```

이 경우 `while`루프와 같이 `i`의 값은 5로 초기화시킵니다. 다음 줄로 넘어갈 때, 평가할 조건이 없어서 중괄호 안의 코드로 넘어가 해당 코드를 실행시킵니다. 조건 검사에 다다르기 전에 배열에 한 요소를 추가한 다음 `i`를 증가시킬 것입니다. 마지막 줄에 있는 조건 `i < 5`을 평가할 때 `i`이 이제 6이라는 것을 확인할 수 있으며 이로 인해 조건에 충족하지 못하여 루프를 빠져나와 마무리됩니다. 위 예시의 끝에서 `ourArray`의 값이 `[5]`가 됩니다. 본질적으로 `do...while` 루프는 루프 안의 코드가 적어도 한 번 실행할 수 있게 해줍니다. `do...while` 루프를 사용하여 배열에 값을 추가하는 것을 시도해 보겠습니다.

# --instructions--

루프가 `myArray`에 숫자 `10`만을 추가하고, 코드 실행이 완료되면 `i`가 `11`이 되도록 코드의 `while` 루프를 `do...while` 루프로 변경하시오.

# --hints--

이 연습에서는 `do...while`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/do/g));
```

`myArray`는 `[10]`와 같아야 합니다.

```js
assert.deepEqual(myArray, [10]);
```

`i` should equal `11`

```js
assert.equal(i, 11);
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
let i = 10;

// Only change code below this line
while (i < 5) {
  myArray.push(i);
  i++;
}
```

# --solutions--

```js
const myArray = [];
let i = 10;
do {
  myArray.push(i);
  i++;
} while (i < 5)
```
