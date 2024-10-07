---
id: 587d7b7b367417b2b2512b17
title: Combinar arrays com o operador spread
challengeType: 1
forumTopicId: 301156
dashedName: combine-arrays-with-the-spread-operator
---

# --description--

Another huge advantage of the <dfn>spread</dfn> operator is the ability to combine arrays, or to insert all the elements of one array into another, at any index. With more traditional syntaxes, we can concatenate arrays, but this only allows us to combine arrays at the end of one, and at the start of another. Spread syntax makes the following operation extremely simple:

```js
let thisArray = ['sage', 'rosemary', 'parsley', 'thyme'];

let thatArray = ['basil', 'cilantro', ...thisArray, 'coriander'];
```

`thatArray` teria o valor `['basil', 'cilantro', 'sage', 'rosemary', 'parsley', 'thyme', 'coriander']`.

Usando a sintaxe de spread, acabamos de conseguir uma operação que teria sido mais complexa e mais extensa se tivéssemos utilizado métodos tradicionais.

# --instructions--

Definimos uma função `spreadOut` que retorna a variável `sentence`. Modifique a função usando o operador <dfn>spread</dfn> para que ele retorne o array `['learning', 'to', 'code', 'is', 'fun']`.

# --hints--

`spreadOut` deve retornar `["learning", "to", "code", "is", "fun"]`

```js
assert.deepEqual(spreadOut(), ['learning', 'to', 'code', 'is', 'fun']);
```

A função `spreadOut` deve utilizar a sintaxe de spread

```js
assert.notStrictEqual(spreadOut.toString().search(/[...]/), -1);
```

# --seed--

## --seed-contents--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence; // Change this line
  return sentence;
}

console.log(spreadOut());
```

# --solutions--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence = ['learning', ...fragment, 'is', 'fun'];
  return sentence;
}
```
