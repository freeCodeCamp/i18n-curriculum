---
id: 587d7db1367417b2b2512b88
title: 상속 받은 메서드 덮어 쓰기
challengeType: 1
forumTopicId: 301322
dashedName: override-inherited-methods
---

# --description--

In previous lessons, you learned that an object can inherit its behavior (methods) from another object by referencing its `prototype` object:

```js
ChildObject.prototype = Object.create(ParentObject.prototype);
```

그런 다음 `ChildObject`는 그 메서드들을 `prototype`에 엮어(chaining) 자신의 메서드로 받을 수 있습니다.

```js
ChildObject.prototype.methodName = function() {...};
```

상속 받은 메서드를 덮어 쓰기가 가능합니다. 덮어 쓸 메서드 이름과 같은 이름으로 `ChildObject.prototype`에 메서드를 추가하면 됩니다. `Animal`로부터 상속 받은 `eat()` 메서드를 덮어 쓰기하는 `Bird` 예시가 있습니다.

```js
function Animal() { }
Animal.prototype.eat = function() {
  return "nom nom nom";
};
function Bird() { }

Bird.prototype = Object.create(Animal.prototype);

Bird.prototype.eat = function() {
  return "peck peck peck";
};
```

`let duck = new Bird();` 인스턴스가 있고 `duck.eat()`을 호출한다면 이는 자바스크립트가 `duck`의 `prototype` 체인(chain)에서 그 메서드를 찾는 방법입니다.

1.  `duck` => Is `eat()` defined here? No.
2.  `Bird` => `eat()`가 여기 정의되었는가? => 예. 실행하고 찾기를 멈춘다.
3.  `Animal` => `eat()`가 역시 정의되었지만 자바스크립트는 이 단계에 도달하기 전에 찾기를 멈추었습니다.
4.  Object => 자바스크립트는 이 단계에 도달하기 전에 찾기를 멈추었습니다.

# --instructions--

문자열 `Alas, this is a flightless bird.`을 반환할 수 있도록 `Penguin`의 메서드 `fly()`를 덮어쓰기 하시오.

# --hints--

`penguin.fly()`은 문자열 `Alas, this is a flightless bird.`을 반환해야 합니다.

```js
assert(penguin.fly() === 'Alas, this is a flightless bird.');
```

메서드 `bird.fly()`는 `I am flying!`를 반환해야 합니다.

```js
assert(new Bird().fly() === 'I am flying!');
```

# --seed--

## --seed-contents--

```js
function Bird() { }

Bird.prototype.fly = function() { return "I am flying!"; };

function Penguin() { }
Penguin.prototype = Object.create(Bird.prototype);
Penguin.prototype.constructor = Penguin;

// Only change code below this line



// Only change code above this line

let penguin = new Penguin();
console.log(penguin.fly());
```

# --solutions--

```js
function Bird() { }

Bird.prototype.fly = function() { return "I am flying!"; };

function Penguin() { }
Penguin.prototype = Object.create(Bird.prototype);
Penguin.prototype.constructor = Penguin;
Penguin.prototype.fly = () => 'Alas, this is a flightless bird.';
let penguin = new Penguin();
console.log(penguin.fly());
```
