---
id: 587d7da9367417b2b2512b67
title: Push 대신 concat를 사용하여 배열의 끝에 요소 추가하기
challengeType: 1
forumTopicId: 301226
dashedName: add-elements-to-the-end-of-an-array-using-concat-instead-of-push
---

# --description--

Functional programming is all about creating and using non-mutating functions.

이전 과제에서 배열의 원형을 변형하지 않고 배열을 합치는 방법으로 `concat` 메소드를 소개했습니다. `concat`를 `push` 메소드와 비교해보겠습니다. `push`는 메소드가 호출되는 배열의 끝에 아이템을 추가하는데 이는 해당 배열을 변형시킵니다. 여기 예시가 있습니다.

```js
const arr = [1, 2, 3];
arr.push(4, 5, 6);
```

`arr`는 `[1, 2, 3, 4, 5, 6]`이라는 수정된 값을 가지게 될 것이고 이는 함수형 프로그래밍이 아닙니다.

`concat`는 변형이 된다는 부작용 없이 배열의 끝에 새로운 아이템을 합치는 방식을 제공합니다.

# --instructions--

`nonMutatingPush` 함수가 `concat`를 사용하여 `original` 혹은 `newItem` 배열을 변형하지 않고 `original`의 끝에 `newItem`을 합칠 수 있도록 고치시오. 해당 함수는 배열을 반환해야 합니다.

# --hints--

`concat` 메소드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.concat/g));
```

`push`를 사용하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?push/g));
```

`first` 배열은 변하지 않아야 합니다.

```js
assert(JSON.stringify(first) === JSON.stringify([1, 2, 3]));
```

`second` 배열은 변하지 않아야 합니다.

```js
assert(JSON.stringify(second) === JSON.stringify([4, 5]));
```

`nonMutatingPush([1, 2, 3], [4, 5])`는 `[1, 2, 3, 4, 5]`을 반환해야 합니다.

```js
assert(
  JSON.stringify(nonMutatingPush([1, 2, 3], [4, 5])) ===
    JSON.stringify([1, 2, 3, 4, 5])
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingPush(original, newItem) {
  // Only change code below this line
  return original.push(newItem);

  // Only change code above this line
}

const first = [1, 2, 3];
const second = [4, 5];
nonMutatingPush(first, second);
```

# --solutions--

```js
function nonMutatingPush(original, newItem) {
  return original.concat(newItem);
}
const first = [1, 2, 3];
const second = [4, 5];
```
