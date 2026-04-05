---
id: 6732b28eeadda1158cdbff7b
title: 배열에 특정 값이 포함되어 있는지 어떻게 확인할 수 있나요?
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

JavaScript에서 `includes()` 메서드는 배열에 특정 값이 포함되어 있는지 간단하고 효율적으로 확인하는 방법입니다. 이 메서드는 불리언 값을 반환하는데, 배열에 지정한 요소가 있으면 `true`을, 그렇지 않으면 `false`를 반환합니다.

`includes()` 메서드는 배열에서 요소의 정확한 위치를 알 필요 없이 빠르게 존재 여부를 확인할 때 특히 유용합니다. `includes()` 메서드를 사용하는 예제로 시작해 보겠습니다:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

이 예제에서는 과일 배열이 있습니다. `includes()` 메서드를 사용해 `banana`가 배열에 있는지 확인합니다. `true`가 실제로 존재하므로 `banana`를 반환합니다. 그다음 `grape`를 확인하는데, 배열에 없으므로 `false`를 반환합니다.

`includes()` 메서드는 문자열을 다룰 때 대소문자를 구분합니다. 즉, 첫 글자가 대문자인 `Banana`와 모두 소문자인 `banana`는 서로 다른 값으로 간주됩니다. 다음 예제가 이를 보여줍니다:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

이 경우, 모두 소문자인 `banana`는 배열에서 찾을 수 있지만, 첫 글자가 대문자인 `Banana`는 없으므로 두 번째 `includes()` 호출은 `false`를 반환합니다.

`includes()` 메서드는 배열에서 검색을 시작할 위치를 지정하는 선택적 두 번째 매개변수를 받을 수도 있습니다. 배열의 특정 부분에서 요소 존재 여부를 확인하고 싶을 때 유용합니다. 이 기능을 사용하는 방법은 다음과 같습니다:

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

첫 번째 `console.log`에서는 인덱스 `30`부터 숫자 `3`를 찾고 있습니다. 이 경우, 인덱스 `30` 이후에 숫자 `3`가 나타나므로 `includes()` 메서드는 `true`를 반환합니다.

두 번째 `console.log`도 마찬가지입니다. 인덱스 `30`부터 숫자 `4`를 찾고 있습니다. 그 인덱스 이후에 숫자 `30`가 나타나므로 `true`를 반환합니다.

`includes()`는 엄격한 동등 비교(`===`)를 사용한다는 점도 주목할 만합니다. 즉, 서로 다른 타입을 구분할 수 있습니다. 예를 들어:

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

이 경우, 숫자 `2`와 문자열 `"2"`는 서로 다른 데이터 타입으로 간주됩니다. 따라서 첫 번째 `console.log`는 `false`를 반환하고, 두 번째 `console.log`는 `true`를 반환합니다.

`includes()` 메서드는 배열에서 요소 존재 여부를 확인하는 강력한 도구입니다. 사용하기 간단하고 효율적이며, 배열을 탐색하는 더 복잡한 반복문이나 조건문을 작성하지 않아도 됩니다. 문자열, 숫자 또는 혼합 데이터 타입을 다루든 `includes()`는 배열에 값이 있는지 확인하는 직관적인 방법을 제공합니다.

# --questions--

## --text--

다음 코드의 출력 결과는 무엇인가요?

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

`includes()`의 두 번째 매개변수는 검색을 시작할 위치를 지정합니다.

---

`false`

---

`undefined`

### --feedback--

`includes()`의 두 번째 매개변수는 검색을 시작할 위치를 지정합니다.

---

오류가 발생합니다.

### --feedback--

`includes()`의 두 번째 매개변수는 검색을 시작할 위치를 지정합니다.

## --video-solution--

2

## --text--

다음 코드의 출력 결과는 무엇인가요?

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

문자열을 다룰 때 `includes()`는 대소문자를 구분한다는 점을 기억하세요.

---

`false`

---

`undefined`

### --feedback--

문자열을 다룰 때 `includes()`는 대소문자를 구분한다는 점을 기억하세요.

---

오류가 발생합니다.

### --feedback--

문자열을 다룰 때 `includes()`는 대소문자를 구분한다는 점을 기억하세요.

## --video-solution--

2

## --text--

다음 코드의 출력 결과는 무엇인가요?

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

`includes()` 메서드는 비교에 엄격한 동등성(`===`)을 사용합니다.

---

`false`

---

`undefined`

### --feedback--

`includes()` 메서드는 비교에 엄격한 동등성(`===`)을 사용합니다.

---

오류가 발생합니다.

### --feedback--

`includes()` 메서드는 비교에 엄격한 동등성(`===`)을 사용합니다.

## --video-solution--

2
