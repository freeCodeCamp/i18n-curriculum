---
id: 587d7daf367417b2b2512b7f
title: 프로토타입을 새 객체로 바꾸기
challengeType: 1
forumTopicId: 301316
dashedName: change-the-prototype-to-a-new-object
---

# --description--

Up until now you have been adding properties to the `prototype` individually:

```js
Bird.prototype.numLegs = 2;
```

속성들을 몇개 추가하고 나면 이 작업은 단조롭고 지루해집니다.

```js
Bird.prototype.eat = function() {
  console.log("nom nom nom");
}

Bird.prototype.describe = function() {
  console.log("My name is " + this.name);
}
```

더 효과적은 방법은 `prototype`를 해당 속성들을 갖고 있는 새 객체로 설정하는 것입니다. 이 방식이면 속성들을 한 번에 추가할 수 있습니다:

```js
Bird.prototype = {
  numLegs: 2, 
  eat: function() {
    console.log("nom nom nom");
  },
  describe: function() {
    console.log("My name is " + this.name);
  }
};
```

# --instructions--

`prototype`을 새 객체로 설정하는 방식에 따라 속성 `numLegs`과 두 메소드 `eat()`와 `describe()`를 `Dog`의 `prototype`에 추가하시오.

# --hints--

`Dog.prototype`는 새 객체로 설정되어야 합니다.

```js
assert(/Dog\.prototype\s*?=\s*?{/.test(__helpers.removeJSComments(code)));
```

`Dog.prototype`는 속성 `numLegs`을 가져야 합니다.

```js
assert(Dog.prototype.numLegs !== undefined);
```

`Dog.prototype`는 메소드 `eat()`를 가져야 합니다.

```js
assert(typeof Dog.prototype.eat === 'function');
```

`Dog.prototype`는 메소드 `describe()`를 가져야 합니다.

```js
assert(typeof Dog.prototype.describe === 'function');
```

# --seed--

## --seed-contents--

```js
function Dog(name) {
  this.name = name;
}

Dog.prototype = {
  // Only change code below this line

};
```

# --solutions--

```js
function Dog(name) {
  this.name = name;
}
Dog.prototype = {
numLegs: 4,
  eat () {
    console.log('nom nom nom');
  },
  describe () {
    console.log('My name is ' + this.name);
  }
};
```
