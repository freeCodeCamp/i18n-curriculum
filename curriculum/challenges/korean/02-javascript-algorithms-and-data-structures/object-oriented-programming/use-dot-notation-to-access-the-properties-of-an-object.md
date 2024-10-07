---
id: 587d7dac367417b2b2512b74
title: 객체의 속성 접근을 위한 점 표기법 사용하기
challengeType: 1
forumTopicId: 301333
dashedName: use-dot-notation-to-access-the-properties-of-an-object
---

# --description--

The last challenge created an object with various properties. Now you'll see how to access the values of those properties. Here's an example:

```js
let duck = {
  name: "Aflac",
  numLegs: 2
};
console.log(duck.name);
```

점 표기법은 `Aflac`의 값을 접근하기 위해 속성의 이름 `name`을 객체의 이름 `duck` 뒤에 붙여서 사용됩니다.

# --instructions--

객체 `dog`의 두 속성을 콘솔에 출력하시오.

# --hints--

객체 `dog`의 속성 `name`의 값을 출력하기 위해 `console.log`을 사용해야 합니다.

```js
assert(/console.log\(.*dog\.name.*\)/g.test(__helpers.removeJSComments(code)));
```

객체 `dog`의 속성 `numLegs`의 값을 출력하기 위해 `console.log`을 사용해야 합니다.

```js
assert(/console.log\(.*dog\.numLegs.*\)/g.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
let dog = {
  name: "Spot",
  numLegs: 4
};
// Only change code below this line
```

# --solutions--

```js
let dog = {
  name: "Spot",
  numLegs: 4
};
console.log(dog.name);
console.log(dog.numLegs);
```
