---
id: a3f503de51cf954ede28891d
title: اعثر على الفرق المتماثل
challengeType: 1
forumTopicId: 301611
dashedName: find-the-symmetric-difference
---

# --description--

The mathematical term <dfn>symmetric difference</dfn> (`△` or `⊕`) of two sets is the set of elements which are in either of the two sets but not in both. For example, for sets `A = {1, 2, 3}` and `B = {2, 3, 4}`, `A △ B = {1, 4}`.

والفرق المتماثل عملية ثنائية، مما يعني أنها لا تعمل إلا على عنصرين. لذلك لتقييم تعبير يتضمن اختلافات متماثلة بين *ثلاثة* عناصر (`A △ B △ C`)، يجب عليك إكمال عملية واحدة في المرة الواحدة. لذلك، بالنسبة للمجموعات `A` و `B` أعلاه، و `C = {2, 3}`، `A △ B △ C = (A △ B) △ C = {1, 4}△ {2, 3} = {1، 2، 3، 4}`.

# --instructions--

إنشاء دالة تأخذ مصفوفين أو أكثر وتعيد مجموعة من الفرق المتماثل بينهم. يجب أن تحتوي المصفوفة التي تم إرجاعها على قيم فريدة فقط (*لا تكرارات*).

# --hints--

`الرمز ([1, 2, 3] [5, 2, 1, 4])` يجب أن يعود `[3, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 3], [5, 2, 1, 4]), [3, 4, 5]);
```

`الرمز ([1, 2, 3] [5, 2, 1, 4])` يجب أن يحتوي على ثلاثة عناصر فقط.

```js
assert.equal(sym([1, 2, 3], [5, 2, 1, 4]).length, 3);
```

`الرمز ([1, 2, 3, 3] [5, 2, 1, 4])` يجب أن يعود `[3, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 3, 3], [5, 2, 1, 4]), [3, 4, 5]);
```

`الرمز ([1, 2, 3, 3] [5, 2, 1, 4])` يجب أن يحتوي على ثلاثة عناصر فقط.

```js
assert.equal(sym([1, 2, 3, 3], [5, 2, 1, 4]).length, 3);
```

`الرمز ([1, 2, 3], [5, 2, 1, 4, 5)` يجب أن يعود `[3, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 3], [5, 2, 1, 4, 5]), [3, 4, 5]);
```

`sym([1, 2, 3], [5, 2, 1, 4, 5])` يجب أن يحتوي على ثلاثة عناصر فقط.

```js
assert.equal(sym([1, 2, 3], [5, 2, 1, 4, 5]).length, 3);
```

`sym([1, 2, 5], [2, 3, 5], [3, 4, 5])` should return `[1, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 5], [2, 3, 5], [3, 4, 5]), [1, 4, 5]);
```

`sym([1, 2, 5], [2, 3, 5], [3, 4, 5])` should contain only three elements.

```js
assert.equal(sym([1, 2, 5], [2, 3, 5], [3, 4, 5]).length, 3);
```

`sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5])` should return `[1, 4, 5]`.

```js
assert.sameMembers(sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5]), [1, 4, 5]);
```

`sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5])` should contain only three elements.

```js
assert.equal(sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5]).length, 3);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3])` should return `[2, 3, 4, 6, 7]`.

```js
assert.sameMembers(
  sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3]),
  [2, 3, 4, 6, 7]
);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3])` should contain only five elements.

```js
assert.equal(
  sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3]).length,
  5
);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1])` should return `[1, 2, 4, 5, 6, 7, 8, 9]`.

```js
assert.sameMembers(
  sym(
    [3, 3, 3, 2, 5],
    [2, 1, 5, 7],
    [3, 4, 6, 6],
    [1, 2, 3],
    [5, 3, 9, 8],
    [1]
  ),
  [1, 2, 4, 5, 6, 7, 8, 9]
);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1])` should contain only eight elements.

```js
assert.equal(
  sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1])
    .length,
  8
);
```

# --seed--

## --seed-contents--

```js
function sym(args) {
  return args;
}

sym([1, 2, 3], [5, 2, 1, 4]);
```

# --solutions--

```js
function sym() {
  var arrays = [].slice.call(arguments);
  return arrays.reduce(function (symDiff, arr) {
    return symDiff.concat(arr).filter(function (val, idx, theArr) {
      return theArr.indexOf(val) === idx
        && (symDiff.indexOf(val) === -1 || arr.indexOf(val) === -1);
    });
  });
}
sym([1, 2, 3], [5, 2, 1, 4]);
```
