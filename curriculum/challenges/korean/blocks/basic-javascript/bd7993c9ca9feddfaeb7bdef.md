---
id: bd7993c9ca9feddfaeb7bdef
title: JavaScript로 소수를 소수로 나누기
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

이제 한 소수를 다른 소수로 나누어 보겠습니다.

# --instructions--

`0.0`를 변경하여 `quotient`이 `2.2`와 같아지게 하세요.

# --hints--

변수 `quotient`는 `2.2`와 같아야 합니다.

```js
assert(quotient === 2.2);
```

4.4를 2로 나누려면 `/` 연산자를 사용하세요.

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

몫 변수는 한 번만 할당되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
