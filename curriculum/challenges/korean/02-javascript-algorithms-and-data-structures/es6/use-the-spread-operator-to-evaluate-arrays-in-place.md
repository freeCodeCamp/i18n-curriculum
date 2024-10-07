---
id: 587d7b89367417b2b2512b48
title: 전개 연산자로 배열 펼치기
challengeType: 1
forumTopicId: 301222
dashedName: use-the-spread-operator-to-evaluate-arrays-in-place
---

# --description--

ES6 introduces the <dfn>spread operator</dfn>, which allows us to expand arrays and other expressions in places where multiple parameters or elements are expected.

아래 ES5 코드는 `apply()` 메서드로 배열 내 최댓값을 구합니다.

```js
var arr = [6, 89, 3, 45];
var maximus = Math.max.apply(null, arr);
```

`maximus`의 값은 `89`가 됩니다.

최댓값을 구하기 위해서는 `Math.max.apply(null, arr)`를 사용할 수 밖에 없었는데, `Math.max(arr)`는 `NaN`을 반환하기 때문입니다. `Math.max()`는 배열 자체가 아니라 콤마로 구분한 인수가 필요합니다. 전개 연산자는 위 문법을 훨씬 더 가독성 있고 관리하기 쉽게 바꿔줍니다.

```js
const arr = [6, 89, 3, 45];
const maximus = Math.max(...arr);
```

`maximus`의 값은 `89`가 됩니다.

`...arr`는 해체한 배열을 반환합니다. 즉, 배열을 펼칩니다. 하지만, 전개 연산자는 함수에 전달하는 인수 자리, 배열 리터럴 자리와 같이 정해진 자리에서만 작동합니다. 예시:

```js
const spreaded = [...arr];
```

반면에 아래 코드는 작동하지 않습니다.

```js
const spreaded = ...arr;
```

# --instructions--

전개 연산자로 배열 `arr1`의 모든 내용을 다른 배열 `arr2`로 복사하세요.

# --hints--

`arr2`은 `arr1`의 내용을 제대로 복사해야 합니다.

```js
assert(arr2.every((v, i) => v === arr1[i]) && arr2.length);
```

전개 연산자 `...`를 `arr1` 복사를 위해 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/Array\(\s*\.\.\.arr1\s*\)|\[\s*\.\.\.arr1\s*\]/));
```

배열 `arr1`가 변경되어도, 배열 `arr2`은 변경되지 않아야 합니다.

```js
assert((arr1, arr2) => {
  arr1.push('JUN');
  return arr2.length < arr1.length;
});
```

# --seed--

## --seed-contents--

```js
const arr1 = ['JAN', 'FEB', 'MAR', 'APR', 'MAY'];
let arr2;

arr2 = [];  // Change this line

console.log(arr2);
```

# --solutions--

```js
const arr1 = ['JAN', 'FEB', 'MAR', 'APR', 'MAY'];
let arr2;

arr2 = [...arr1];
```
