---
id: cf1111c1c11feddfaeb4bdef
title: JavaScript로 한 숫자에서 다른 숫자 빼기
challengeType: 1
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

한 숫자에서 다른 숫자를 빼는 것도 할 수 있습니다.

JavaScript는 뺄셈에 `-` 기호를 사용합니다.

**예시**

```js
const myVar = 12 - 6;
```

`myVar`의 값은 `6`가 됩니다.
# --instructions--

차이가 `0`가 되도록 `12`를 변경하세요.

# --hints--

변수 `difference`는 `12`와 같아야 합니다.

```js
assert(difference === 12);
```

`45`에서 숫자 하나만 빼야 합니다.

```js
assert(/difference=45-33;?/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --seed-contents--

```js
const difference = 45 - 0;
```

# --solutions--

```js
const difference = 45 - 33;
```
