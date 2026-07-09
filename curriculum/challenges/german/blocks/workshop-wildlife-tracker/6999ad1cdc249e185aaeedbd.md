---
id: 6999ad1cdc249e185aaeedbd
title: Schritt 8
challengeType: 1
dashedName: step-8
---

# --description--

In diesem Schritt erstellen Sie eine Funktion, die einem Objekt eine neue Eigenschaft hinzufügt.

Hier ist ein Beispiel, wie man innerhalb einer Funktion eine Eigenschaft hinzufügt:

```js
const cat = {
  species: "Cat"
};

const addColor = (pet, color) => {
  pet.color = color; // add new property using dot notation
  return pet; // return the updated object
};

console.log(addColor(cat, "White")); 
// {
//   species: 'Cat',
//   color: 'White'
// }
```

In diesem Beispiel wird die Eigenschaft `color` zum Objekt `cat` hinzugefügt.

Erstellen Sie nun eine Funktion namens `addHabitat`. Die Funktion soll zwei Parameter haben: `animal` und `habitat`.

Fügen Sie innerhalb der Funktion dem Objekt `habitat` eine neue Eigenschaft namens `animal` hinzu. Setzen Sie ihren Wert auf den Parameter `habitat`.

Geben Sie das aktualisierte Objekt `animal` zurück.

Nachdem Sie die Funktion erstellt haben, verwenden Sie `console.log`, um `addHabitat(tiger, "Rainforest")` aufzurufen, damit Sie das aktualisierte Objekt `tiger` in der Konsole sehen können.

# --hints--

Sie sollten eine Funktion mit dem Namen `addHabitat` erstellen.

```js
assert.isFunction(addHabitat);
```

Die Funktion `addHabitat` sollte zwei Parameter haben: `animal` und `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

Die Funktion `addHabitat` sollte das aktualisierte Objekt `animal` zurückgeben.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

Sie sollten `addHabitat(tiger, "Rainforest")` in der Konsole ausgeben.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

Das Aufrufen von `addHabitat(tiger, "Rainforest")` sollte dem Objekt tiger eine Eigenschaft habitat hinzufügen.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` sollte die Funktionsparameter verwenden und mit jedem Objekt funktionieren.

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
