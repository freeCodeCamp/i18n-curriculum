---
id: 66edcdd18a4ef8df16e6bb7e
title: JavaScript 고차 함수 퀴즈
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

JavaScript 고차 함수에 관한 다음 설명 중 올바르지 않은 것은 무엇인가요?

#### --distractors--

고차 함수는 함수형 프로그래밍 기법을 가능하게 하여 코드 가독성과 유지보수성을 크게 향상할 수 있습니다.

---

map, filter, reduce 같은 고차 함수는 배열 조작에 강력한 도구이지만 함수형 프로그래밍에만 국한되지 않습니다.

---

고차 함수는 코드를 이해하는 데 복잡성을 더할 수 있지만, 더 표현력 있고 간결한 해결책을 만들 수도 있습니다.

#### --answer--

다른 함수를 인수로 받거나 반환하지 않는 함수도 포함하여 JavaScript의 모든 함수는 고차 함수로 분류할 수 있습니다.

### --question--

#### --text--

고차 함수 맥락에서 팩토리 함수란 무엇인가요?

#### --distractors--

새 변수를 생성하는 함수입니다.

---

문자열만 처리하는 함수입니다.

---

자동으로 코드 주석을 생성하는 함수입니다.

#### --answer--

특정 매개변수를 기반으로 새 함수를 반환하는 함수입니다.

### --question--

#### --text--

코드 실행 후 `forEachRes`와 `mapRes`의 값은 무엇일까요?

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes`는 `undefined`이고 `mapRes`는 `[1,2,3,4,5]`입니다.

---

`forEachRes`는 `0`이고 `mapRes`는 `[1,2,3,4,5]`입니다.

---

`forEachRes`는 `5`이고 `mapRes`는 `[1,2,3,4,5]`입니다.

#### --answer--

`forEachRes`는 `undefined`이고 `mapRes`는 `[6,7,8,9,10]`입니다.

### --question--

#### --text--

이 코드의 결과는 무엇인가요?

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

정렬할 수 없는 배열 요소가 있어 오류가 발생합니다.

---

콜백이 제공되지 않아 오류가 발생합니다.

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

JavaScript에서 콜백 함수를 설명하는 것은 무엇인가요?

#### --distractors--

선언 즉시 호출되는 함수입니다.

---

특정 컨텍스트에서 호출되는 함수입니다.

---

다른 함수를 반환하는 함수입니다.

#### --answer--

다른 함수에 인수로 전달되어 그 함수의 로직에 의해 실행되는 함수입니다.

### --question--

#### --text--

배열에 `reduce()`를 사용하면 결과는 무엇인가요?

#### --distractors--

조건을 만족하는 요소가 있는지 여부를 나타내는 불리언입니다.

---

지정된 콜백 함수로 모든 요소를 축소한 배열입니다.

---

불리언 배열입니다.

#### --answer--

누산기의 초기값과 콜백 함수에 따라 달라집니다.

### --question--

#### --text--

숫자 정렬 시 비교 함수가 제공되지 않으면 `sort()` 메서드는 어떻게 동작하나요?

#### --distractors--

빈 슬롯을 `null`로 채웁니다.

---

특수 문자 배열을 반환합니다.

---

배열을 역순으로 정렬합니다.

#### --answer--

UTF-16 코드 단위에 따라 문자열로 배열을 정렬합니다.

### --question--

#### --text--

JavaScript에서 `some()` 메서드의 목적은 무엇인가요?

#### --distractors--

각 요소에 함수가 적용된 결과로 새 배열을 만듭니다.

---

결과를 생성하지 않고 배열을 순차적으로 반복합니다.

---

콜백 함수에 따라 배열을 단일 값으로 축소합니다.

#### --answer--

배열의 어떤 요소가 지정된 테스트를 통과하는지 확인합니다.

### --question--

#### --text--

다음 중 메서드 체이닝의 유효한 예는 무엇인가요?

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

다음 코드의 출력 결과는 무엇인가요?

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

메서드 체이닝의 이점은 무엇인가요?

#### --distractors--

함수 실행 시간을 줄여 성능을 본질적으로 최적화합니다.

---

임시 변수를 없애지만 경우에 따라 메모리 사용량이 증가할 수 있습니다.

---

오류 처리와 디버깅이 더 간단해집니다.

#### --answer--

한 표현식에서 여러 작업을 가능하게 하여 구문을 단순화하고 코드를 더 읽기 쉽게 만듭니다.

### --question--

#### --text--

`sort` 메서드를 사용해 특정 속성으로 객체 배열을 정렬하려면 어떻게 해야 하나요?

#### --distractors--

`sort` 메서드는 객체를 정렬할 수 없습니다.

---

정렬 후 `reverse` 메서드를 사용하세요.

---

객체를 문자열로 변환한 후 정렬하세요.

#### --answer--

속성 값을 비교하는 비교 함수를 사용하세요.

### --question--

#### --text--

메서드 체이닝에서 명확성과 디버깅을 향상시키는 일반적인 방법은 무엇인가요?

#### --distractors--

체인에서 메서드 수를 줄이세요.

---

원시 값만 반환하는 메서드는 체이닝하지 마세요.

---

내장 메서드만 사용하세요.

#### --answer--

긴 체인을 여러 단계로 나누세요.

### --question--

#### --text--

코드에서 메서드 체이닝을 과도하게 사용하면 어떤 단점이 있나요?

#### --distractors--

코드 실행 속도가 느려집니다.

---

주석 사용이 불가능해집니다.

---

파일 크기가 커집니다.

#### --answer--

코드 디버깅이 더 어려워질 수 있습니다.

### --question--

#### --text--

배열의 모든 요소가 문자열인지 확인하려면 어떤 메서드를 사용하나요?

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

다음 코드를 실행한 후 `originalArray`의 값은 무엇인가요?

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`

### --question--

#### --text--

다음 코드를 실행한 후 `shortWords`의 값은 무엇인가요?

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

`reduce()` 메서드에 초기값을 인수로 제공하는 목적은 무엇인가요?

#### --distractors--

배열 길이를 설정하기 위해서입니다.

---

반복 횟수를 제한하기 위해서입니다.

---

함수의 반환 타입을 지정하기 위해서입니다.

#### --answer--

누산기의 시작 값을 정의하기 위해서입니다.

### --question--

#### --text--

`map` 메서드는 배열이 아닌 객체에도 사용할 수 있나요?

#### --distractors--

네, 모든 객체에 사용할 수 있습니다.

---

네, 숫자 속성이 있는 객체에만 사용할 수 있습니다.

---

JavaScript 버전에 따라 다릅니다.

#### --answer--

아니요, 배열 전용으로 설계되었습니다.

### --question--

#### --text--

JavaScript에서 `map` 메서드의 주요 목적은 무엇인가요?

#### --distractors--

배열을 정렬하고 원본 순서를 유지하며 새 배열을 반환합니다.

---

조건에 따라 배열에서 요소를 필터링하거나 제거 및 추가합니다.

---

특정 요소를 찾아 그 인덱스와 요소를 반환합니다.

#### --answer--

시작 배열의 각 요소에 제공된 함수를 호출한 결과로 새 배열을 만듭니다.
