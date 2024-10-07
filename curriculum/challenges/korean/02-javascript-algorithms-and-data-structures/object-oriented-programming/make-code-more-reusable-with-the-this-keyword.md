---
id: 587d7dad367417b2b2512b76
title: This 키워드로 코드 재사용성 향상시키기
challengeType: 1
forumTopicId: 301321
dashedName: make-code-more-reusable-with-the-this-keyword
---

# --description--

The last challenge introduced a method to the `duck` object. It used `duck.name` dot notation to access the value for the `name` property within the return statement:

```js
sayName: function() {return "The name of this duck is " + duck.name + ".";}
```

객체의 속성에 접근하는 올바른 방법이지만 여기에는 함정이 있습니다. 이 변수가 이름이 변경되면 이 본래 이름을 가리키는 모든 코드가 수정이 되어야 합니다. 짧게 정의된 객체에서는 문제가 되지 않지만 객체의 속성들을 가리키는 값이 많은 객체라면 에러가 발생할 확률이 높아집니다.

이 문제를 피하기 위한 방법은 `this`를 사용하는 것입니다.

```js
let duck = {
  name: "Aflac",
  numLegs: 2,
  sayName: function() {return "The name of this duck is " + this.name + ".";}
};
```

`this`는 깊이 다루어야할 주제이며 위 예시는 이를 사용하기 위한 한가지 방법일 뿐입니다. 현재 맥락에서는 `this`는 메소드에 연관된 객체를 가리킵니다: `duck` 객체의 이름이 `mallard`로 변경되어도 코드에서 모든 `duck`의 참조 값을 찾을 필요가 없습니다. 이로 인해 재사용 가능하고 가독성이 향상됩니다.

# --instructions--

모든 `dog` 참조 값을 지우기 위해 메소드 `dog.sayLegs`를 수정하시오. 적절한 안내를 위해 `duck` 예시를 사용하시오.

# --hints--

`dog.sayLegs()`는 주어진 문자열을 반환해야 합니다.

```js
assert(dog.sayLegs() === 'This dog has 4 legs.');
```

`dog`의 속성 값 `numLegs` 에 접근하기 위해 반드시 `this` 키워드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/this\.numLegs/g));
```

# --seed--

## --seed-contents--

```js
let dog = {
  name: "Spot",
  numLegs: 4,
  sayLegs: function() {return "This dog has " + dog.numLegs + " legs.";}
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
