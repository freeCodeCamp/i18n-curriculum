---
id: 587d8254367417b2b2512c70
title: Створіть множину та додайте до неї значення в ES6
challengeType: 1
forumTopicId: 301636
dashedName: create-and-add-to-sets-in-es6
---

# --description--

Now that you have worked through ES5, you are going to perform something similar in ES6. This will be considerably easier. ES6 contains a built-in data structure `Set` so many of the operations you wrote by hand are now included for you. Let's take a look:

Можна створити нову порожню множину:

```js
var set = new Set();
```

Можна створити множину зі значенням:

```js
var set = new Set(1);
```

Можна створити множину з масивом:

```js
var set = new Set([1, 2, 3]);
```

Як тільки ви створили множину, за допомогою методу `add` можна додати бажані значення:

```js
var set = new Set([1, 2, 3]);
set.add([4, 5, 6]);
```

Нагадуємо, що множина — це структура даних, яка не може містити ідентичні значення:

```js
var set = new Set([1, 2, 3, 1, 2, 3]);
// set contains [1, 2, 3] only
```

# --instructions--

У цій вправі поверніть множину з такими значеннями: `1, 2, 3, 'Taco', 'Cat', 'Awesome'`.

# --hints--

Множина має містити лише такі значення: `1, 2, 3, Taco, Cat, Awesome`.

```js
assert(
  (function () {
    var test = checkSet();
    return (
      test.size == 6 &&
      test.has(1) &&
      test.has(2) &&
      test.has(3) &&
      test.has('Taco') &&
      test.has('Cat') &&
      test.has('Awesome')
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet() {
  var set = new Set([1, 2, 3, 3, 2, 1, 2, 3, 1]);
  // Only change code below this line

  // Only change code above this line
  console.log(Array.from(set));
  return set;
}

checkSet();
```

# --solutions--

```js
function checkSet(){var set = new Set([1,2,3,'Taco','Cat','Awesome']);
return set;}
```
