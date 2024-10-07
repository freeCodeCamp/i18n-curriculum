---
id: a3f503de51cf954ede28891d
title: Знайдіть симетричну різницю
challengeType: 1
forumTopicId: 301611
dashedName: find-the-symmetric-difference
---

# --description--

The mathematical term <dfn>symmetric difference</dfn> (`△` or `⊕`) of two sets is the set of elements which are in either of the two sets but not in both. For example, for sets `A = {1, 2, 3}` and `B = {2, 3, 4}`, `A △ B = {1, 4}`.

Симетрична різниця — це бінарна операція, тобто вона працює лише з двома елементами. Тому, щоб оцінити вираз, який містить симетричну різницю множин серед *трьох* елементів (`A △ B △ C`), потрібно виконати лише одну операцію. Таким чином, для множин `A` та `B` вище, і `C = {2, 3}`, `A △ B △ C = (A △ B) △ C = {1, 4} △ {2, 3} = {1, 2, 3, 4}`.

# --instructions--

Create a function that takes two or more arrays and returns an array of their symmetric difference. Повернений масив повинен містити лише унікальні значення (*жодних дублікатів*).

# --hints--

`sym([1, 2, 3], [5, 2, 1, 4])` має повернути `[3, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 3], [5, 2, 1, 4]), [3, 4, 5]);
```

`sym([1, 2, 3], [5, 2, 1, 4])` має містити лише три елементи.

```js
assert.equal(sym([1, 2, 3], [5, 2, 1, 4]).length, 3);
```

`sym([1, 2, 3, 3], [5, 2, 1, 4])` має повернути `[3, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 3, 3], [5, 2, 1, 4]), [3, 4, 5]);
```

`sym([1, 2, 3, 3], [5, 2, 1, 4])` має містити лише три елементи.

```js
assert.equal(sym([1, 2, 3, 3], [5, 2, 1, 4]).length, 3);
```

`sym([1, 2, 3], [5, 2, 1, 4, 5])` має повернути `[3, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 3], [5, 2, 1, 4, 5]), [3, 4, 5]);
```

`sym([1, 2, 3], [5, 2, 1, 4, 5])` має містити лише три елементи.

```js
assert.equal(sym([1, 2, 3], [5, 2, 1, 4, 5]).length, 3);
```

`sym([1, 2, 5], [2, 3, 5], [3, 4, 5])` має повернути `[1, 4, 5]`.

```js
assert.sameMembers(sym([1, 2, 5], [2, 3, 5], [3, 4, 5]), [1, 4, 5]);
```

`sym([1, 2, 5], [2, 3, 5], [3, 4, 5])` має містити лише три елементи.

```js
assert.equal(sym([1, 2, 5], [2, 3, 5], [3, 4, 5]).length, 3);
```

`sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5])` має повернути `[1, 4, 5]`.

```js
assert.sameMembers(sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5]), [1, 4, 5]);
```

`sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5])` має містити лише три елементи.

```js
assert.equal(sym([1, 1, 2, 5], [2, 2, 3, 5], [3, 4, 5, 5]).length, 3);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3])` має повернути `[2, 3, 4, 6, 7]`.

```js
assert.sameMembers(
  sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3]),
  [2, 3, 4, 6, 7]
);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3])` має містити лише п’ять елементів.

```js
assert.equal(
  sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3]).length,
  5
);
```

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1])` має повернути `[1, 2, 4, 5, 6, 7, 8, 9]`.

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

`sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1])` має містити лише вісім елементів.

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
