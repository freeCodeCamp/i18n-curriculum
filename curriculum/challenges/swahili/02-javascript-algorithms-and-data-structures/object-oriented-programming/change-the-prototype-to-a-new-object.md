---
id: 587d7daf367417b2b2512b7f
title: Geuza Prototype kwa Kipenge Kipya
challengeType: 1
forumTopicId: 301316
dashedName: change-the-prototype-to-a-new-object
---

# --description--

Up until now you have been adding properties to the `prototype` individually:

```js
Bird.prototype.numLegs = 2;
```

Hii huchosha baada ya zaidi ya sifa chache.

```js
Bird.prototype.eat = function() {
  console.log("nom nom nom");
}

Bird.prototype.describe = function() {
  console.log("My name is " + this.name);
}
```

Njia bora ni kuweka `prototype` kwa kipenge kipya ambacho kina sifa hizo tayari. Kwa njia hii, sifa zote zinaongezwa kwa wakati mmoja:

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

Ongeza sifa `numLegs` na mbinu hizi mbili `eat()` na `describe()` kwenye `prototype` ya `Dog` kwa kuweka `prototype` kwenye kipenge kipya.

# --hints--

`Dog.prototype` inapaswa kuwekwa kwa kipenge kipya.

```js
assert(/Dog\.prototype\s*?=\s*?{/.test(__helpers.removeJSComments(code)));
```

`Dog.prototype` inapaswa kuwa na sifa ya `numLegs`.

```js
assert(Dog.prototype.numLegs !== undefined);
```

`Dog.prototype` inapaswa kuwa na mbinu ya `eat()`.

```js
assert(typeof Dog.prototype.eat === 'function');
```

`Dog.prototype` inapaswa kuwa na mbinu ya `describe()`.

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
