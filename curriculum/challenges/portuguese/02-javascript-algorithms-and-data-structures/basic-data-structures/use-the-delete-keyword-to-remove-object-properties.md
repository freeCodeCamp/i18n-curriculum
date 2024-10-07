---
id: 587d7b7c367417b2b2512b1b
title: Usar a palavra-chave delete para remover propriedades de objetos
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

Nos desafios anteriores, nós adicionamos e modificamos os pares de chave-valor de objetos. Aqui veremos como podemos *remover* uma chave-valor de um obeto.

Vamos revisitar nosso objeto de exemplo `foods` uma última vez. Se quisermos remover a chave `apples`, podemos removê-lo usando a palavra-chave `delete` assim:

```js
delete foods.apples;
```

# --instructions--

Use a palavra-chave delete para remover as chaves `oranges`, `plums` e `strawberries` do objeto `foods`.

# --hints--

O objeto `foods` deve ter apenas três chaves: `apples`, `grapes` e `bananas`.

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

As chaves `oranges`, `plums` e `strawberries` devem ser removidos usando `delete`.

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
