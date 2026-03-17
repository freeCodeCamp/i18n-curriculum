---
id: cf1111c1c11feddfaeb1bdef
title: Iterare con i loop while in JavaScript
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

Puoi eseguire lo stesso codice più volte usando un loop.

Il primo tipo di loop che impareremo si chiama loop `while` perché continua a eseguire finché una condizione specificata è vera e si ferma una volta che quella condizione non è più vera.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

Nell'esempio di codice sopra, il loop `while` verrà eseguito 5 volte e aggiungerà i numeri da 0 a 4 a `ourArray`.

Proviamo a far funzionare un loop while aggiungendo valori a un array.

# --instructions--

Aggiungi i numeri da 5 a 0 (inclusi) in ordine decrescente a `myArray` usando un loop `while`.

# --hints--

Dovresti usare un loop `while` per questo.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray` dovrebbe essere uguale a `[5, 4, 3, 2, 1, 0]`.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
