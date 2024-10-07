---
id: 9d7123c8c441eeafaeb5bdef
title: Remover elementos de um array usando slice em vez de splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. Aqui está um exemplo:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Aqui `splice` retorna a string `London` e a remove do array cities. `cities` terá o valor `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Como vimos no último desafio, o método `slice` não altera o array original; ele retorna um novo array que pode ser armazenado em uma variável. Lembre-se de que o método `slice` toma dois argumentos para os índices de início e fim e retorna um array com os elementos presentes entre esses índices (o índice de fim é não-inclusivo). Usar o método `slice` em vez do `splice` ajuda a evitar alterações em arrays e, portanto, efeitos colaterais.

# --instructions--

Reescreva a função `nonMutatingSplice` com `slice` em vez de `splice`. Ela deve limitar o array `cities` providenciado ao tamanho 3 e retornar um novo array com apenas os três primeiros itens.

Não modifique o array original passado à função.

# --hints--

Você deve usar o método `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Você não deve usar o método `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Você não deve modificar o array original passado à função.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` deve retornar `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
