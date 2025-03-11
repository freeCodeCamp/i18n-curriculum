---
id: 56533eb9ac21ba0edf2244cd
title: Доступ до вкладених масивів
challengeType: 1
forumTopicId: 16160
dashedName: accessing-nested-arrays
---

# --description--

As we have seen in earlier examples, objects can contain both nested objects and nested arrays. Similar to accessing nested objects, array bracket notation can be chained to access nested arrays.

Ось приклад того, як отримати доступ до вкладеного масиву:

```js
const ourPets = [
  {
    animalType: "cat",
    names: [
      "Meowzer",
      "Fluffy",
      "Kit-Cat"
    ]
  },
  {
    animalType: "dog",
    names: [
      "Spot",
      "Bowser",
      "Frankie"
    ]
  }
];

ourPets[0].names[1];
ourPets[1].names[0];
```

`ourPets[0].names[1]` буде рядком `Fluffy`, а `ourPets[1].names[0]` буде рядком `Spot`.

# --instructions--

Використовуючи точкову і дужкову нотацію, встановіть змінну `secondTree` на другий елемент в списку `list` з другого об’єкту в масиві `myPlants`.

# --hints--

`secondTree` має дорівнювати рядку `pine`.

```js
assert(secondTree === 'pine');
```

Щоб отримати доступ до `myPlants`, використайте точкову та дужкову нотацію.

```js
assert(/=\s*myPlants\[1\].list\[1\]/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(x) {
  if(typeof x != 'undefined') {
    return "secondTree = " + x;
  }
  return "secondTree is undefined";
})(secondTree);
```

## --seed-contents--

```js
const myPlants = [
  {
    type: "flowers",
    list: [
      "rose",
      "tulip",
      "dandelion"
    ]
  },
  {
    type: "trees",
    list: [
      "fir",
      "pine",
      "birch"
    ]
  }
];

const secondTree = "";
```

# --solutions--

```js
const myPlants = [
  {
    type: "flowers",
    list: [
      "rose",
      "tulip",
      "dandelion"
    ]
  },
  {
    type: "trees",
    list: [
      "fir",
      "pine",
      "birch"
    ]
  }
];

const secondTree = myPlants[1].list[1];
```
