---
id: 587d7dae367417b2b2512b7a
title: Verificare il costruttore di un oggetto con instanceof
challengeType: 1
forumTopicId: 301337
dashedName: verify-an-objects-constructor-with-instanceof
---

# --description--

Anytime a constructor function creates a new object, that object is said to be an <dfn>instance</dfn> of its constructor. JavaScript gives a convenient way to verify this with the `instanceof` operator. `instanceof` allows you to compare an object to a constructor, returning `true` or `false` based on whether or not that object was created with the constructor. Ecco un esempio:

```js
let Bird = function(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}

let crow = new Bird("Alexis", "black");

crow instanceof Bird;
```

Questo metodo `instanceof` restituirà `true`.

Se un oggetto viene creato senza usare un costruttore, `instanceof` verificherà che non si tratta di un'istanza di quel costruttore:

```js
let canary = {
  name: "Mildred",
  color: "Yellow",
  numLegs: 2
};

canary instanceof Bird;
```

Questo metodo `instanceof` restituirà `false`.

# --instructions--

Crea una nuova istanza del costruttore `House`, chiamandola `myHouse` e passando un numero di camere da letto (bedrooms). Quindi, usa `instanceof` per verificare che si tratti di un'istanza di `House`.

# --hints--

`myHouse` dovrebbe avere un attributo `numBedrooms` impostato su un numero.

```js
assert(typeof myHouse.numBedrooms === 'number');
```

Dovresti verificare che `myHouse` sia un'istanza di `House` usando l'operatore `instanceof`.

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
