---
id: 6999ad1cdc249e185aaeedbd
title: Passaggio 8
challengeType: 1
dashedName: step-8
---

# --description--

In questo passaggio, creerai una funzione che aggiunge una nuova proprietà a un oggetto.

Ecco un esempio di aggiunta di una proprietà all'interno di una funzione:

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

In questo esempio, la proprietà `color` viene aggiunta all'oggetto `cat`.

Ora crea una funzione chiamata `addHabitat`. La funzione dovrebbe prendere due parametri: `animal` e `habitat`.

All'interno della funzione, aggiungi una nuova proprietà chiamata `habitat` all'oggetto `animal`. Imposta il suo valore uguale al parametro `habitat`.

Restituisci l'oggetto `animal` aggiornato.

Dopo aver creato la funzione, usa `console.log` per chiamare `addHabitat(tiger, "Rainforest")` così potrai vedere l'oggetto `tiger` aggiornato nella console.

# --hints--

Dovresti creare una funzione chiamata `addHabitat`.

```js
assert.isFunction(addHabitat);
```

La funzione `addHabitat` dovrebbe avere due parametri: `animal` e `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` dovrebbe usare la notazione a punto per aggiungere la proprietà `habitat`.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

La funzione `addHabitat` dovrebbe restituire l'oggetto `animal` aggiornato.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

Dovresti registrare `addHabitat(tiger, "Rainforest")` nella console.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

Chiamare `addHabitat(tiger, "Rainforest")` dovrebbe aggiungere una proprietà habitat a tiger.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` dovrebbe usare i parametri della funzione e funzionare con qualsiasi oggetto.

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
