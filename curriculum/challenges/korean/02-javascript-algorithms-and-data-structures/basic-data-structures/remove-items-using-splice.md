---
id: 587d78b2367417b2b2512b10
title: splice() 를 사용하여 항목 제거하기
challengeType: 1
forumTopicId: 301166
dashedName: remove-items-using-splice
---

# --description--

Ok, so we've learned how to remove elements from the beginning and end of arrays using `shift()` and `pop()`, but what if we want to remove an element from somewhere in the middle? Or remove more than one element at once? Well, that's where `splice()` comes in. `splice()` allows us to do just that: **remove any number of consecutive elements** from anywhere in an array.

`splice()`는 최대 3개의 매개변수를 사용할 수 있지만, 지금은 첫 2개에만 초점을 맞출 것입니다. `splice()`의 첫 두 매개변수는 배열에서 `splice()`가 호출되는 항목의 인덱스 또는 위치를 나타내는 정수입니다. 그리고 기억하세요, 배열은 *제로 인덱스*이므로 배열의 첫 번째 요소를 나타내려면 `0`을 사용해야 합니다. `splice()`의 첫 번째 매개변수는 요소를 제거할 배열의 인덱스를 나타내고, 두 번째 매개변수는 제거할 요소의 수를 나타냅니다. 예시:

```js
let array = ['today', 'was', 'not', 'so', 'great'];

array.splice(2, 2);
```

여기서는 세 번째 요소(인덱스 2)부터 시작하여 두 개의 요소를 제거합니다. `array`의 값은 `['today', 'was', 'great']`이 될 것입니다.

`splice()`는 호출된 배열을 수정하는 것뿐만 아니라 제거된 요소의 값을 포함하는 새 배열을 반환합니다.

```js
let array = ['I', 'am', 'feeling', 'really', 'happy'];

let newArray = array.splice(3, 2);
```

`newArray`의 값은 `['really', 'happy']`가 될 것입니다.

# --instructions--

우리는 배열 `arr`을 초기화했습니다. `splice()`를 사용해서 `arr`에서 요소를 제거하여 남은 요소들의 합이 `10`이 되도록 만드세요.

# --hints--

원래의 `const arr = [2, 4, 5, 1, 7, 5, 2, 1];` 라인을 변경해서는 안 됩니다.

```js
assert(
  __helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/constarr=\[2,4,5,1,7,5,2,1\];?/)
);
```

`arr`은 합이 `10`이 되도록하는 요소만 포함해야 합니다.

```js
assert.strictEqual(
  arr.reduce((a, b) => a + b),
  10
);
```

`arr`에 `splice()` 메서드를 사용해야 합니다.

```js
assert(__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(/));
```

splice는 `arr`에서 요소를 제거하고 `arr`에 추가적인 요소를 더해서는 안 됩니다.

```js
assert(
  !__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(\d+,\d+,\d+.*\)/g)
);
```

# --seed--

## --seed-contents--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
// Only change code below this line

// Only change code above this line
console.log(arr);
```

# --solutions--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
arr.splice(1, 4);
```
