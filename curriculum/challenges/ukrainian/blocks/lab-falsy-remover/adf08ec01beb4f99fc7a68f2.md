---
id: adf08ec01beb4f99fc7a68f2
title: реалізувати функцію для видалення хибних значень
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

У цій лабораторній роботі ви створите функцію, яка видаляє всі хибні значення з масиву.

Хибні значення в JavaScript — це `false`, `null`, `0`, `""`, `undefined` та `NaN`.

**Мета**: Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. У вас має бути `bouncer` функція, яка приймає масив як аргумент.
1. `bouncer` функція має повертати новий масив, який містить ті самі елементи, що й масив, переданий як аргумент, але без хибних елементів.
1. `bouncer` функція не повинна змінювати масив, переданий як аргумент.

Підказка: Спробуйте перетворити кожне значення на булеве.

# --hints--

У вас має бути `bouncer` функція.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` має повертати `[7, "ate", 9]`.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` має повертати `["a", "b", "c"]`.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` має повертати `[]`.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` має повертати `[1, 2]`.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`bouncer` функція не повинна змінювати масив, переданий як аргумент.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` має повертати `[]`.  

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
