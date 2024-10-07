---
id: 587d7b7c367417b2b2512b1a
title: Zugriff auf Eigenschaftsnamen mit der Klammernotation
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

Dieser Code wird den in der Variable `selectedFood` gespeicherten Schlüsselwert auswerten und dann den entsprechenden Wert zu diesem Schlüssel aus dem Objekt `foods` ausgeben oder `undefined` falls er nicht vorhanden ist. Die Klammernotation ist sehr nützlich, weil Objekteigenschaften vor der Laufzeit manchmal unbekannt sind oder dynamischer auf sie zugegriffen werden muss.

# --instructions--

Wir haben eine Funktion namens `checkInventory` definiert, die ein gescanntes Produkt als ein Argument erhält. Gib den aktuellen Wert zum `scannedItem` Schlüssel des `foods` Objekts zurück. Du kannst davon ausgehen, dass nur gültige Schlüssel als ein Argument an `checkInventory` übergeben werden.

# --hints--

`checkInventory` sollte eine Funktion sein.

```js
assert.strictEqual(typeof checkInventory, 'function');
```

Das `foods` Objekt sollte nur die folgenden Schlüssel-Wert-Paare enthalten: `apples: 25`, `oranges: 32`, `plums: 28`, `bananas: 13`, `grapes: 35`, `strawberries: 27`.

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

`checkInventory("apples")` sollte `25` zurückgeben.

```js
assert.strictEqual(checkInventory('apples'), 25);
```

`checkInventory("bananas")` sollte `13` zurückgeben.

```js
assert.strictEqual(checkInventory('bananas'), 13);
```

`checkInventory("strawberries")` sollte `27` zurückgeben.

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
