---
id: cf1111c1c11feddfaeb4bdef
title: JavaScript로 한 숫자에서 다른 숫자를 빼기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cP3yQtk'
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

We can also subtract one number from another.

JavaScript에서는 빼기 기호로 `-`를 사용합니다.

**예:**

```js
const myVar = 12 - 6;
```

`myVar`의 값은 `6`이 될 것입니다.
# --instructions--

`0`을 계산식의 차가 `12`가 되도록 변경해 주세요.

# --hints--

변수 `difference`는 `12` 여야 합니다.

```js
assert(difference === 12);
```

`45`에서 단 하나의 숫자만 빼야 합니다.

```js
assert(/difference=45-33;?/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'difference = '+z;})(difference);
```

## --seed-contents--

```js
const difference = 45 - 0;
```

# --solutions--

```js
const difference = 45 - 33;
```
