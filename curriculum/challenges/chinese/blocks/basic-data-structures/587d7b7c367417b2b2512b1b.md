---
id: 587d7b7c367417b2b2512b1b
title: 使用 delete 关键字删除对象属性
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

在之前的挑战中，我们已经试过添加和修改对象中的键值对。 现在我们来看看如何从一个对象中*移除*一个键值对。

我们再来回顾一下上一个挑战中的 `foods` 对象。 如果我们想移除 `apples` 属性，可以像这样使用 `delete` 关键字：

```js
delete foods.apples;
```

# --instructions--

请使用 delete 关键字来移除 `foods` 中的 `oranges`、`plums` 和 `strawberries` 属性。

# --hints--

`foods` 对象应只包含 3 个属性：`apples`、`grapes` 和 `bananas`。

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

应使用 `delete` 关键字来移除 `oranges`、`plums` 和 `strawberries` 属性。

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
