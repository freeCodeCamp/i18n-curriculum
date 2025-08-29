---
id: 587d7b88367417b2b2512b46
title: 함수에 대한 기본 매개변수 설정
challengeType: 1
forumTopicId: 301209
dashedName: set-default-parameters-for-your-functions
---

# --description--

함수를 좀 더 유용하게 쓰기 위해서, ES6에서 함수에 대한 <dfn>기본 매개변수</dfn>가 도입되었습니다.

아래 코드에서 확인해 보세요.

```js
const greeting = (name = "Anonymous") => "Hello " + name;

console.log(greeting("John"));
console.log(greeting());
```

콘솔은 문자열 `Hello John`과 `Hello Anonymous`를 보여줄 것입니다.

매개변수가 지정되지 않았을 때 (미지정 상태일 경우) 기본 매개변수가 사용됩니다. 위의 예에서 볼 수 있듯이, 매개변수 `name`은 매개변수에 대한 값을 제공하지 않으면 기본값 `Anonymous`를 받게 됩니다. 원하는 만큼 많은 기본값을 매개변수에 추가할 수 있습니다.

# --instructions--

기본 매개변수를 추가하여 함수 `increment`를 수정해서 `value`가 지정되지 않으면 `number`에 1을 추가하도록 하세요.

# --hints--

`increment(5, 2)`의 결과는 `7`이어야 합니다.

```js
assert(increment(5, 2) === 7);
```

`increment(5)`의 결과는 `6`이어야 합니다.

```js
assert(increment(5) === 6);
```

`value`의 기본 매개변수 값으로 `1`이 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/value\s*=\s*1/g));
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const increment = (number, value) => number + value;
// Only change code above this line
```

# --solutions--

```js
const increment = (number, value = 1) => number + value;
```
