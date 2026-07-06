---
id: 6999ad1cdc249e185aaeedbd
title: الخطوة 8
challengeType: 1
dashedName: step-8
---

# --description--

في هذه الخطوة، ستُنشئ دالة تضيف خاصية جديدة إلى كائن.

إليك مثالًا على إضافة خاصية داخل دالة:

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

في هذا المثال، تُضاف الخاصية `color` إلى الكائن `cat`.

الآن أنشئ دالة تُسمى `addHabitat`. يجب أن تأخذ الدالة معلمتين: `animal` و `habitat`.

داخل الدالة، أضف خاصية جديدة تُسمى `habitat` إلى الكائن `animal`. اجعل قيمتها مساوية للمعلمة `habitat`.

أرجع الكائن `animal` المحدث.

بعد إنشاء الدالة، استخدم `console.log` لاستدعاء `addHabitat(tiger, "Rainforest")` حتى ترى الكائن `tiger` المحدث في وحدة التحكم.

# --hints--

يجب أن تنشئ دالة باسم `addHabitat`.

```js
assert.isFunction(addHabitat);
```

يجب أن تحتوي الدالة `addHabitat` على معلمتين: `animal` و `habitat`.

```js
const regex = __helpers.functionRegex('addHabitat', ['animal', 'habitat']);
assert.match(__helpers.removeJSComments(code), regex);
```

يجب أن تستخدم `addHabitat` ترميز النقطة لإضافة الخاصية `habitat`.

```js
assert.match(code, /animal\.habitat\s*=\s*habitat/);
```

يجب أن تُرجع الدالة `addHabitat` الكائن `animal` المحدث.

```js
const testAnimal = { species: "Cat" };
const result = addHabitat(testAnimal, "Forest");
assert.strictEqual(result, testAnimal);
```

يجب أن تسجل `addHabitat(tiger, "Rainforest")` في وحدة التحكم.

```js
assert.match(
  code,
  /console\s*\.\s*log\s*\(\s*addHabitat\s*\(\s*tiger\s*,\s*["']Rainforest["']\s*\)\s*\)/
);
```

استدعاء `addHabitat(tiger, "Rainforest")` يجب أن يضيف خاصية habitat إلى tiger.

```js
const updatedTiger = addHabitat(tiger, "Rainforest");

assert.deepEqual(updatedTiger, {
  species: "Tiger",
  age: 5,
  isEndangered: true,
  habitat: "Rainforest"
});
```

يجب أن تستخدم `addHabitat` معلمات الدالة وتعمل مع أي كائن.

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
