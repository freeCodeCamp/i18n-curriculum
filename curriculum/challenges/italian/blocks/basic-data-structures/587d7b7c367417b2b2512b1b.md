---
id: 587d7b7c367417b2b2512b1b
title: Utilizzare la parola chiave delete per rimuovere proprietà da un oggetto
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

Nelle sfide precedenti, abbiamo sia aggiunto che modificato le coppie chiave-valore di un oggetto. Qui vedremo come possiamo *rimuovere* una coppia chiave-valore da un oggetto.

Rivisitiamo il nostro esempio di oggetto `foods` un'ultima volta. Se volessimo rimuovere la chiave `apples`, possiamo eliminarla utilizzando la parola chiave `delete` in questo modo:

```js
delete foods.apples;
```

# --instructions--

Usa la parola chiave delete per rimuovere le chiavi `oranges`, `plums`, e `strawberries` dall'oggetto `foods`.

# --hints--

L'oggetto `foods` dovrebbe avere solo tre chiavi: `apples`, `grapes`, e `bananas`.

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

Le chiavi `oranges`, `plums` e `strawberries` dovrebbero essere rimosse usando `delete`.

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
