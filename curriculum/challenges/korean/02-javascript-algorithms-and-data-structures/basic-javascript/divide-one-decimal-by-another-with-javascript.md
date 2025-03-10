---
id: bd7993c9ca9feddfaeb7bdef
title: JavaScript에서 하나의 실수를 다른 실수로 나누기
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

Now let's divide one decimal by another.

# --instructions--

`0.0`을 변경해서, `quotient`(나눈 몫) 이 `2.2`와 같도록 해주세요.

# --hints--

변수 `quotient`의 값은 `2.2`와 동일해야 합니다.

```js
assert(quotient === 2.2);
```

당신은 `/` 연산자를 사용해서 4.4를 2.0으로 나눠야 합니다.

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

변수 quotient에는 한번만 할당이 되어야 합니다.

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
