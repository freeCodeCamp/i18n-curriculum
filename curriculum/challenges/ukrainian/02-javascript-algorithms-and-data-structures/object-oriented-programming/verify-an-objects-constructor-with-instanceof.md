---
id: 587d7dae367417b2b2512b7a
title: Перевірка конструктора об’єкта за допомогою instanceof
challengeType: 1
forumTopicId: 301337
dashedName: verify-an-objects-constructor-with-instanceof
---

# --description--

Anytime a constructor function creates a new object, that object is said to be an <dfn>instance</dfn> of its constructor. JavaScript gives a convenient way to verify this with the `instanceof` operator. `instanceof` allows you to compare an object to a constructor, returning `true` or `false` based on whether or not that object was created with the constructor. Ось приклад:

```js
let Bird = function(name, color) {
  this.name = name;
  this.color = color;
  this.numLegs = 2;
}

let crow = new Bird("Alexis", "black");

crow instanceof Bird;
```

Цей метод `instanceof` поверне `true`.

Якщо об’єкт створено без використання конструктора, `instanceof` підтвердить, що об’єкт не є екземпляром цього конструктора:

```js
let canary = {
  name: "Mildred",
  color: "Yellow",
  numLegs: 2
};

canary instanceof Bird;
```

Цей метод `instanceof` поверне `false`.

# --instructions--

Створіть новий екземпляр конструктора `House`, назвавши його `myHouse` та передавши кількість спалень. Потім використайте `instanceof`, щоб підтвердити, що це екземпляр `House`.

# --hints--

`myHouse` повинен мати атрибут `numBedrooms` зі значенням числа.

```js
assert(typeof myHouse.numBedrooms === 'number');
```

Ви повинні перевірити, що `myHouse` є екземпляром `House`, використавши оператор `instanceof`.

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
