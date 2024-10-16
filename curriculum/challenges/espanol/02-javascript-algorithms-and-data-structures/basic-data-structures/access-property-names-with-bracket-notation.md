---
id: 587d7b7c367417b2b2512b1a
title: Accede a los nombres de propiedad con la notación de corchetes
challengeType: 1
forumTopicId: 301150
dashedName: access-property-names-with-bracket-notation
---

# --description--

In the first object challenge we mentioned the use of bracket notation as a way to access property values using the evaluation of a variable. For instance, imagine that our `foods` object is being used in a program for a supermarket cash register. We have some function that sets the `selectedFood` and we want to check our `foods` object for the presence of that food. This might look like:

```js
let selectedFood = getCurrentFood(scannedItem);
let inventory = foods[selectedFood];
```

El código evaluará el valor almacenado en la variable `selectedFood` y devolverá el valor de esa clave en el objeto `foods`, o `undefined` si no está presente. La notación de corchetes es muy útil porque a veces no conocemos las propiedades de los objetos antes de la ejecución o necesitamos acceder a ellos de una manera más dinámica.

# --instructions--

Hemos definido una función, `checkInventory`, que recibe como argumento un elemento escaneado. Devuelve el valor actual de la clave `scannedItem` en el objeto `foods`. Puedes asumir que sólo se proporcionarán claves válidas como argumento a `checkInventory`.

# --hints--

`checkInventory` debe ser una función.

```js
assert.strictEqual(typeof checkInventory, 'function');
```

El objeto `foods` debe tener solo los siguientes pares clave-valor: `apples: 25`, `oranges: 32`, `plums: 28`, `bananas: 13`, `grapes: 35`, `strawberries: 27`.

```js
assert.deepEqual(foods, {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
});
```

`checkInventory("apples")` debe devolver `25`.

```js
assert.strictEqual(checkInventory('apples'), 25);
```

`checkInventory("bananas")` debe devolver `13`.

```js
assert.strictEqual(checkInventory('bananas'), 13);
```

`checkInventory("strawberries")` debe devolver `27`.

```js
assert.strictEqual(checkInventory('strawberries'), 27);
```

# --seed--

## --seed-contents--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

function checkInventory(scannedItem) {
  // Only change code below this line

  // Only change code above this line
}

console.log(checkInventory("apples"));
```

# --solutions--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

function checkInventory(scannedItem) {
  return foods[scannedItem];
}
```
