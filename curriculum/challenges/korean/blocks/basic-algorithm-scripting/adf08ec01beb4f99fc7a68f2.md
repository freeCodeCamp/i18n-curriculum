---
id: adf08ec01beb4f99fc7a68f2
title: 거짓 같은 값 필터링
challengeType: 1
forumTopicId: 16014
dashedName: falsy-bouncer
---

# --description--

배열에서 모든 거짓 같은 값을 제거하세요. 새로운 배열을 반환하고, 원본 배열은 변경하지 마세요.

JavaScript에서 거짓 같은 값은 `false`, `null`, `0`, `""`, `undefined`, 그리고 `NaN`입니다.

힌트: 각 값을 불리언으로 변환해 보세요.

# --hints--

`bouncer([7, "ate", "", false, 9])`는 `[7, "ate", 9]`를 반환해야 합니다.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])`는 `["a", "b", "c"]`를 반환해야 합니다.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])`는 `[]`를 반환해야 합니다.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])`는 `[1, 2]`를 반환해야 합니다.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`arr`를 변경하면 안 됩니다.

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
