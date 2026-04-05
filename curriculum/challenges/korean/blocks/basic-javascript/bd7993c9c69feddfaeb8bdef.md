---
id: bd7993c9c69feddfaeb8bdef
title: JavaScript 배열을 사용해 하나의 변수에 여러 값을 저장하기
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

JavaScript `array` 변수로 여러 데이터를 한곳에 저장할 수 있습니다.

배열 선언은 대괄호 여는 기호로 시작해 닫는 기호로 끝내고, 각 항목 사이에 쉼표를 넣어 이렇게 작성합니다:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

새 배열 `myArray`이 문자열과 숫자(그 순서대로)를 모두 포함하도록 수정하세요.

# --hints--

`myArray`는 배열이어야 합니다.

```js
assert(typeof myArray == 'object');
```

`myArray`의 첫 번째 항목은 문자열이어야 합니다.

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

`myArray`의 두 번째 항목은 숫자여야 합니다.

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
