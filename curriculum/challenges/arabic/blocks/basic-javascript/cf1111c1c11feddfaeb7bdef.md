---
id: cf1111c1c11feddfaeb7bdef
title: تسكين مصفوفة داخل مصفوفة أخرى
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

يمكنك أيضًا تسكين مصفوفات داخل مصفوفات أخرى، كما في المثال التالي:

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

يُسمى هذا أيضًا <dfn>مصفوفة متعددة الأبعاد</dfn>.

# --instructions--

أنشئ مصفوفة مسكنة باسم `myArray`.

# --hints--

يجب أن تحتوي `myArray` على مصفوفة واحدة على الأقل مسكنة داخل مصفوفة أخرى.

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
