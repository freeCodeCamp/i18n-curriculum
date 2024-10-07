---
id: 587d7db1367417b2b2512b86
title: 상속받은 생성자 속성 초기화하기
challengeType: 1
forumTopicId: 301324
dashedName: reset-an-inherited-constructor-property
---

# --description--

When an object inherits its `prototype` from another object, it also inherits the supertype's constructor property.

여기 예시가 있습니다:

```js
function Bird() { }
Bird.prototype = Object.create(Animal.prototype);
let duck = new Bird();
duck.constructor
```

`duck`과 `Bird`의 모든 인스턴스들은 `Bird`에 의해 생성되었고 `Animal`에 의해 생성되지 않았다는 것을 보여줘야 합니다. 이를 위해 `Bird`의 생성자 속성을 수동으로 객체 `Bird`에 설정할 수 있습니다.

```js
Bird.prototype.constructor = Bird;
duck.constructor
```

# --instructions--

`duck.constructor`와 `beagle.constructor`가 각각의 생성자를 반환할 수 있도록 코드를 수정하시오.

# --hints--

`Bird.prototype`는 `Animal`의 인스턴스이어야 합니다.

```js
assert(Animal.prototype.isPrototypeOf(Bird.prototype));
```

`duck.constructor`는 `Bird`를 반환해야 합니다.

```js
assert(duck.constructor === Bird);
```

`Dog.prototype`는 `Animal`의 인스턴스이어야 합니다.

```js
assert(Animal.prototype.isPrototypeOf(Dog.prototype));
```

`beagle.constructor`는 `Dog`를 반환해야 합니다.

```js
assert(beagle.constructor === Dog);
```

# --seed--

## --seed-contents--

```js
function Animal() { }
function Bird() { }
function Dog() { }

Bird.prototype = Object.create(Animal.prototype);
Dog.prototype = Object.create(Animal.prototype);

// Only change code below this line



let duck = new Bird();
let beagle = new Dog();
```

# --solutions--

```js
function Animal() { }
function Bird() { }
function Dog() { }
Bird.prototype = Object.create(Animal.prototype);
Dog.prototype = Object.create(Animal.prototype);
Dog.prototype.constructor = Dog;
Bird.prototype.constructor = Bird;
let duck = new Bird();
let beagle = new Dog();
```
