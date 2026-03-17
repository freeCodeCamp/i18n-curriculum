---
id: af2170cad53daa0770fabdea
title: реалізувати алгоритм мутацій
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історія користувача:**

1. Створіть функцію з назвою `mutation`, яка приймає масив як аргумент.
1. `mutation` має повертати `true`, якщо рядок у першому елементі масиву містить усі літери рядка у другому елементі масиву, інакше повертати `false`. Наприклад:
    - `mutation(["hello", "Hello"])` має повертати `true`, тому що всі літери другого рядка присутні в першому, ігноруючи регістр.
    - `mutation(["hello", "hey"])` має повертати `false`, тому що рядок `hello` не містить `y`.
    - `mutation(["Alien", "line"])` має повертати `true`, тому що всі літери в `line` присутні в `Alien`.

# --hints--

`mutation(["hello", "hey"])` має повертати `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` має повертати `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` має повертати `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` має повертати `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` має повертати `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` має повертати `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` має повертати `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` має повертати `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` має повертати `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` має повертати `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` має повертати `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` має повертати `true`.

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
