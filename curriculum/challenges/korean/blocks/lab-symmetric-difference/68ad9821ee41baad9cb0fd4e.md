---
id: 68ad9821ee41baad9cb0fd4e
title: 대칭 차 함수 만들기
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

두 배열을 비교해서 두 배열 중 하나에만 있고 다른 배열에는 없는 항목들로 새 배열을 반환하세요. 다시 말해, 두 배열의 대칭 차집합을 반환하세요.

예:

- 배열 A: `["diamond", "stick", "apple"]`

- 배열 B: `["stick", "emerald", "bread"]`

- 결과: `["diamond", "apple", "emerald", "bread"]`

**목표:** 아래 사용자 스토리를 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. `diffArray` 함수는 배열을 반환해야 합니다.
2. 함수는 두 개의 인수를 받아야 하며, 두 인수 모두 배열이어야 합니다.
3. 함수는 `filter` 메서드를 사용해야 합니다.
4. 함수는 두 배열의 대칭 차집합을 반환해야 합니다.
5. 대칭 차집합이 없으면 빈 배열을 반환해야 합니다.
6. 첫 번째 배열에만 있는 항목을 두 번째 배열에만 있는 항목보다 먼저 나열하되, 각 배열 내에서 원래 순서를 유지해야 합니다.

# --hints--

`diffArray`라는 이름의 함수가 있어야 합니다.

```js
assert.isFunction(diffArray);
```

`diffArray` 함수는 `filter` 메서드를 사용해야 합니다.

```js
const spy = __helpers.spyOn(Array.prototype, 'filter');
try {
  diffArray([1, 2], [2, 3]);
  assert.isAbove(spy.calls.length, 0);
} finally {
  spy.restore();
}
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])`는 `["pink wool"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])`는 `["diorite", "pink wool"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray(["andesite", "grass", "dirt", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])`는 `[]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])`는 `["pen", "pencil", "notebook"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])`는 `["car", "train", "plane"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])`는 `["banana", "grape"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])`는 `["apple", "banana"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])`는 `["apple", "banana"]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])`는 `[]`를 반환해야 합니다.

```js
assert.deepEqual(diffArray(
  [],
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
