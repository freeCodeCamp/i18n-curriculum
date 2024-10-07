---
id: 587d7daf367417b2b2512b7d
title: 모든 속성 반복(Iterate) 하기
challengeType: 1
forumTopicId: 301320
dashedName: iterate-over-all-properties
---

# --description--

You have now seen two kinds of properties: <dfn>own properties</dfn> and `prototype` properties. Own properties are defined directly on the object instance itself. And prototype properties are defined on the `prototype`.

```js
function Bird(name) {
  this.name = name;  //own property
}

Bird.prototype.numLegs = 2; // prototype property

let duck = new Bird("Donald");
```

여기 `duck`의 고유 속성을 `ownProps` 배열에 추가하고 `prototype` 속성을 `prototypeProps` 배열에 추가하는 방법이 있습니다.

```js
let ownProps = [];
let prototypeProps = [];

for (let property in duck) {
  if(duck.hasOwnProperty(property)) {
    ownProps.push(property);
  } else {
    prototypeProps.push(property);
  }
}

console.log(ownProps);
console.log(prototypeProps);
```

`console.log(ownProps)`은 콘솔에 `["name"]`를 보여주고 `console.log(prototypeProps)`은 `["numLegs"]`을 보여줄 것입니다.

# --instructions--

`beagle`의 모든 속성을 `ownProps` 배열에 추가하시오. `Dog`의 모든 `prototype` 속성을 `prototypeProps` 배열에 추가하시오.

# --hints--

`ownProps` 배열은 오직 `name`만 가지고 있어야 합니다.

```js
assert.deepEqual(ownProps, ['name']);
```

`prototypeProps` 배열은 오직 `numLegs`을 가져야 합니다.

```js
assert.deepEqual(prototypeProps, ['numLegs']);
```

내장 메소드인 `Object.keys()`을 사용하지 않고 과제를 해결해야 합니다.

```js
assert(!/\Object.keys/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function Dog(name) {
  this.name = name;
}

Dog.prototype.numLegs = 4;

let beagle = new Dog("Snoopy");

let ownProps = [];
let prototypeProps = [];

// Only change code below this line
```

# --solutions--

```js
function Dog(name) {
  this.name = name;
}

Dog.prototype.numLegs = 4;

let beagle = new Dog("Snoopy");

let ownProps = [];
let prototypeProps = [];
for (let prop in beagle) {
  if (beagle.hasOwnProperty(prop)) {
    ownProps.push(prop);
  } else {
    prototypeProps.push(prop);
  }
}
```
