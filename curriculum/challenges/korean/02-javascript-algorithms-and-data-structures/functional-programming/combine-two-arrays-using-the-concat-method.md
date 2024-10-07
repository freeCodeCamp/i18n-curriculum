---
id: 587d7da9367417b2b2512b66
title: concat 메소드로 두 배열 합치기
challengeType: 1
forumTopicId: 301229
dashedName: combine-two-arrays-using-the-concat-method
---

# --description--

<dfn>Concatenation</dfn> means to join items end to end. JavaScript offers the `concat` method for both strings and arrays that work in the same way. For arrays, the method is called on one, then another array is provided as the argument to `concat`, which is added to the end of the first array. It returns a new array and does not mutate either of the original arrays. Here's an example:

```js
[1, 2, 3].concat([4, 5, 6]);
```

반환된 배열은 `[1, 2, 3, 4, 5, 6]` 입니다.

# --instructions--

`original`의 끝에 `attach`를 추가하기 위해 `nonMutatingConcat` 함수에 `concat` 메소드를 사용하시오. 이 함수는 합쳐진 배열을 반환해야 합니다.

# --hints--

`concat`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.concat/g));
```

`first` 배열은 변하지 않아야 합니다.

```js
assert(JSON.stringify(first) === JSON.stringify([1, 2, 3]));
```

`second` 배열은 변하지 않아야 합니다.

```js
assert(JSON.stringify(second) === JSON.stringify([4, 5]));
```

`nonMutatingConcat([1, 2, 3], [4, 5])`은 `[1, 2, 3, 4, 5]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(nonMutatingConcat([1, 2, 3], [4, 5])) ===
    JSON.stringify([1, 2, 3, 4, 5])
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingConcat(original, attach) {
  // Only change code below this line


  // Only change code above this line
}

const first = [1, 2, 3];
const second = [4, 5];
nonMutatingConcat(first, second);
```

# --solutions--

```js
function nonMutatingConcat(original, attach) {
  return original.concat(attach);
}
const first = [1, 2, 3];
const second = [4, 5];
```
