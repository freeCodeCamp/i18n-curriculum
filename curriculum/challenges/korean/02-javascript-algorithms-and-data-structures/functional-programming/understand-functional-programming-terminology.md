---
id: 587d7b8e367417b2b2512b5c
title: 함수형 프로그래밍 용어 이해하기
challengeType: 1
forumTopicId: 301240
dashedName: understand-functional-programming-terminology
---

# --description--

The FCC Team had a mood swing and now wants two types of tea: green tea and black tea. General Fact: Client mood swings are pretty common.

이러한 정보와 함께 다양한 차 요청을 대응하기 위해 이전 과제의 `getTea` 함수를 다시 살펴볼 필요가 생겼습니다. 차의 종류를 변화시킬 수 있게 만들기 위해 인자로 함수를 받을 수 있도록 `getTea` 함수를 수정할 수 있습니다. 이는 `getTea`를 더 유연하게 만들고 고객 요청의 변화가 있을 때 프로그래머에게 더 제어할 수 있게 해줍니다.

하지만 우선 함수 용어에 대해 살펴보겠습니다.

<dfn>콜백</dfn>은 다른 함수에 전달되는 함수로 해당 함수의 호출을 결정합니다. 아마 다른 메소드에 전달되는 콜백 함수들을 봤을 것입니다. 예를 들면 `filter`에서 콜백은 자바스크립트에게 배열을 어떻게 필터링할 것인지 지시합니다.

다른 보통 값처럼 변수에 할당되거나 다른 함수에 전달되거나 다른 함수에서 반환되는 함수는 모두 <dfn>1급(first class)</dfn> 함수라고 불립니다. 자바스크립트에서 모든 함수는 1급 함수입니다.

인자로 함수를 받거나 반환값으로 함수를 반환하는 함수는 <dfn>고차</dfn> 함수라고 불립니다.

함수가 전달되거나 다른 함수로부터 반환될 때 그 전달되거나 반환되는 함수는 <dfn>람다(lambda)</dfn>라고 불립니다.

# --instructions--

27 잔의 녹차와 13 잔의 홍차를 준비하고 각각 `tea4GreenTeamFCC`와 `tea4BlackTeamFCC` 변수에 저장하시오. `getTea` 함수는 수정되었고 이제 첫번째 인자로 함수를 받는다는 것에 주의하시오.

주의: 데이터(찻잔의 수)는 마지막 인자로 제공됩니다. 이후의 과제에서 이에 대해 더 살펴보겠습니다.

# --hints--

`tea4GreenTeamFCC` 변수는 팀을 위한 27잔의 녹차를 가지고 있어야 합니다.

```js
assert(tea4GreenTeamFCC.length === 27);
```

`tea4GreenTeamFCC` 변수는 녹차를 가지고 있어야 합니다.

```js
assert(tea4GreenTeamFCC[0] === 'greenTea');
```

`tea4BlackTeamFCC` 변수는 13 잔의 홍차를 가지고 있어야 합니다.

```js
assert(tea4BlackTeamFCC.length === 13);
```

`tea4BlackTeamFCC` 변수는 홍차를 가지고 있어야 합니다.

```js
assert(tea4BlackTeamFCC[0] === 'blackTea');
```

# --seed--

## --seed-contents--

```js
// Function that returns a string representing a cup of green tea
const prepareGreenTea = () => 'greenTea';

// Function that returns a string representing a cup of black tea
const prepareBlackTea = () => 'blackTea';

/*
Given a function (representing the tea type) and number of cups needed, the
following function returns an array of strings (each representing a cup of
a specific type of tea).
*/
const getTea = (prepareTea, numOfCups) => {
  const teaCups = [];

  for(let cups = 1; cups <= numOfCups; cups += 1) {
    const teaCup = prepareTea();
    teaCups.push(teaCup);
  }
  return teaCups;
};

// Only change code below this line
const tea4GreenTeamFCC = null;
const tea4BlackTeamFCC = null;
// Only change code above this line

console.log(
  tea4GreenTeamFCC,
  tea4BlackTeamFCC
);
```

# --solutions--

```js
const prepareGreenTea = () => 'greenTea';
const prepareBlackTea = () => 'blackTea';

const getTea = (prepareTea, numOfCups) => {
  const teaCups = [];

  for(let cups = 1; cups <= numOfCups; cups += 1) {
    const teaCup = prepareTea();
    teaCups.push(teaCup);
  }
  return teaCups;
};

const tea4BlackTeamFCC = getTea(prepareBlackTea, 13);
const tea4GreenTeamFCC = getTea(prepareGreenTea, 27);
```
