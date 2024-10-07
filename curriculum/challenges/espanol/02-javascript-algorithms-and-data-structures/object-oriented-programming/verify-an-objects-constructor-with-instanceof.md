---
id: 587d7dae367417b2b2512b7a
title: Verifica el constructor de un objeto con "instanceof"
challengeType: 1
forumTopicId: 301337
dashedName: verify-an-objects-constructor-with-instanceof
---

# --description--

Anytime a constructor function creates a new object, that object is said to be an <dfn>instance</dfn> of its constructor. JavaScript gives a convenient way to verify this with the `instanceof` operator. `instanceof` allows you to compare an object to a constructor, returning `true` or `false` based on whether or not that object was created with the constructor. Aquí hay un ejemplo:

```js
let Bird = function(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}

let crow = new Bird("Alexis", "black");

crow instanceof Bird;
```

Aquí el método `instanceof` devolverá `true`.

Si un objeto es creado sin usar un constructor, `instanceof` verificará que no es una instancia de ese constructor:

```js
let canary = {
  name: "Mildred",
  color: "Yellow",
  numLegs: 2
};

canary instanceof Bird;
```

Aquí el método `instanceof` devolverá `false`.

# --instructions--

Crea una nueva instancia del constructor `House`, llamándola `myHouse` y pasando el número de habitaciones. Luego, usa `instanceof` para verificar que es una instancia de `House`.

# --hints--

`myHouse` debe tener un atributo `numBedrooms` establecido a un número.

```js
assert(typeof myHouse.numBedrooms === 'number');
```

Debes verificar que `myHouse` es una instancia de `House` usando el operador `instanceof`.

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
