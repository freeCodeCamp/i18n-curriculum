---
id: cf1111c1c11feddfaeb3bdef
title: JavaScript에서 2개의 숫자를 더하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cM2KBAG'
forumTopicId: 16650
dashedName: add-two-numbers-with-javascript
---

# --description--

`Number` is a data type in JavaScript which represents numeric data.

그러면 이제 JavaScript에서 2개의 숫자를 더해봅시다.

JavaScript에서는 `+` 기호를 더하기 연산자로 2개의 숫자 사이에 넣어서 사용합니다.

**예:**

```js
const myVar = 5 + 10;
```

`myVar`의 값은 이제 `15`를 갖고 있습니다.

# --instructions--

`0`을 합이 `20`이 되도록 변경해 주세요.

# --hints--

`sum`은 `20`과 같지 않으면 안됩니다.

```js
assert(sum === 20);
```

`+` 연산자를 사용해 주세요.

```js
assert(/\+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'sum = '+z;})(sum);
```

## --seed-contents--

```js
const sum = 10 + 0;
```

# --solutions--

```js
const sum = 10 + 10;
```
