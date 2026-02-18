---
id: 68ad9821ee41baad9cb0fd4e
title: Construir uma Função de Diferença Simétrica
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Compare dois arrays e retorne um novo array com qualquer item encontrado em apenas um dos dois arrays passados, mas não ambos. Em outras palavras, retorne a diferença simétrica de dois arrays.

Exemplo:

- Array A: `["diamante", "pau", "maçã"]`

- Array B: `["vara", "esmeralda", "pão"]`

Resultado: `["diamante", "maçã", "esmeralda", "pão"]`

**Objetivo:** Cumprir as user stories abaixo e fazer todos os testes passarem para completar o laboratório.

**Histórias de Usuário:**

1. Sua função `diffArray` deve retornar um array.
2. Sua função deve receber dois argumentos, ambos os quais são arrays.
3. Sua função deve fazer uso do método `filter`.
4. Sua função deve retornar a diferença simétrica dos dois arrays.
5. Sua função deve retornar um array vazio se não houver diferença simétrica.


# --hints--

Você deve ter uma função chamada `diffArray`.

```js
assert.isFunction(diffArray);
```

A função `diffArray` deve usar o método `filter` para filtrar os itens que estão presentes em ambos os arrays.

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorito", "andesito", "grama", "terra", "lã rosa", "arbusto morto"], ["diorito", "andesito", "grama", "terra", "arbusto morto"])` deve retornar `["lã rosa"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` deve retornar `["diorite", "pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray` deve retornar um array vazio quando chamado com dois arrays idênticos.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` deve retornar `["pen", "pencil", "notebook"]`.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` deve retornar `["car", "train", "plane"]`.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` deve retornar `["banana", "grape"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` deve retornar `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` deve retornar `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` deve retornar `[]`.

```js
assert.deepEqual(diffArray(
  [], 
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
