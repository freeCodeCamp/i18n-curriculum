---
id: cf1111c1c11feddfaeb7bdef
title: Вкласти один масив у інший масив
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

Ви також можете вкладати масиви всередину інших масивів, як показано нижче:

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

Це також називається <dfn>багатовимірним масивом</dfn>.

# --instructions--

Створіть вкладений масив з назвою `myArray`.

# --hints--

`myArray` має містити принаймні один масив, вкладений у інший масив.

```js
assert(Array.isArray(myArray) && myArray.some(Array.isArray));
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = [[1, 2, 3]];
```
