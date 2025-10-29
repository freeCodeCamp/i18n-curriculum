---
id: adf08ec01beb4f99fc7a68f2
title: Implementar um Removedor de Falsy
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

Neste laboratório, você criará uma função que remove todos os valores falsy de um array.

Valores falsos (falsy) em JavaScript são `false`, `null`, `0`, `""`, `undefined`, e `NaN`.

**Objetivo**: Cumprir as user stories abaixo e fazer com que todos os testes passem para completar o laboratório.

**Histórias de Usuário:**

1. Você deve ter uma função `bouncer` que recebe um array como argumento.
1. A função `bouncer` deve retornar um novo array que contenha os mesmos elementos do array passado como argumento, com os elementos falsy removidos.
1. A função `bouncer` não deve alterar o array passado como argumento.

Dica: tente converter cada valor para um booleano.

# --hints--

Você deve ter uma função `bouncer`.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` deve retornar `[7, "ate", 9]`.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` deve retornar `["a", "b", "c"]`.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` deve retornar `[]`.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` deve retornar `[1, 2]`.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

A função `bouncer` não deve modificar o array passado como argumento.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` deve retornar `[]`.  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
