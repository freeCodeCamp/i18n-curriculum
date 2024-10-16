---
id: 587d7dac367417b2b2512b73
title: Створення базового об’єкта JavaScript
challengeType: 1
forumTopicId: 301317
dashedName: create-a-basic-javascript-object
---

# --description--

Think about things people see every day, like cars, shops, and birds. These are all <dfn>objects</dfn>: tangible things people can observe and interact with.

Якими є якості цих об’єктів? Машина має колеса. В крамниці продають продукти. У птахів є крила.

Ці якості, або <dfn>властивості</dfn>, визначають з чого складається об’єкт. Зауважте, що схожі об’єкти мають однакові властивості, але їхні значення для кожного з об’єктів можуть відрізнятися. Наприклад, усі машини мають колеса, але не всі машини мають однакову кількість.

Об’єкти JavaScript використовують для моделювання об’єктів із реального світу, наділяючи їх такими ж властивостями і поведінкою, що й дійсні двійники. Ось приклад використання цієї ідеї для створення об’єкта `duck`:

```js
let duck = {
  name: "Aflac",
  numLegs: 2
};
```

Об’єкт `duck` має дві пари властивості-значення: `name` зі значенням `Aflac` та `numLegs` зі значенням 2.

# --instructions--

Створіть об’єкт `dog` з властивостями `name` та `numLegs`, а потім налаштуйте їхні значення на рядок та число відповідно.

# --hints--

`dog` має бути об’єктом.

```js
assert(typeof dog === 'object');
```

`dog` повинен мати властивість `name` зі значенням рядка.

```js
assert(typeof dog.name === 'string');
```

`dog` повинен мати властивість `numLegs` зі значенням числа.

```js
assert(typeof dog.numLegs === 'number');
```

# --seed--

## --seed-contents--

```js
let dog = {

};
```

# --solutions--

```js
let dog = {
  name: '',
  numLegs: 4
};
```
