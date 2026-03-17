---
id: af2170cad53daa0770fabdea
title: "implementare l'algoritmo delle mutazioni"
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**Obiettivo:** Completa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. Crea una funzione chiamata `mutation` che prende un array come argomento.
1. `mutation` dovrebbe restituire `true` se la stringa nel primo elemento dell'array contiene tutte le lettere della stringa nel secondo elemento dell'array, e `false` altrimenti. Per esempio:
    - `mutation(["hello", "Hello"])`, dovrebbe restituire `true` perché tutte le lettere della seconda stringa sono presenti nella prima, ignorando le maiuscole e minuscole.
    - `mutation(["hello", "hey"])` dovrebbe restituire `false` perché la stringa `hello` non contiene una `y`.
    - `mutation(["Alien", "line"])`, dovrebbe restituire `true` perché tutte le lettere in `line` sono presenti in `Alien`.

# --hints--

`mutation(["hello", "hey"])` dovrebbe restituire `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` dovrebbe restituire `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` dovrebbe restituire `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` dovrebbe restituire `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` dovrebbe restituire `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` dovrebbe restituire `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` dovrebbe restituire `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` dovrebbe restituire `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` dovrebbe restituire `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` dovrebbe restituire `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` dovrebbe restituire `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` dovrebbe restituire `true`.

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
