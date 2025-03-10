---
id: 587d7b7e367417b2b2512b23
title: parseInt 함수 사용하기
challengeType: 1
forumTopicId: 301183
dashedName: use-the-parseint-function
---

# --description--

The `parseInt()` function parses a string and returns an integer. Here's an example:

```js
const a = parseInt("007");
```

위의 함수는 `007`이라는 문자열을 정수 `7`로 변환합니다. 만약 문자열의 첫 번째 글자가 숫자로 변환될 수 없다면, `NaN`을 반환합니다.

# --instructions--

`convertToInteger`에서 `parseInt()` 함수를 사용해서 문자열로 주어진 `str` 인풋값을 정수로 전환한 후 이를 반환해 주세요.

# --hints--

`convertToInteger` 함수 내에서 `parseInt()` 함수를 사용해야 합니다.

```js
assert(/parseInt/g.test(__helpers.removeJSComments(code)));
```

`convertToInteger("56")`는 숫자를 반환해야 합니다.

```js
assert(typeof convertToInteger('56') === 'number');
```

`convertToInteger("56")`는 56을 반환해야 합니다.

```js
assert(convertToInteger('56') === 56);
```

`convertToInteger("77")`는 77을 반환해야 합니다.

```js
assert(convertToInteger('77') === 77);
```

`convertToInteger("JamesBond")`는 `NaN`을 반환해야 합니다.

```js
assert.isNaN(convertToInteger('JamesBond'));
```

# --seed--

## --seed-contents--

```js
function convertToInteger(str) {

}

convertToInteger("56");
```

# --solutions--

```js
function convertToInteger(str) {
  return parseInt(str);
}
```
