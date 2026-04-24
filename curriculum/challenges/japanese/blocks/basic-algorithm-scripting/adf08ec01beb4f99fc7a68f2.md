---
id: adf08ec01beb4f99fc7a68f2
title: 偽値バウンサー
challengeType: 1
forumTopicId: 16014
dashedName: falsy-bouncer
---

# --description--

配列からすべての偽値を取り除いてください。新しい配列を返し、元の配列は変更しないでください。

JavaScriptの偽値は `false`、`null`、`0`、`""`、`undefined`、および `NaN` です。

ヒント：各値をブール値に変換してみてください。

# --hints--

`bouncer([7, "ate", "", false, 9])` は `[7, "ate", 9]` を返すべきです。

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` は `["a", "b", "c"]` を返すべきです。

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` は `[]` を返すべきです。

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` は `[1, 2]` を返すべきです。

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`arr` を変更してはいけません。

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

# --seed--

## --seed-contents--

```js
function bouncer(arr) {
  return arr;
}

bouncer([7, 'ate', '', false, 9]);
```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}

bouncer([7, 'ate', '', false, 9]);
```
