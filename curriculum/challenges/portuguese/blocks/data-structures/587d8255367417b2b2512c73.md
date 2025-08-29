---
id: 587d8255367417b2b2512c73
title: Usar spread e notas para a integração do Set() da ES5
challengeType: 1
forumTopicId: 301720
dashedName: use-spread-and-notes-for-es5-set-integration
---

# --description--

Do you remember the ES6 spread operator `...`?

`...` pode pegar objetos iteráveis no ES6 e transformá-los em arrays.

Vamos criar um conjunto e conferir a função spread.

```js
var set = new Set([1,2,3]);
var setToArr = [...set]
console.log(setToArr) // returns [ 1, 2, 3 ]
```

# --instructions--

Nesse exercício, passaremos um objeto definido para a função `checkSet`. Ela deve retornar um array contendo os valores do conjunto.

Agora, você aprendeu com sucesso como usar o objeto `Set()` da ES6. Bom trabalho!

# --hints--

`checkSet(new Set([1,2,3,4,5,6,7])` deve retornar `[1, 2, 3, 4, 5, 6, 7]`.

```js
var test = checkSet(new Set([1, 2, 3, 4, 5, 6, 7]));
assert.deepEqual(test, [1, 2, 3, 4, 5, 6, 7]);
```

# --seed--

## --seed-contents--

```js
function checkSet(set){
   // Only change code below this line

   // Only change code above this line
}
```

# --solutions--

```js
function checkSet(set){
return [...set];}
```
