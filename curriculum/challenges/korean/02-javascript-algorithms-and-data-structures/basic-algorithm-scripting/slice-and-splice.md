---
id: 579e2a2c335b9d72dd32e05c
title: Slice와 Splice
challengeType: 1
forumTopicId: 301148
dashedName: slice-and-splice
---

# --description--

You are given two arrays and an index.

첫 번째 배열의 모든 요소를 두 번째 배열에 순서대로 복사합니다.

두 번째 배열의 인덱스 `n`에 요소를 삽입하기 시작합니다.

결과 배열을 반환하세요. 입력 배열들은 함수가 실행되고 난 후에도 변함이 없어야 합니다.

# --hints--

`frankenSplice([1, 2, 3], [4, 5], 1)`는 `[4, 1, 2, 3, 5]`를 반환해야 합니다.

```js
assert.deepEqual(frankenSplice([1, 2, 3], [4, 5], 1), [4, 1, 2, 3, 5]);
```

`frankenSplice([1, 2], ["a", "b"], 1)`는 `["a", 1, 2, "b"]`를 반환해야 합니다.

```js
assert.deepEqual(frankenSplice(testArr1, testArr2, 1), ['a', 1, 2, 'b']);
```

`frankenSplice(["claw", "tentacle"], ["head", "shoulders", "knees", "toes"], 2)`는 `["head", "shoulders", "claw", "tentacle", "knees", "toes"]`를 반환해야 합니다.

```js
assert.deepEqual(
  frankenSplice(
    ['claw', 'tentacle'],
    ['head', 'shoulders', 'knees', 'toes'],
    2
  ),
  ['head', 'shoulders', 'claw', 'tentacle', 'knees', 'toes']
);
```

첫 번째 배열의 모든 요소는 기존 순서대로 두 번째 배열에 추가되어야 합니다. `frankenSplice([1, 2, 3, 4], [], 0)`는 `[1, 2, 3, 4]`를 반환해야 합니다.

```js
assert.deepEqual(frankenSplice([1, 2, 3, 4], [], 0), [1, 2, 3, 4]);
```

첫 번째 배열은 함수가 실행되고 난 후에도 변함이 없어야 합니다.

```js
frankenSplice(testArr1, testArr2, 1);
assert.deepEqual(testArr1, [1, 2]);
```

두 번째 배열은 함수가 실행되고 난 후에도 변함이 없어야 합니다.

```js
frankenSplice(testArr1, testArr2, 1);
assert.deepEqual(testArr2, ['a', 'b']);
```

# --seed--

## --after-user-code--

```js
let testArr1 = [1, 2];
let testArr2 = ["a", "b"];
```

## --seed-contents--

```js
function frankenSplice(arr1, arr2, n) {
  return arr2;
}

frankenSplice([1, 2, 3], [4, 5, 6], 1);
```

# --solutions--

```js
function frankenSplice(arr1, arr2, n) {
  // It's alive. It's alive!
  let result = arr2.slice();
  for (let i = 0; i < arr1.length; i++) {
    result.splice(n+i, 0, arr1[i]);
  }
  return result;
}

frankenSplice([1, 2, 3], [4, 5], 1);
```
