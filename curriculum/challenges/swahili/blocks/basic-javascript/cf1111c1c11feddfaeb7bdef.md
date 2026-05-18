---
id: cf1111c1c11feddfaeb7bdef
title: Panga safu ya data moja ndani ya safu nyingine ya data
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

Unaweza pia kupanga ndani safu za data ndani ya safu nyingine za data, kama ifuatavyo:

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

Hii pia huitwa <dfn>safu ya data yenye vipimo vingi</dfn>.

# --instructions--

Tengeneza safu ya data iliyopangwa ndani iitwayo `myArray`.

# --hints--

`myArray` inapaswa kuwa na angalau safu moja ya data iliyopangwa ndani ya safu nyingine ya data.

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
