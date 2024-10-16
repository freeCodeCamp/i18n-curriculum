---
id: 587d7b86367417b2b2512b3b
title: Capturar erros de fora por um ao usar a indexação
challengeType: 1
forumTopicId: 301189
dashedName: catch-off-by-one-errors-when-using-indexing
---

# --description--

<dfn>Off by one errors</dfn> (sometimes called OBOE) crop up when you're trying to target a specific index of a string or array (to slice or access a segment), or when looping over the indices of them. JavaScript indexing starts at zero, not one, which means the last index is always one less than the length of the item. If you try to access an index equal to the length, the program may throw an "index out of range" reference error or print `undefined`.

Quando você usa métodos de string ou array que recebem intervalos de índices como argumentos, auxilia ler a documentação e compreender se eles são inclusivos (o item no índice especificado é parte do que é retornado) ou não. Aqui estão alguns exemplos de erros de fora por um:

```js
let alphabet = "abcdefghijklmnopqrstuvwxyz";
let len = alphabet.length;
for (let i = 0; i <= len; i++) {
  console.log(alphabet[i]);
}
for (let j = 1; j < len; j++) {
  console.log(alphabet[j]);
}
for (let k = 0; k < len; k++) {
  console.log(alphabet[k]);
}
```

O primeiro exemplo itera uma vez a mais (i <= len) e o segundo itera uma vez a menos por começar do índice 1 (let j = 1). O terceiro exemplo está certo.

# --instructions--

Corrija os dois erros de índices nas funções seguintes para que todos os números de 1 até 5 sejam exibidos no console.

# --hints--

O código deve definir a condição inicial do laço para começar do primeiro índice.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?=\s*?0\s*?;/g).length == 1);
```

O código deve corrigir a condição inicial do laço para que o índice comece em 0.

```js
assert(!__helpers.removeJSComments(code).match(/i\s?=\s*?1\s*?;/g));
```

O código deve definir a condição de parada do laço, a fim de parar no último índice.

```js
assert(__helpers.removeJSComments(code).match(/i\s*<\s*len\s*;|i\s*<=\s*len\s*-\s*1\s*;/g).length == 1);
```

O código deve corrigir a condição de parada do laço, a fim de parar no tamanho menos 1.

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?<=\s*?len;/g));
```

# --seed--

## --seed-contents--

```js
function countToFive() {
  let firstFive = "12345";
  let len = firstFive.length;
  // Only change code below this line
  for (let i = 1; i <= len; i++) {
  // Only change code above this line
    console.log(firstFive[i]);
  }
}

countToFive();
```

# --solutions--

```js
function countToFive() {
 let firstFive = "12345";
 let len = firstFive.length;
 // Only change code below this line
 for (let i = 0; i < len; i++) {
 // Only change code above this line
   console.log(firstFive[i]);
 }
}

countToFive();
```
