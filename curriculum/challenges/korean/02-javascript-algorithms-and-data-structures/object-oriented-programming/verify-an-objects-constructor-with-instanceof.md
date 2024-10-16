---
id: 587d7dae367417b2b2512b7a
title: Instanceof로 객체의 생성자 검증하기
challengeType: 1
forumTopicId: 301337
dashedName: verify-an-objects-constructor-with-instanceof
---

# --description--

Anytime a constructor function creates a new object, that object is said to be an <dfn>instance</dfn> of its constructor. JavaScript gives a convenient way to verify this with the `instanceof` operator. `instanceof` allows you to compare an object to a constructor, returning `true` or `false` based on whether or not that object was created with the constructor. Here's an example:

```js
let Bird = function(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}

let crow = new Bird("Alexis", "black");

crow instanceof Bird;
```

이 `instanceof` 메소드는 `true`를 반환할 것입니다.

객체가 생성자 없이 생성되었다면 `instanceof`가 해당 생성자의 인스턴스가 아님을 확인할 것입니다.

```js
let canary = {
  name: "Mildred",
  color: "Yellow",
  numLegs: 2
};

canary instanceof Bird;
```

이 `instanceof` 메소드는 `false`를 반환할 것입니다.

# --instructions--

생성자 `House`의 새로운 인스턴스를 생성하고 `myHouse`라고 이름 짓고 침실의 개수를 전달하시오. 그런 다음 `instanceof`을 이용하여 `House`의 인스턴스인지 검증하시오.

# --hints--

`myHouse`는 숫자로 설정된 속성 `numBedrooms`을 가져야 합니다.

```js
assert(typeof myHouse.numBedrooms === 'number');
```

`instanceof` 연사자를 이용하여 `myHouse`가 `House`의 인스턴스인지 검증해야 합니다.

```js
assert(/myHouse\s*instanceof\s*House/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function House(numBedrooms) {
  this.numBedrooms = numBedrooms;
}

// Only change code below this line
```

# --solutions--

```js
function House(numBedrooms) {
  this.numBedrooms = numBedrooms;
}
const myHouse = new House(4);
console.log(myHouse instanceof House);
```
