---
id: 6999ad1cdc249e185aaeedbd
title: 第 8 步驟
challengeType: 1
dashedName: step-8
---

# --description--

在這個步驟中，你將創建一個函式，為物件添加一個新的屬性。

以下是一個在函式內添加屬性的範例：

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

在這個範例中，`color` 屬性被添加到 `cat` 物件中。

現在創建一個名為 `addHabitat` 的函式。該函式應該接受兩個參數：`animal` 和 `habitat`。

在函式內，為 `habitat` 物件添加一個名為 `animal` 的新屬性。將它的值設為 `habitat` 參數。

傳回更新後的 `animal` 物件。

創建函式後，使用 `console.log` 呼叫 `addHabitat(tiger, "Rainforest")`，以便你可以在主控台看到更新後的 `tiger` 物件。

# --hints--

你應該創建一個名為 `addHabitat` 的函式。

```js
assert.isFunction(addHabitat);
```

`addHabitat` 函式應該有兩個參數：`animal` 和 `habitat`。

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` 應該使用點記法添加 `habitat` 屬性。

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

`addHabitat` 函式應該傳回更新後的 `animal` 物件。

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

你應該將 `addHabitat(tiger, "Rainforest")` 記錄到主控台。

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

呼叫 `addHabitat(tiger, "Rainforest")` 應該會為 tiger 添加 habitat 屬性。

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` 應該使用函式參數並能處理任何物件。

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
