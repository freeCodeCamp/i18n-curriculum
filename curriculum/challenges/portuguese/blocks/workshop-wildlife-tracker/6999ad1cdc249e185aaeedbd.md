---
id: 6999ad1cdc249e185aaeedbd
title: Passo 8
challengeType: 1
dashedName: step-8
---

# --description--

Neste passo, você vai criar uma função que adiciona uma nova propriedade a um objeto.

Aqui está um exemplo de como adicionar uma propriedade dentro de uma função:

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

Neste exemplo, a propriedade `color` é adicionada ao objeto `cat`.

Agora crie uma função chamada `addHabitat`. A função deve receber dois parâmetros: `animal` e `habitat`.

Dentro da função, adicione uma nova propriedade chamada `habitat` ao objeto `animal`. Defina seu valor igual ao parâmetro `habitat`.

Retorne o objeto `animal` atualizado.

Depois de criar a função, use `console.log` para chamar `addHabitat(tiger, "Rainforest")` para que você possa ver o objeto `tiger` atualizado no console.

# --hints--

Você deve criar uma função chamada `addHabitat`.

```js
assert.isFunction(addHabitat);
```

A função `addHabitat` deve ter dois parâmetros: `animal` e `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` deve usar notação de ponto para adicionar a propriedade `habitat`.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

A função `addHabitat` deve retornar o objeto `animal` atualizado.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

Você deve registrar `addHabitat(tiger, "Rainforest")` no console.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

Chamar `addHabitat(tiger, "Rainforest")` deve adicionar uma propriedade habitat ao objeto tiger.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` deve usar os parâmetros da função e funcionar com qualquer objeto.

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
