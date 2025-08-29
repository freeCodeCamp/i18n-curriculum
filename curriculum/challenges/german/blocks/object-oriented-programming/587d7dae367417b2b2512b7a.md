---
id: 587d7dae367417b2b2512b7a
title: Überprüfe den Konstruktor eines Objekts mit instanceof
challengeType: 1
forumTopicId: 301337
dashedName: verify-an-objects-constructor-with-instanceof
---

# --description--

Anytime a constructor function creates a new object, that object is said to be an <dfn>instance</dfn> of its constructor. JavaScript gives a convenient way to verify this with the `instanceof` operator. `instanceof` allows you to compare an object to a constructor, returning `true` or `false` based on whether or not that object was created with the constructor. Hier ist ein Beispiel:

```js
let Bird = function(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}

let crow = new Bird("Alexis", "black");

crow instanceof Bird;
```

Diese Methode `instanceof` würde `true` zurückgeben.

Wenn ein Objekt ohne einen Konstruktor erstellt wird, bestätigt `instanceof`, dass es nicht eine Instanz dieses Konstruktors ist:

```js
let canary = {
  name: "Mildred",
  color: "Yellow",
  numLegs: 2
};

canary instanceof Bird;
```

Diese Methode `instanceof` würde `false` zurückgeben.

# --instructions--

Erstelle eine neue Instanz des Konstruktors `House`, nenne sie `myHouse` und übergebe eine Anzahl von Schlafzimmern. Verwende dann `instanceof`, um zu überprüfen, ob es sich um eine Instanz von `House` handelt.

# --hints--

`myHouse` sollte ein Attribut `numBedrooms` besitzen, das auf eine Zahl gesetzt ist.

```js
assert(typeof myHouse.numBedrooms === 'number');
```

Du solltest überprüfen, ob `myHouse` eine Instanz von `House` ist, indem du den Operator `instanceof` verwendest.

```js
assert(/myHouse\s*instanceof\s*House/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function House(numBedrooms) {
  this.numBedrooms = numBedrooms;
}

// Only change code below this line
```

# --solutions--

```js
function House(numBedrooms) {
  this.numBedrooms = numBedrooms;
}
const myHouse = new House(4);
console.log(myHouse instanceof House);
```
