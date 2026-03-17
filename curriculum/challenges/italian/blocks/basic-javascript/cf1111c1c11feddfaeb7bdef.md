---
id: cf1111c1c11feddfaeb7bdef
title: Annidare un array dentro un altro array
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

Puoi anche annidare array all'interno di altri array, come nell'esempio seguente:

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

Questo si chiama anche <dfn>array multidimensionale</dfn>.

# --instructions--

Crea un array annidato chiamato `myArray`.

# --hints--

`myArray` dovrebbe avere almeno un array annidato dentro un altro array.

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
