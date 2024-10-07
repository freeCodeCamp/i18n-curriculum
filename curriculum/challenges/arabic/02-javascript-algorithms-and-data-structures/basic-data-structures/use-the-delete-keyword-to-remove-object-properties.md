---
id: 587d7b7c367417b2b2512b1b
title: استخدم كلمة delete لإزالة خصائص الكائن (Use the delete Keyword to Remove Object Properties)
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

في تحديات سابقة، إضافة وتعديل أزواج key-value في object ما. هنا سنرى كيف يمكننا *إزالة* زوج key-value من object.

عد النظر في مثال object باسم `foods` مرة أخيرة. إذا أردنا إزالة key باسم `apples`، يمكننا إزالته باستخدام كلمة `delete` هكذا:

```js
delete foods.apples;
```

# --instructions--

استخدم كلمة delete لإزالة keys الآتية `oranges`, و `plums`, و `strawberries` من object باسم `foods`.

# --hints--

يجب أن يحتوي object باسم `foods` على ثلاث keys فقط: `apples`, و `grapes`, و `bananas`.

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

يجب إزالة keys الآتية `oranges`, و `plums`, و `strawberries` باستخدام `delete`.

```js
assert(
  __helpers.removeJSComments(code).search(/oranges:/) !== -1 &&
    __helpers.removeJSComments(code).search(/plums:/) !== -1 &&
    __helpers.removeJSComments(code).search(/strawberries:/) !== -1
);
```

# --seed--

## --seed-contents--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

// Only change code below this line

// Only change code above this line

console.log(foods);
```

# --solutions--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

delete foods.oranges;
delete foods.plums;
delete foods.strawberries;

console.log(foods);
```
