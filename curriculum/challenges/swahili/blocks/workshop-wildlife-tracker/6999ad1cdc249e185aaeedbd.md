---
id: 6999ad1cdc249e185aaeedbd
title: Hatua 8
challengeType: 1
dashedName: step-8
---

# --description--

Katika hatua hii, utaunda kitendakazi kinachoongeza sifa mpya kwa kitu.

Hapa kuna mfano wa kuongeza sifa ndani ya kitendakazi:

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

Katika mfano huu, sifa ya `color` inaongezwa kwa kitu cha `cat`.

Sasa unda kitendakazi kinachoitwa `addHabitat`. Kitendakazi hicho kinapaswa kuchukua vigezo viwili: `animal` na `habitat`.

Ndani ya kitendakazi, ongeza sifa mpya inayoitwa `habitat` kwa kitu cha `animal`. Weka thamani yake sawa na kigezo cha `habitat`.

Rudisha kitu cha `animal` kilichosasishwa.

Baada ya kuunda kitendakazi, tumia `console.log` kuita `addHabitat(tiger, "Rainforest")` ili uone kitu cha `tiger` kilichosasishwa kwenye konsoli.

# --hints--

Unapaswa kuunda kitendakazi kinachoitwa `addHabitat`.

```js
assert.isFunction(addHabitat);
```

Kitendakazi cha `addHabitat` kinapaswa kuwa na vigezo viwili: `animal` na `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` inapaswa kutumia uandishi wa nukta kuongeza sifa ya `habitat`.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

Kitendakazi cha `addHabitat` kinapaswa kurudisha kitu cha `animal` kilichosasishwa.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

Unapaswa kuandika `addHabitat(tiger, "Rainforest")` kwenye konsoli.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

Kuita `addHabitat(tiger, "Rainforest")` kunapaswa kuongeza sifa ya habitat kwa tiger.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` inapaswa kutumia vigezo vya kitendakazi na kufanya kazi na kitu chochote.

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
