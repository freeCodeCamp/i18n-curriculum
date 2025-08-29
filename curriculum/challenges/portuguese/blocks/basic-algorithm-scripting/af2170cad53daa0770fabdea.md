---
id: af2170cad53daa0770fabdea
title: Identificar mutações
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Return `true` if the string in the first element of the array contains all of the letters of the string in the second element of the array.

Por exemplo, `["hello", "Hello"]`, deve retornar `true` porque todas as letras na segunda string estão presentes no primeiro, ignorando diferenças entre maiúsculos e minúsculos.

Os argumentos `["hello","hey"]` deve retornar `false` porque a string `hello` não contém o caracter `y`.

Por último, `["Alien", "line"]`, deve retornar `true` porque todas as letras em `line` estão presente em `Alien`.

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
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
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
