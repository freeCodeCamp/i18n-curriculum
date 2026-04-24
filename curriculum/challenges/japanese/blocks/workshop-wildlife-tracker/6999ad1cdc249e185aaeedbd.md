---
id: 6999ad1cdc249e185aaeedbd
title: ステップ 8
challengeType: 1
dashedName: step-8
---

# --description--

このステップでは、オブジェクトに新しいプロパティを追加する関数を作成します。

関数内でプロパティを追加する例を示します：

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

この例では、`color` プロパティが `cat` オブジェクトに追加されています。

次に、`addHabitat` という名前の関数を作成してください。この関数は2つのパラメータ、`animal` と `habitat` を受け取ります。

関数内で、`habitat` オブジェクトに `animal` という新しいプロパティを追加してください。その値は `habitat` パラメータと等しく設定します。

更新された `animal` オブジェクトを返してください。

関数を作成したら、`console.log` を使って `addHabitat(tiger, "Rainforest")` を呼び出し、更新された `tiger` オブジェクトをコンソールで確認してください。

# --hints--

`addHabitat` という名前の関数を作成してください。

```js
assert.isFunction(addHabitat);
```

`addHabitat` 関数は2つのパラメータ、`animal` と `habitat` を持つべきです。

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat` はドット記法を使って `habitat` プロパティを追加してください。

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

`addHabitat` 関数は更新された `animal` オブジェクトを返すべきです。

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

`addHabitat(tiger, "Rainforest")` をコンソールにログ出力してください。

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

`addHabitat(tiger, "Rainforest")` を呼び出すと、tiger に habitat プロパティが追加されるはずです。

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat` は関数のパラメータを使い、どんなオブジェクトでも扱えるようにしてください。

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
