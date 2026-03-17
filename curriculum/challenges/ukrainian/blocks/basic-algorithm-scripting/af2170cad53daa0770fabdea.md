---
id: af2170cad53daa0770fabdea
title: Мутації
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Поверніть `true`, якщо рядок у першому елементі масиву містить усі літери рядка у другому елементі масиву.

Наприклад, `["hello", "Hello"]` має повернути `true`, тому що всі літери другого рядка присутні в першому, ігноруючи регістр.

Аргументи `["hello", "hey"]` мають повернути `false`, тому що рядок `hello` не містить `y`.

Нарешті, `["Alien", "line"]` має повернути `true`, тому що всі літери в `line` присутні в `Alien`.

# --hints--

`mutation(["hello", "hey"])` має повернути `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` має повернути `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` має повернути `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` має повернути `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` має повернути `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` має повернути `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` має повернути `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` має повернути `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` має повернути `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` має повернути `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` має повернути `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` має повернути `true`.

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
