---
id: 587d78b2367417b2b2512b0f
title: pop()과 shift()로 배열에서 아이템 제거하기
challengeType: 1
forumTopicId: 301165
dashedName: remove-items-from-an-array-with-pop-and-shift
---

# --description--

Both `push()` and `unshift()` have corresponding methods that are nearly functional opposites: `pop()` and `shift()`. As you may have guessed by now, instead of adding, `pop()` *removes* an element from the end of an array, while `shift()` removes an element from the beginning. The key difference between `pop()` and `shift()` and their cousins `push()` and `unshift()`, is that neither method takes parameters, and each only allows an array to be modified by a single element at a time.

다음을 살펴보겠습니다:

```js
let greetings = ['whats up?', 'hello', 'see ya!'];

greetings.pop();
```

`greetings`은 값 `['whats up?', 'hello']`을 가질 것입니다.

```js
greetings.shift();
```

`greetings`은 값 `['hello']`을 가질 것입니다.

다음과 같이 두 방법 중 하나로 제거된 요소의 값을 반환할 수도 있습니다:

```js
let popped = greetings.pop();
```

`greetings`은 값 `[]`을 가질 것이며 `popped`은 값 `hello`를 가질 것입니다.

# --instructions--

배열을 인수로 받고 새 배열을 반환하는 함수 `popShift`를 정의했습니다. `pop()`과 `shift()`를 사용하면서 인수 배열의 첫 번째와 마지막 요소를 제거하고, 제거된 요소를 해당 변수에 할당하여 반환된 배열이 그 값을 포함하도록 이 함수를 수정하시오.

# --hints--

`popShift(["challenge", "is", "not", "complete"])`는 `["challenge", "complete"]`를 반환해야 합니다.

```js
assert.deepEqual(popShift(['challenge', 'is', 'not', 'complete']), [
  'challenge',
  'complete'
]);
```

`popShift` 함수는 `pop()` 메소드를 사용해야 합니다.

```js
assert.notStrictEqual(popShift.toString().search(/\.pop\(/), -1);
```

`popShift` 함수는 `shift()` 메소드를 사용해야 합니다.

```js
assert.notStrictEqual(popShift.toString().search(/\.shift\(/), -1);
```

# --seed--

## --seed-contents--

```js
function popShift(arr) {
  let popped; // Change this line
  let shifted; // Change this line
  return [shifted, popped];
}

console.log(popShift(['challenge', 'is', 'not', 'complete']));
```

# --solutions--

```js
function popShift(arr) {
  let popped = arr.pop(); // Change this line
  let shifted = arr.shift(); // Change this line
  return [shifted, popped];
}
```
