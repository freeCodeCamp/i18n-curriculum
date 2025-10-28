---
id: af2170cad53daa0770fabdea
title: Implementar o Algoritmo de Mutações
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**Objetivo:** Cumprir as user stories abaixo e fazer todos os testes passarem para completar o laboratório.

**Histórias de Usuário:**

1. Crie uma função chamada `mutation` que recebe um array como argumento.
1. `mutation` deve retornar `true` se a string no primeiro elemento do array contiver todas as letras da string no segundo elemento do array, e `false` caso contrário.Por exemplo:
    - `mutation(["hello", "Hello"])`, deve retornar `true` porque todas as letras na segunda string estão presentes na primeira, ignorando maiúsculas e minúsculas.
    - `mutation(["hello", "hey"])` deve retornar `false` porque a string `hello` não contém um `y`.
    - `mutation(["Alien", "line"])`, deve retornar `true` porque todas as letras em `line` estão presentes em `Alien`.

# --hints--

`mutation(["hello", "hey"])` deve retornar `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello","Hello"])` deve retornar `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` deve retornar `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` deve retornar `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` deve retornar `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` deve retornar `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` deve retornar `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` deve retornar `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` deve retornar `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` deve retornar `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` deve retornar `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` deve retornar `true`.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
