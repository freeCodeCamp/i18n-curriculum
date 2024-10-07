---
id: 587d7b7b367417b2b2512b17
title: Combinare gli array con l'operatore di propagazione
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

`thatArray` avrà i valori `['basil', 'cilantro', 'sage', 'rosemary', 'parsley', 'thyme', 'coriander']`.

Utilizzando la sintassi di propagazione, abbiamo appena realizzato un'operazione che sarebbe stata più complessa e più prolissa se avessimo usato metodi tradizionali.

# --instructions--

Abbiamo definito una funzione `spreadOut` che restituisce la variabile `sentence`. Modifica la funzione usando l'operatore <dfn>di propagazione</dfn> in modo che restituisca l'array `['learning', 'to', 'code', 'is', 'fun']`.

# --hints--

`spreadOut` dovrebbe restituire `["learning", "to", "code", "is", "fun"]`

```js
assert.deepEqual(spreadOut(), ['learning', 'to', 'code', 'is', 'fun']);
```

La funzione `spreadOut` dovrebbe utilizzare la sintassi a espansione

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
