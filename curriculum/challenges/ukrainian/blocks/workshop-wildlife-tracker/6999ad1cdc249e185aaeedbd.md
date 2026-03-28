---
id: 6999ad1cdc249e185aaeedbd
title: Крок 8
challengeType: 1
dashedName: step-8
---

# --description--

У цьому кроці ви створите функцію, яка додасть нову властивість до об’єкта.

Ось приклад додавання властивості всередині функції:

```js
const cat = {
  species: "Cat"
};

const addColor = (pet, color) => {
  pet.color = color; // add new property using dot notation
  return pet; // return the updated object
}

console.log(addColor(cat, "White")); 
// {
//   species: 'Cat',
//   color: 'White'
// }
```

У цьому прикладі властивість `color` додається до об’єкта `cat`.

Тепер створіть функцію з назвою `addHabitat`. Функція має приймати два параметри: `animal` і `habitat`.

Всередині функції додайте нову властивість з назвою `habitat` до об’єкта `animal`. Встановіть її значення рівним параметру `habitat`.

Поверніть оновлений об’єкт `animal`.

Після створення функції використайте `console.log` для виклику `addHabitat(tiger, "Rainforest")`, щоб побачити оновлений об’єкт `tiger` у консолі.

# --hints--

Ви маєте створити функцію з назвою `addHabitat`.

```js
assert.isFunction(addHabitat);
```

Функція `addHabitat` має мати два параметри: `animal` і `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` має використовувати точкову нотацію для додавання властивості `habitat`.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

Функція `addHabitat` має повертати оновлений об’єкт `animal`.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

Ви маєте вивести `addHabitat(tiger, "Rainforest")` у консоль.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

Виклик `addHabitat(tiger, "Rainforest")` має додати властивість habitat до tiger.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` має використовувати параметри функції і працювати з будь-яким об’єктом.

```js
const lion = { species: "Lion" };
const updatedLion = addHabitat(lion, "Savanna");

assert.strictEqual(updatedLion.habitat, "Savanna");
```

# --seed--

## --seed-contents--

```js
const tiger = {
  species: "Tiger",
  age: 5,
  isEndangered: true
};

const elephant = {
  species: "Elephant",
  age: 10,
  isEndangered: true
};

const getSpecies = (animal) => {
  return animal.species;
};

console.log(getSpecies(tiger));

const getAge = (animal) => {
  return animal.age;
};

console.log(getAge(tiger));

--fcc-editable-region--

--fcc-editable-region--
```
