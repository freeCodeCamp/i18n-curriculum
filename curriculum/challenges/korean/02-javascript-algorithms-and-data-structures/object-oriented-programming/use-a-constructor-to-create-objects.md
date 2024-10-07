---
id: 587d7dad367417b2b2512b78
title: 객체 생성을 위한 생성자 사용하기
challengeType: 1
forumTopicId: 18233
dashedName: use-a-constructor-to-create-objects
---

# --description--

Here's the `Bird` constructor from the previous challenge:

```js
function Bird() {
  this.name = "Albert";
  this.color  = "blue";
  this.numLegs = 2;
}

let blueBird = new Bird();
```

**주의:** 생성자 안의 `this`는 항상 생성이된 객체를 가리킵니다.

`new` 연산자가 생성자를 호출할 때 사용된다는 점에 주의를 기울일 필요가 있습니다. 이것이 자바스크립트에게 `blueBird`라는 `Bird`의 새로운 인스턴스를 만들라고 하는 것입니다. `new` 연산자 없이는 생성자의 `this`는 새로 생성된 객체를 가리키지 않으며 예상하지 못한 결과를 줄 지도 모릅니다. 이제 `blueBird`는 생성자 `Bird`안에 정의된 모든 속성을 가지고 있습니다.

```js
blueBird.name;
blueBird.color;
blueBird.numLegs;
```

다른 객체처럼 그 속성들은 접근과 수정이 가능합니다.

```js
blueBird.name = 'Elvira';
blueBird.name;
```

# --instructions--

`Dog`의 새로운 인스턴스를 생성하기 위해 지난 과제에서 본 생성자`Dog`를 사용하고 해당 인스턴스를 변수 `hound`로 지정하시오.

# --hints--

`hound`는 생성자 `Dog`를 사용하여 생성이 되어야 합니다.

```js
assert(hound instanceof Dog);
```

`Dog`의 인스턴스를 생성하기 위해 `new` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/new/g));
```

# --seed--

## --seed-contents--

```js
function Dog() {
  this.name = "Rupert";
  this.color = "brown";
  this.numLegs = 4;
}
// Only change code below this line
```

# --solutions--

```js
function Dog() {
  this.name = "Rupert";
  this.color = "brown";
  this.numLegs = 4;
}
const hound = new Dog();
```
