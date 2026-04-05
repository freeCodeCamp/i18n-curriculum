---
id: cf1111c1c11feddfaeb6bdef
title: JavaScript로 한 숫자를 다른 숫자로 나누기
challengeType: 1
forumTopicId: 17566
dashedName: divide-one-number-by-another-with-javascript
---

# --description--

한 숫자를 다른 숫자로 나눌 수도 있습니다.

JavaScript는 나누기 연산에 `/` 기호를 사용합니다.

**예시**

```js
const myVar = 16 / 2;
```

`myVar`의 값은 이제 `8`입니다.
# --instructions--

`0`를 변경하여 `quotient`가 `2`와 같게 만드세요.

# --hints--

변수 `quotient`는 2와 같아야 합니다.

```js
assert(quotient === 2);
```

`/` 연산자를 사용해야 합니다.

```js
assert(/\d+\s*\/\s*\d+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const quotient = 66 / 0;
```

# --solutions--

```js
const quotient = 66 / 33;
```
