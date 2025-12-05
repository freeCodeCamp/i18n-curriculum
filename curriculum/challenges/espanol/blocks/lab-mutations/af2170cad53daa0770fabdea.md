---
id: af2170cad53daa0770fabdea
title: Implementar el algoritmo de mutaciones
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**Objetivo:** Cumplir con las historias de usuario a continuación y pasar todas las pruebas para completar el laboratorio.

**Historias de usuario:**

1. Create una función llamada `mutation` que toma un array como su argumento.
1. `mutation` should return `true` if the string in the first element of the array contains all of the letters of the string in the second element of the array, and `false` otherwise. For example:
    - `mutation(["hello", "Hello"])`, debe devolver `true` porque todas las letras en la segunda cadena están presentes en la primera, ignorando mayúsculas.
    - `mutation(["hello", "hey"])` debe devolver `false` porque la cadena `hello` no contiene una `y`.
    - `mutation(["Alien", "line"])`, debe devolver `true` porque todas las letras en `line` están presentes en `Alien`.

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
