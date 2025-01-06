---
id: af2170cad53daa0770fabdea
title: Mutaciones
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Devuelve `true` si la cadena de caracteres en el primer elemento del arreglo contiene todas las letras de la cadena en el segundo elemento del arreglo.

Por ejemplo, `["hello", "Hello"]`, debe devolver `true` porque todas las letras de la segunda cadena están presentes en la primera, ignorando mayúsculas o minúsculas.

Los argumentos `["hello", "hey"]` deben devolver `false` porque la cadena `hello` no contiene `y`.

Finalmente, `["Alien", "line"]`, debe devolver `true` porque todas las letras de `line` están presentes en `Alien`.

# --hints--

`mutation(["hello", "hey"])` debe devolver `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` debe devolver `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` debe devolver `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` debe devolver `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` debe devolver `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` debe devolver `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` debe devolver `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` debe devolver `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` debe devolver `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` debe devolver `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` debe devolver `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` debe devolver `true`.

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
