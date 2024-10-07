---
id: 587d7b7e367417b2b2512b22
title: 진수와 함께 parseInt 함수 사용하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c6K4Kh3'
forumTopicId: 301182
dashedName: use-the-parseint-function-with-a-radix
---

# --description--

The `parseInt()` function parses a string and returns an integer. It takes a second argument for the radix, which specifies the base of the number in the string. The radix can be an integer between 2 and 36.

함수 호출은 다음과 같습니다:

```js
parseInt(string, radix);
```

그리고 여기 예시가 있습니다:

```js
const a = parseInt("11", 2);
```

radix 변수는 `11`이 이진법, 즉 2진수 체계에 있음을 나타냅니다. 이 예시는 문자열 `11`을 정수 `3`으로 변환합니다.

# --instructions--

이진수를 정수로 변환하고 반환하도록 `convertToInteger` 함수에 `parseInt()`를 사용하시오.

# --hints--

`convertToInteger`는 `parseInt()` 함수를 사용해야 합니다

```js
assert(/parseInt/g.test(__helpers.removeJSComments(code)));
```

`convertToInteger("10011")`는 숫자를 반환해야 합니다

```js
assert(typeof convertToInteger('10011') === 'number');
```

`convertToInteger("10011")`는 19를 반환해야 합니다

```js
assert(convertToInteger('10011') === 19);
```

`convertToInteger("111001")`는 57을 반환해야 합니다

```js
assert(convertToInteger('111001') === 57);
```

`convertToInteger("JamesBond")`는 `NaN`을 반환해야 합니다

```js
assert.isNaN(convertToInteger('JamesBond'));
```

# --seed--

## --seed-contents--

```js
function convertToInteger(str) {

}

convertToInteger("10011");
```

# --solutions--

```js
function convertToInteger(str) {
  return parseInt(str, 2);
}
```
