---
id: 66edcccbba6dacdb65a59067
title: JavaScript 배열 퀴즈
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

다음 코드의 출력 결과는 무엇일까요?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

다음 중 `"Jessica"` 배열에서 문자열 `developers`에 접근하는 올바른 방법은 무엇인가요?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

`index` 변수에 할당될 값은 무엇인가요?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

나머지 구문은 무엇을 하나요?

#### --distractors--

문자열을 하위 문자열 배열로 나누는 데 사용됩니다.

---

배열의 어느 위치에서든 요소를 추가하거나 제거하는 데 사용됩니다.

---

배열 끝에 요소를 추가하고 새 길이를 반환하는 데 사용됩니다.

#### --answer--

배열의 나머지 요소들을 새 배열로 캡처합니다.

### --question--

#### --text--

배열 구조 분해란 무엇인가요?

#### --distractors--

배열의 모든 요소를 하나의 문자열로 연결하는 데 사용됩니다.

---

배열에 특정 값이 포함되어 있는지 확인하는 데 사용됩니다.

---

배열에서 마지막 요소를 제거하고 제거된 요소를 반환하는 데 사용됩니다.

#### --answer--

배열에서 값을 추출해 변수에 더 간결하고 읽기 쉽게 할당하는 데 사용됩니다.

### --question--

#### --text--

`arr2` 변수에 할당될 값은 무엇인가요?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

이 코드는 콘솔에 무엇을 출력할까요?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

`slicedArr` 변수에 할당될 값은 무엇인가요?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

주어진 요소의 첫 번째 인덱스를 반환하는 메서드는 무엇인가요?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

배열에서 첫 번째 요소를 제거하고 제거된 요소를 반환하는 메서드는 무엇인가요?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

`concat()` 메서드는 무엇을 하나요?

#### --distractors--

배열 요소를 문자열로 연결합니다.

---

배열 앞에 요소를 추가합니다.

---

배열에서 요소를 제거합니다.

#### --answer--

두 배열을 새 배열로 병합합니다.

### --question--

#### --text--

이 코드의 출력 결과는 무엇일까요?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

`includes()` 메서드는 무엇을 하나요?

#### --distractors--

문자열을 하위 문자열 배열로 나누는 데 사용됩니다.

---

배열의 모든 요소를 하나의 문자열로 연결하는 데 사용됩니다.

---

배열의 어느 위치에서든 요소를 추가하거나 제거하는 데 사용됩니다.

#### --answer--

배열에 특정 값이 포함되어 있는지 확인하는 데 사용됩니다.

### --question--

#### --text--

다음 중 배열을 제자리에서 뒤집는 데 사용되는 메서드는 무엇인가요?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

2차원 배열이란 무엇인가요?

#### --distractors--

객체 리터럴만 포함하는 배열입니다.

---

고정 길이 배열입니다.

---

부동 소수점 숫자 배열입니다.

#### --answer--

배열의 배열입니다.

### --question--

#### --text--

배열에서 `indexOf()` 메서드에 대해 올바른 설명은 무엇인가요?

#### --distractors--

항상 요소의 마지막 발생 위치를 반환합니다.

---

요소를 찾지 못하면 오류를 발생시킵니다.

---

배열이 정렬되어 있어야 합니다.

#### --answer--

요소를 찾지 못하면 `-1`를 반환합니다.

### --question--

#### --text--

다음 중 배열 메서드가 아닌 것은 무엇인가요?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

다음 코드의 출력 결과는 무엇일까요?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

빈 배열에 `shift()` 메서드를 사용하면 어떤 결과가 나오나요?

#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

원본 배열을 변경하지 않고 새 배열을 반환하는 메서드는 무엇인가요?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
