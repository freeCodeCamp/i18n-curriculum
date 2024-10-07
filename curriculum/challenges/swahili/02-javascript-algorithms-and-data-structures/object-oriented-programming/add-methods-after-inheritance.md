---
id: 587d7db1367417b2b2512b87
title: Ongeza Vitendakazi Baada ya Urithi
challengeType: 1
forumTopicId: 301315
dashedName: add-methods-after-inheritance
---

# --description--

A constructor function that inherits its `prototype` object from a supertype constructor function can still have its own methods in addition to inherited methods.

Kwa mfano, `Bird` ni kijenzi kinachorithi `prototype` yake kutoka kwa `Animal`:

```js
function Animal() { }
Animal.prototype.eat = function() {
  console.log("nom nom nom");
};
function Bird() { }
Bird.prototype = Object.create(Animal.prototype);
Bird.prototype.constructor = Bird;
```

Zaidi ya hayo yanayorithiwa kutoka kwa `Animal`, unaezataka kuongeza tabia ya kipekee kwa vipengee vya `Bird`. Hapa, `Bird` itapata kitendakazi cha `fly()`. Vitendakazi vinaongezwa kwa `Bird's` `prototype` kwa njia sawa na kitendakazi kijenzi chochote kile:

```js
Bird.prototype.fly = function() {
  console.log("I'm flying!");
};
```

Sasa matukio ya `Bird` yatakuwa na mbinu zote mbili za `eat()` na `fly()`:

```js
let duck = new Bird();
duck.eat();
duck.fly();
```

`duck.eat()` itaonyesha tungo `nom nom nom` ndani ya console, na `duck.fly()` itaonyesha tungo `I'm flying!`.

# --instructions--

Ongeza misimbo yote muhimu ili kipengee cha `Dog` kiweze kurithi kutoka kwa `Animal` na kitendakazi kijenzi cha `prototype` ya `Dog` kiwekwe kwa `Dog`. Kisha ongeza mbinu ya `bark()` kwa kipengee cha `Dog` ili `beagle` iweze kutumia mbinu za `eat()` na `bark()`. Mbinu ya `bark()` inafaa kurejesha `Woof!` kwa console.

# --hints--

`Animal` haipaswi kujibu kwa mbinu ya `bark()`.

```js
assert(typeof Animal.prototype.bark == 'undefined');
```

`Dog` inapaswa kuirithi mbinu ya `eat()` kutoka kwa `Animal`.

```js
assert(typeof Dog.prototype.eat == 'function');
```

Mfano wa `Dog` unapaswa kuwa na mbinu ya `bark()`.

```js
assert('bark' in Dog.prototype);
```

`beagle` inapaswa kuwa `instanceof` `Animal`.

```js
assert(beagle instanceof Animal);
```

Kitendakazi kijenzi cha `beagle` kinapaswa kuwekwa kwa `Dog`.

```js
assert(beagle.constructor === Dog);
```

`beagle.eat()` inapaswa kuingiza tungo la `nom nom nom`

```js
capture();
beagle.eat();
uncapture();
assert(logOutput == 'nom nom nom');
```

`beagle.bark()` inapaswa kuingiza tungo la `Woof!`

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
