---
id: 587d7b7c367417b2b2512b1a
title: Acessar nomes de propriedades com notação de colchetes
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

Esse código vai avaliar o valor armazenado na variável `selectedFood` e retorna o valor daquela chave no objeto `foods`, ou `undefined` se não estiver presente. Notação de colchetes é muito útil porque, às vezes, as propriedades de um objeto não são conhecidas antes da execução ou nós precisamos acessá-las de uma forma mais dinâmica.

# --instructions--

Nós definimos uma função, `checkInventory`, a qual recebe um item escaneado como argumento. Retorne o valor atual da chave `scannedItem` no objeto `foods`. Você pode assumir que apenas chaves válidas serão fornecidas como um argumento para `checkInventory`.

# --hints--

`checkInventory` deve ser uma função.

```js
assert.strictEqual(typeof checkInventory, 'function');
```

O objeto `foods` deve ter apenas os pares chave-valor a seguir: `apples: 25`, `oranges: 32`, `plums: 28`, `bananas: 13`, `grapes: 35`, `strawberries: 27`.

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

`checkInventory("apples")` deve retornar `25`.

```js
assert.strictEqual(checkInventory('apples'), 25);
```

`checkInventory("bananas")` deve retornar `13`.

```js
assert.strictEqual(checkInventory('bananas'), 13);
```

`checkInventory("strawberries")` deve retornar `27`.

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
