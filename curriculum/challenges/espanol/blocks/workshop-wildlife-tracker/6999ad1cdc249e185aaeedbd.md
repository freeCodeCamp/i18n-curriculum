---
id: 6999ad1cdc249e185aaeedbd
title: Paso 8
challengeType: 1
dashedName: step-8
---

# --description--

En este paso, crearás una función que añade una nueva propiedad a un objeto.

Aquí tienes un ejemplo de cómo agregar una propiedad dentro de una función:

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

En este ejemplo, la propiedad `color` se añade al objeto `cat`.

Ahora crea una función llamada `addHabitat`. La función debe recibir dos parámetros: `animal` y `habitat`.

Dentro de la función, añade una nueva propiedad llamada `habitat` al objeto `animal`. Asigna a esta propiedad el valor del parámetro `habitat`.

Devuelve el objeto `animal` actualizado.

Después de crear la función, usa `console.log` para llamar a `addHabitat(tiger, "Rainforest")` y así puedas ver el objeto `tiger` actualizado en la consola.

# --hints--

Debes crear una función llamada `addHabitat`.

```js
assert.isFunction(addHabitat);
```

La función `addHabitat` debe tener dos parámetros: `animal` y `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` debe usar la notación de punto para añadir la propiedad `habitat`.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

La función `addHabitat` debe devolver el objeto `animal` actualizado.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

Debes mostrar `addHabitat(tiger, "Rainforest")` en la consola.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

Llamar a `addHabitat(tiger, "Rainforest")` debe añadir una propiedad habitat a tiger.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` debe usar los parámetros de la función y funcionar con cualquier objeto.

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
