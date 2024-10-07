---
id: 587d7b7c367417b2b2512b1b
title: delete キーワードを使用してオブジェクトプロパティを削除する
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

前のチャレンジで、オブジェクトのキーと値のペアの追加と変更について説明しました。 ここでは、オブジェクトからキーと値のペアを*削除*する方法について説明します。

もう一度だけ、`foods` オブジェクトの例を取り上げてみましょう。 `apples` キーを削除したい場合は、次のように `delete` キーワードを使用して削除できます。

```js
delete foods.apples;
```

# --instructions--

delete キーワードを使用して、`foods` オブジェクトから `oranges`、`plums`、`strawberries` のキーを削除してください。

# --hints--

`foods` オブジェクトには `apples`、`grapes`、`bananas` の 3 つのキーのみが存在する必要があります。

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

`delete`を使用して `oranges`、`plums`、`strawberries` のキーを削除する必要があります。

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
