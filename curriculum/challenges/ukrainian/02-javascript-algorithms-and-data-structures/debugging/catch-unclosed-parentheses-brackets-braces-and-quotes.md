---
id: 587d7b84367417b2b2512b36
title: 'Незакриті круглі, квадратні й фігурні дужки та лапки'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

Один зі способів уникнути цієї помилки — одразу при відкритті лапок чи дужок закривати їх, а потім повертатись всередину та продовжувати програмувати. На щастя, більшість сучасних редакторів коду створюють другу частину пари автоматично.

# --instructions--

Виправте помилки парних знаків у коді.

# --hints--

Ваш код повинен виправити відсутній фрагмент масиву.

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

Ваш код повинен виправити відсутній фрагмент методу `.reduce()`. Вихідні дані консолі повинні показати, що `Sum of array values is: 6`.

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
