---
id: 587d7db0367417b2b2512b83
title: 반복을 피하기 위한 상속 사용하기
challengeType: 1
forumTopicId: 301334
dashedName: use-inheritance-so-you-dont-repeat-yourself
---

# --description--

There's a principle in programming called <dfn>Don't Repeat Yourself (DRY)</dfn>. The reason repeated code is a problem is because any change requires fixing code in multiple places. This usually means more work for programmers and more room for errors.

아래 코드에서 메소드 `describe`가 `Bird`와 `Dog`에서 공유되고 있는 것을 볼 수 있습니다.

```js
Bird.prototype = {
  constructor: Bird,
  describe: function() {
    console.log("My name is " + this.name);
  }
};

Dog.prototype = {
  constructor: Dog,
  describe: function() {
    console.log("My name is " + this.name);
  }
};
```

메소드 `describe`는 두 곳에서 반복되었습니다. `Animal`이라는 `supertype`을 생성하여 DRY 원칙을 따르도록 코드를 수정할 수 있습니다.

```js
function Animal() { };

Animal.prototype = {
  constructor: Animal, 
  describe: function() {
    console.log("My name is " + this.name);
  }
};
```

`Animal`이 메소드 `describe`를 포함하고 있기 때문에 `Bird`와 `Dog`에서 삭제할 수 있습니다.

```js
Bird.prototype = {
  constructor: Bird
};

Dog.prototype = {
  constructor: Dog
};
```

# --instructions--

메소드 `eat`가 `Cat`과 `Bear`에서 반복됩니다. 메소드 `eat`을 `Animal` `supertype`으로 옮겨서 DRY 원칙에 맞춰 코드를 수정하시오.

# --hints--

`Animal.prototype`는 속성 `eat`를 가져야 합니다.

```js
assert(Animal.prototype.hasOwnProperty('eat'));
```

`Bear.prototype`는 속성 `eat`을 가져야 합니다.

```js
assert(!Bear.prototype.hasOwnProperty('eat'));
```

`Cat.prototype`는 속성 `eat`를 가져야 합니다.

```js
assert(!Cat.prototype.hasOwnProperty('eat'));
```

# --seed--

## --seed-contents--

```js
function Cat(name) {
  this.name = name;
}

Cat.prototype = {
  constructor: Cat,
  eat: function() {
    console.log("nom nom nom");
  }
};

function Bear(name) {
  this.name = name;
}

Bear.prototype = {
  constructor: Bear,
  eat: function() {
    console.log("nom nom nom");
  }
};

function Animal() { }

Animal.prototype = {
  constructor: Animal,

};
```

# --solutions--

```js
function Cat(name) {
  this.name = name;
}

Cat.prototype = {
  constructor: Cat
};

function Bear(name) {
  this.name = name;
}

Bear.prototype = {
  constructor: Bear
};

function Animal() { }

Animal.prototype = {
  constructor: Animal,
  eat: function() {
    console.log("nom nom nom");
  }
};
```
