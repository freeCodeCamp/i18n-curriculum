---
id: 587d7b7a367417b2b2512b12
title: slice()를 사용하여 배열의 요소를 복사하기
challengeType: 1
forumTopicId: 301158
dashedName: copy-array-items-using-slice
---

# --description--

다음으로 다룰 메서드는 `slice()`입니다. `slice()`는 배열을 수정하는 대신 주어진 수의 요소를 새 배열로 복사하거나 *추출*합니다. 이때 호출된 배열은 영향을 받지 않습니다. `slice()`는 단 두 개의 매개변수를 사용합니다. 첫 번째는 추출을 시작할 인덱스이고, 두 번째는 추출을 중지할 인덱스입니다 (추출은 이 인덱스의 요소를 포함하지 않고 수행됩니다). 아래 코드를 참고하세요.

```js
let weatherConditions = ['rain', 'snow', 'sleet', 'hail', 'clear'];

let todaysWeather = weatherConditions.slice(1, 3);
```

`todaysWeather`는 `['snow', 'sleet']`의 값을 가지고 있을 것이며, `weatherConditions`는 여전히 `['rain', 'snow', 'sleet', 'hail', 'clear']`를 가지고 있을 것입니다.

실제로 우리는 기존 배열에서 요소를 추출하여 새 배열을 만들었습니다.

# --instructions--

우리는 `forecast`라는 함수를 정의했습니다. 이 함수는 배열을 인수로 받습니다. `slice()`를 사용하여 인수 배열에서 정보를 추출하고 문자열 요소 `warm`과 `sunny`를 포함하는 새 배열을 반환하도록 함수를 수정합니다.

# --hints--

`forecast`는 `["warm", "sunny"]`를 반환해야 합니다.

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

`forecast` 함수는 `slice()` 메소드를 활용해야 합니다.

```js
assert(/\.slice\(/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function forecast(arr) {
  // Only change code below this line

  return arr;
}

// Only change code above this line
console.log(forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']));
```

# --solutions--

```js
function forecast(arr) {
  return arr.slice(2,4);
}
```
