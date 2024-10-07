---
id: 587d7dad367417b2b2512b75
title: 객체 안에 메소드 생성하기
challengeType: 1
forumTopicId: 301318
dashedName: create-a-method-on-an-object
---

# --description--

Objects can have a special type of property, called a <dfn>method</dfn>.

메소드는 함수인 속성입니다. 이 메소드로 객체에 다른 행동을 추가됩니다. 한 메소드를 가진 `duck` 예시입니다.

```js
let duck = {
  name: "Aflac",
  numLegs: 2,
  sayName: function() {return "The name of this duck is " + duck.name + ".";}
};
duck.sayName();
```

이 예시에서는 `duck`의 이름을 포함한 문장을 반환하는 함수인 메소드 `sayName`를 추가합니다. 이 메소드가 `duck.name`를 사용하여 반환문에 있는 속성 `name`에 접근했다는 것을 짚고 넘어가시길 바랍니다. 다음 과제에서 이를 위한 다른 방법에 대한 알아볼 것입니다.

# --instructions--

객체 `dog`를 사용하고 메소드 `sayLegs`를 생성합니다. 이 메소드는 `This dog has 4 legs.`라는 문장을 반환해야 합니다.

# --hints--

`dog.sayLegs()`는 함수이어야 합니다.

```js
assert(typeof dog.sayLegs === 'function');
```

`dog.sayLegs()`는 주어진 문자열을 반환해야 합니다 - 구두점과 띄어쓰기도 신경써야 합니다.

```js
assert(dog.sayLegs() === 'This dog has 4 legs.');
```

# --seed--

## --seed-contents--

```js
let dog = {
  name: "Spot",
  numLegs: 4,

};

dog.sayLegs();
```

# --solutions--

```js
let dog = {
  name: "Spot",
  numLegs: 4,
  sayLegs () {
    return 'This dog has ' + this.numLegs + ' legs.';
  }
};

dog.sayLegs();
```
