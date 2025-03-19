---
id: 587d78b2367417b2b2512b0e
title: push() 와 unshift() 를 사용해서 배열에 요소 추가하기
challengeType: 1
forumTopicId: 301151
dashedName: add-items-to-an-array-with-push-and-unshift
---

# --description--

배열이 여러 데이터 타입을 넣을 수 있는 것처럼, 배열의 길이는 고정되어 있지 않습니다. 배열은 요소의 개수와 관계없이 정의할 수 있고, 나중에 요소를 추가하거나 삭제할 수도 있습니다. 다시 말해, 배열은 <dfn>mutable</dfn> 합니다. 즉, 만든 후 배열을 변경할 수 있습니다. 이번 챌린지에서는 배열을 프로그래밍적으로 수정할 수 있는 두 가지 메서드, `Array.push()`와 `Array.unshift()`를 살펴보겠습니다.

두 메서드 모두 하나 이상의 요소를 매개변수로 받아 그 요소를 호출된 메서드가 있는 배열에 추가합니다. `push()` 메서드는 배열의 끝에 요소를 추가하고, `unshift()` 메서드는 배열의 시작에 요소를 추가합니다. 아래 코드를 참고하세요.

```js
let twentyThree = 'XXIII';
let romanNumerals = ['XXI', 'XXII'];

romanNumerals.unshift('XIX', 'XX');
```

`romanNumerals`(로마 숫자) 가 `['XIX', 'XX', 'XXI', 'XXII']` 의 값을 갖고 있습니다.

```js
romanNumerals.push(twentyThree);
```

`romanNumerals`(로마 숫자) 가 `['XIX', 'XX', 'XXI', 'XXII', 'XXIII']` 의 값을 갖고 있습니다. 변수를 전달할 수 있기 때문에 좀 더 유연하게 배열의 데이터를 동적으로 수정할 수 있습니다.

# --instructions--

우리는 `mixedNumbers`라는 함수를 정의했는데, 여기에 배열을 인수로 전달하고 있습니다. `push()`와 `unshift()`로 배열의 시작에 `'I', 2, 'three'`를 추가하고 끝에 `7, 'VIII', 9`를 추가하여 1에서 9까지의 숫자를 상징하는 요소가 순서대로 담긴 배열을 반환하도록 함수를 수정하세요.

# --hints--

`mixedNumbers(["IV", 5, "six"])`는 이제 `["I", 2, "three", "IV", 5, "six", 7, "VIII", 9]`를 반환해야 합니다.

```js
assert.deepEqual(mixedNumbers(['IV', 5, 'six']), [
  'I',
  2,
  'three',
  'IV',
  5,
  'six',
  7,
  'VIII',
  9
]);
```

`mixedNumbers` 함수는 `push()` 메서드를 활용해야 합니다.

```js
assert(mixedNumbers.toString().match(/\.push/));
```

`mixedNumbers` 함수는 `unshift()` 메서드를 활용해야 합니다.

```js
assert(mixedNumbers.toString().match(/\.unshift/));
```

# --seed--

## --seed-contents--

```js
function mixedNumbers(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(mixedNumbers(['IV', 5, 'six']));
```

# --solutions--

```js
function mixedNumbers(arr) {
  arr.push(7,'VIII',9);
  arr.unshift('I',2,'three');
  return arr;
}
```
