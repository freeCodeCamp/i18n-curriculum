---
id: 56533eb9ac21ba0edf2244b3
title: 섭씨를 화씨로 변환하기
challengeType: 1
forumTopicId: 16806
dashedName: convert-celsius-to-fahrenheit
---

# --description--

The formula to convert from Celsius to Fahrenheit is the temperature in Celsius times `9/5`, plus `32`.

섭씨 온도를 나타내는 변수 `celsius`가 있습니다. 주어진 변수 `fahrenheit` 를 사용하여 주어진 섭씨 온도와 일치하는 화씨 온도를 해당 변수에 할당하시오. 섭씨 온도를 화씨 온도로 바꾸기 위해 위에서 언급한 공식을 사용하시오.

# --hints--

`convertCtoF(0)`는 숫자를 반환해야 합니다.

```js
assert(typeof convertCtoF(0) === 'number');
```

`convertCtoF(-30)`는 `-22` 를 반환해야 합니다.

```js
assert(convertCtoF(-30) === -22);
```

`convertCtoF(-10)`는 `14`를 반환해야 합니다.

```js
assert(convertCtoF(-10) === 14);
```

`convertCtoF(0)`는 `32`를 반환해야 합니다.

```js
assert(convertCtoF(0) === 32);
```

`convertCtoF(20)`는 `68`을 반환해야 합니다.

```js
assert(convertCtoF(20) === 68);
```

`convertCtoF(30)`는 `86`을 반환해야 합니다.

```js
assert(convertCtoF(30) === 86);
```

# --seed--

## --seed-contents--

```js
function convertCtoF(celsius) {
  let fahrenheit;
  return fahrenheit;
}

convertCtoF(30);
```

# --solutions--

```js
function convertCtoF(celsius) {
  let fahrenheit = celsius * 9/5 + 32;
  return fahrenheit;
}

convertCtoF(30);
```
