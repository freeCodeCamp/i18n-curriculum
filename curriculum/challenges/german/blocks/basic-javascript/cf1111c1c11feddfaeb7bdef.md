---
id: cf1111c1c11feddfaeb7bdef
title: Ein Array in ein anderes Array verschachteln
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

Sie können auch Arrays innerhalb anderer Arrays verschachteln, wie im Folgenden:

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

Dies wird auch als <dfn>mehrdimensionales Array</dfn> bezeichnet.

# --instructions--

Erstellen Sie ein verschachteltes Array namens `myArray`.

# --hints--

`myArray` sollte mindestens ein Array enthalten, das in einem anderen Array verschachtelt ist.

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
