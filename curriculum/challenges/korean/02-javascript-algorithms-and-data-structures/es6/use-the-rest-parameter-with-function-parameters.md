---
id: 587d7b88367417b2b2512b47
title: 함수 파라미터와 나머지 파라미터 함께 사용하기
challengeType: 1
forumTopicId: 301221
dashedName: use-the-rest-parameter-with-function-parameters
---

# --description--

In order to help us create more flexible functions, ES6 introduces the <dfn>rest parameter</dfn> for function parameters. With the rest parameter, you can create functions that take a variable number of arguments. These arguments are stored in an array that can be accessed later from inside the function.

아래 코드에서 확인해 보세요.

```js
function howMany(...args) {
  return "You have passed " + args.length + " arguments.";
}
console.log(howMany(0, 1, 2));
console.log(howMany("string", null, [1, 2, 3], { }));
```

콘솔에서는 `You have passed 3 arguments.`라는 문자열과 `You have passed 4 arguments.`라는 문자열을 보여줄 것입니다.

나머지 파라미터는 `arguments` 객체를 사용할 필요를 없게 하고, 함수 `howMany`에 전달된 파라미터를 요소로 하는 배열에서 배열 메서드를 사용할 수 있게 해줍니다.

# --instructions--

나머지 파라미터를 사용하여 함수 `sum`가 임의 개수의 인수를 전달받아 그 인수의 합을 반환할 수 있도록 수정하세요.

# --hints--

`sum(0,1,2)`의 결과는 3이어야 합니다.

```js
assert(sum(0, 1, 2) === 3);
```

`sum(1,2,3,4)`의 결과는 10이어야 합니다.

```js
assert(sum(1, 2, 3, 4) === 10);
```

`sum(5)`의 결과는 5여야 합니다.

```js
assert(sum(5) === 5);
```

`sum()`의 결과는 0이어야 합니다.

```js
assert(sum() === 0);
```

함수 `sum`은 파라미터 `args`에 나머지 파라미터 문법(`...`)을 이용하는 화살표 함수여야 합니다.

```js
assert(__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/sum=\(\.\.\.args\)=>/));
```

# --seed--

## --seed-contents--

```js
const sum = (x, y, z) => {
  const args = [x, y, z];
  let total = 0;
  for (let i = 0; i < args.length; i++) {
    total += args[i];
  }
  return total;
}
```

# --solutions--

```js
const sum = (...args) => {
  let total = 0;
  for (let i = 0; i < args.length; i++) {
    total += args[i];
  }
  return total;
}
```
