---
id: 6999ad1cdc249e185aaeedbd
title: 第 8 步
challengeType: 1
dashedName: step-8
---

# --description--

在这一步，你将创建一个函数，为对象添加一个新属性。

下面是一个在函数内部添加属性的示例：

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

在这个示例中，`color` 属性被添加到了 `cat` 对象中。

现在创建一个名为 `addHabitat` 的函数。该函数应接受两个参数：`animal` 和 `habitat`。

在函数内部，为 `habitat` 对象添加一个名为 `animal` 的新属性。将其值设置为 `habitat` 参数。

返回更新后的 `animal` 对象。

创建函数后，使用 `console.log` 调用 `addHabitat(tiger, "Rainforest")`，以便你可以在控制台看到更新后的 `tiger` 对象。

# --hints--

你应该创建一个名为 `addHabitat` 的函数。

```js
assert.isFunction(addHabitat);
```

`addHabitat` 函数应有两个参数：`animal` 和 `habitat`。

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` 应该使用点符号添加 `habitat` 属性。

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

`addHabitat` 函数应返回更新后的 `animal` 对象。

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

你应该将 `addHabitat(tiger, "Rainforest")` 记录到控制台。

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

调用 `addHabitat(tiger, "Rainforest")` 应该为 tiger 添加一个 habitat 属性。

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` 应该使用函数参数，并能处理任何对象。

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
