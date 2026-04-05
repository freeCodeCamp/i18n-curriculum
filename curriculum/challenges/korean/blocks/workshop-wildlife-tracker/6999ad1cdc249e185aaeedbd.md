---
id: 6999ad1cdc249e185aaeedbd
title: 8단계
challengeType: 1
dashedName: step-8
---

# --description--

이번 단계에서는 객체에 새 속성을 추가하는 함수를 만드세요.

다음은 함수 안에서 속성을 추가하는 예시입니다:

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

이 예시에서는 `color` 객체에 `cat` 속성이 추가되었습니다.

이제 `addHabitat`라는 함수를 만드세요. 이 함수는 두 개의 매개변수 `animal`와 `habitat`를 받습니다.

함수 안에서 `habitat` 객체에 `animal`라는 새 속성을 추가하세요. 그 값은 `habitat` 매개변수와 같게 설정하세요.

업데이트된 `animal` 객체를 반환하세요.

함수를 만든 후에는 `console.log`를 사용해 `addHabitat(tiger, "Rainforest")`을 호출하여 콘솔에서 업데이트된 `tiger` 객체를 확인하세요.

# --hints--

`addHabitat`라는 이름의 함수를 만드세요.

```js
assert.isFunction(addHabitat);
```

`addHabitat` 함수는 두 개의 매개변수 `animal`와 `habitat`를 가져야 합니다.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

`addHabitat`는 점 표기법을 사용해 `habitat` 속성을 추가해야 합니다.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

`addHabitat` 함수는 업데이트된 `animal` 객체를 반환해야 합니다.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

`addHabitat(tiger, "Rainforest")`를 콘솔에 출력하세요.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

`addHabitat(tiger, "Rainforest")`을 호출하면 tiger에 habitat 속성이 추가되어야 합니다.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

`addHabitat`는 함수 매개변수를 사용하며 어떤 객체와도 작동해야 합니다.

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
