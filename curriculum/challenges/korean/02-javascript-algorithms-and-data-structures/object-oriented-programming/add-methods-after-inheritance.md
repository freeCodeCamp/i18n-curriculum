---
id: 587d7db1367417b2b2512b87
title: 상속받은 후 메소드 추가하기
challengeType: 1
forumTopicId: 301315
dashedName: add-methods-after-inheritance
---

# --description--

A constructor function that inherits its `prototype` object from a supertype constructor function can still have its own methods in addition to inherited methods.

예를 들면, `Bird`는 `Animal`로부터 그 `prototype`를 상속받은 생성자입니다.

```js
function Animal() { }
Animal.prototype.eat = function() {
  console.log("nom nom nom");
};
function Bird() { }
Bird.prototype = Object.create(Animal.prototype);
Bird.prototype.constructor = Bird;
```

`Animal`로부터 상속된 것 이외에도 객체 `Bird`에 고유한 행동을 추가하기 원할 것입니다. 여기서 `Bird`는 `fly()` 함수를 갖게 될 것입니다. 함수들은 모든 생성자 함수와 같은 방식으로 `Bird's` `prototype`에 추가됩니다.

```js
Bird.prototype.fly = function() {
  console.log("I'm flying!");
};
```

이제 `Bird`의 인스턴스는 `eat()`와 `fly()` 메소드를 갖게 될 것입니다.

```js
let duck = new Bird();
duck.eat();
duck.fly();
```

`duck.eat()`는 콘솔에 문자열 `nom nom nom`를 보여줄 것이고 `duck.fly()`는 문자열 `I'm flying!`을 보여줄 것입니다.

# --instructions--

필요한 코드를 추가하여 객체 `Dog`가 `Animal`로부터 상속받도록 하고 `Dog`의 `prototype` 생성자를 `Dog`로 설정하시오. 그런 다음 `beagle`이 `eat()`와 `bark()` 두 행동 모두 취할 수 있도록 `bark()` 메소드를 객체 `Dog` 에 추가하시오. `bark()` 메소드는 콘솔에서 `Woof!`를 출력해야 합니다.

# --hints--

`Animal`은 `bark()` 메소드에 응답하지 않아야 합니다.

```js
assert(typeof Animal.prototype.bark == 'undefined');
```

`Dog`는 `Animal`로부터 `eat()` 메소드를 상속받아야 합니다.

```js
assert(typeof Dog.prototype.eat == 'function');
```

`Dog` 프로토타입은 `bark()` 메소드를 가져야 합니다.

```js
assert('bark' in Dog.prototype);
```

`beagle`는 `Animal`의 `instanceof`(인스턴스) 여야 합니다.

```js
assert(beagle instanceof Animal);
```

`beagle`의 생성자는 `Dog`로 설정되어야 합니다.

```js
assert(beagle.constructor === Dog);
```

`beagle.eat()`는 문자열 `nom nom nom`을 출력해야 합니다.

```js
capture();
beagle.eat();
uncapture();
assert(logOutput == 'nom nom nom');
```

`beagle.bark()`는 문자열 `Woof!`을 출력해야 합니다.

```js
capture();
beagle.bark();
uncapture();
assert(logOutput == 'Woof!');
```

# --seed--

## --before-user-code--

```js
var logOutput = "";
var originalConsole = console
function capture() {
    var nativeLog = console.log;
    console.log = function (message) {
        logOutput = message;
        if(nativeLog.apply) {
          nativeLog.apply(originalConsole, arguments);
        } else {
          var nativeMsg = Array.prototype.slice.apply(arguments).join(' ');
          nativeLog(nativeMsg);
        }
    };
}

function uncapture() {
  console.log = originalConsole.log;
}

capture();
```

## --after-user-code--

```js
uncapture();
(function() { return logOutput || "console.log never called"; })();
```

## --seed-contents--

```js
function Animal() { }
Animal.prototype.eat = function() { console.log("nom nom nom"); };

function Dog() { }

// Only change code below this line




// Only change code above this line

let beagle = new Dog();
```

# --solutions--

```js
function Animal() { }
Animal.prototype.eat = function() { console.log("nom nom nom"); };

function Dog() { }
Dog.prototype = Object.create(Animal.prototype);
Dog.prototype.constructor = Dog;
Dog.prototype.bark = function () {
  console.log('Woof!');
};
let beagle = new Dog();

beagle.eat();
beagle.bark();
```
