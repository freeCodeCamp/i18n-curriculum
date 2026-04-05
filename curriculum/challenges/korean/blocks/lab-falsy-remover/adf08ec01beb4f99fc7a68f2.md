---
id: adf08ec01beb4f99fc7a68f2
title: 거짓 같은 값을 제거하는 함수 구현하기
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

이 실습에서는 배열에서 모든 거짓 같은 값을 제거하는 함수를 만드세요.

JavaScript에서 거짓 같은 값은 `false`, `null`, `0`, `""`, `undefined`, 그리고 `NaN`입니다.

**목표**: 아래 사용자 스토리를 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. 배열을 인수로 받는 `bouncer` 함수가 있어야 합니다.
1. `bouncer` 함수는 인수로 전달된 배열과 같은 요소를 포함하되 거짓 같은 요소는 제거된 새 배열을 반환해야 합니다.
1. `bouncer` 함수는 인수로 전달된 배열을 변경하지 않아야 합니다.

힌트: 각 값을 불리언으로 변환해 보세요.

# --hints--

`bouncer` 함수가 있어야 합니다.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])`은 `[7, "ate", 9]`을 반환해야 합니다.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])`은 `["a", "b", "c"]`을 반환해야 합니다.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])`은 `[]`을 반환해야 합니다.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])`은 `[1, 2]`을 반환해야 합니다.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`bouncer` 함수는 인수로 전달된 배열을 변경하지 않아야 합니다.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])`은 `[]`을 반환해야 합니다.  

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
