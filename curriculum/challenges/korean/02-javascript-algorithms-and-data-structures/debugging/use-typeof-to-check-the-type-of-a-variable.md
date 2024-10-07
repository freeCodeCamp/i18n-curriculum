---
id: 587d7b84367417b2b2512b34
title: typeof를 사용해 변수의 타입 확인하기
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

다음은 `typeof`를 사용하는 예시입니다.

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

콘솔에는 문자열 `string`, `number`, `object`, `object`가 순서대로 표시됩니다.

JavaScript는 일곱 가지 원시(변경 불가능한) 데이터 타입을 인식합니다. 이는 `Boolean`, `Null`, `Undefined`, `Number`, `String`, ES6에서 새로 추가된 `Symbol`, 그리고 ES2020에서 새로 추가된 `BigInt` 입니다. 변경 가능한 데이터 타입은 `Object`로 인식합니다. 자바스크립트에서, 배열은 기술적으로 객체의 한 종류라는 것에 유의하세요.

# --instructions--

두 변수 `seven`과 `three` 각각의 `typeof`을 확인하기 위해, 두 개의 `console.log()` 문을 추가하세요.

# --hints--

변수들의 타입을 확인하기 위해 두 개의 `console.log()`문 안에 `typeof`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

`seven`라는 변수의 타입을 확인하기 위해 `typeof`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

`three`라는 변수의 타입을 확인하기 위해 `typeof`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
