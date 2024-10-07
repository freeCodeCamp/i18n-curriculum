---
id: 587d7b8b367417b2b2512b50
title: ES6로 간결하고 명시적으로 함수 작성하기
challengeType: 1
forumTopicId: 301224
dashedName: write-concise-declarative-functions-with-es6
---

# --description--

When defining functions within objects in ES5, we have to use the keyword `function` as follows:

```js
const person = {
  name: "Taylor",
  sayHello: function() {
    return `Hello! My name is ${this.name}.`;
  }
};
```

ES6 문법을 쓰면, 키워드 `function`과 콜론(;) 없이 객체 내 함수를 정의할 수 있습니다. 아래는 ES6 문법 예시입니다.

```js
const person = {
  name: "Taylor",
  sayHello() {
    return `Hello! My name is ${this.name}.`;
  }
};
```

# --instructions--

앞서 설명한 간결한 ES6 문법을 적용하여 객체 `bicycle` 내 함수 `setGear`를 리펙터링 하세요.

# --hints--

ES5 함수 표현식은 사용하지 않습니다.

```js
assert(!__helpers.removeJSComments(code).match(/function/));
```

함수 `setGear`는 함수 선언문 형식이어야 합니다.

```js
assert(
  typeof bicycle.setGear === 'function' && __helpers.removeJSComments(code).match(/setGear\s*\(.+\)\s*\{/)
);
```

`bicycle.setGear(48)` 는 `gear` 의 값을 48로 변경해야 합니다.

```js
bicycle.setGear(48);
assert(bicycle.gear === 48);
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const bicycle = {
  gear: 2,
  setGear: function(newGear) {
    this.gear = newGear;
  }
};
// Only change code above this line
bicycle.setGear(3);
console.log(bicycle.gear);
```

# --solutions--

```js
const bicycle = {
  gear: 2,
  // setGear: function(newGear) {
  setGear(newGear) {
    this.gear = newGear;
  }
};
bicycle.setGear(3);
```
