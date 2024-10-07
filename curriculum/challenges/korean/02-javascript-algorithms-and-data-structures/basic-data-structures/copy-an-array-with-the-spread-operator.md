---
id: 587d7b7b367417b2b2512b13
title: 전개 구문을 사용하여 배열 복사하기
challengeType: 1
forumTopicId: 301157
dashedName: copy-an-array-with-the-spread-operator
---

# --description--

While `slice()` allows us to be selective about what elements of an array to copy, among several other useful tasks, ES6's new <dfn>spread operator</dfn> allows us to easily copy *all* of an array's elements, in order, with a simple and highly readable syntax. The spread syntax simply looks like this: `...`

실제로 전개 연산자를 사용하여 다음과 같이 배열을 복사할 수 있습니다.

```js
let thisArray = [true, true, undefined, false, null];
let thatArray = [...thisArray];
```

`thatArray`는 `[true, true, undefined, false, null]`와 같습니다. `thisArray`는 변경되지 않고 `thatArray`는 `thisArray`와 동일한 요소를 포함합니다.

# --instructions--

`arr` (배열)와 `num` (숫자)을 인수로 사용하는 함수 `copyMachine`를 정의했습니다. 이 함수는 `num`개의 `arr`의 복사본으로 구성된 새 배열을 반환해야 합니다. 이미 대부분의 작업이 되어 있지만 아직 완벽하게 동작하지 않습니다. 전개 구문을 사용하여 함수를 수정하여 제대로 동작하도록 만드세요 (힌트: 이미 다룬 다른 메소드가 여기서 유용할 수 있습니다!).

# --hints--

`copyMachine([true, false, true], 2)`는 `[[true, false, true], [true, false, true]]`를 반환해야 합니다.

```js
assert.deepEqual(copyMachine([true, false, true], 2), [
  [true, false, true],
  [true, false, true]
]);
```

`copyMachine([1, 2, 3], 5)`는 `[[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]`을 반환해야 합니다.

```js
assert.deepEqual(copyMachine([1, 2, 3], 5), [
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3],
  [1, 2, 3]
]);
```

`copyMachine([true, true, null], 1)`은 `[[true, true, null]]`를 반환해야 합니다.

```js
assert.deepEqual(copyMachine([true, true, null], 1), [[true, true, null]]);
```

`copyMachine(["it works"], 3)`는 `[["it works"], ["it works"], ["it works"]]`를 반환해야 합니다.

```js
assert.deepEqual(copyMachine(['it works'], 3), [
  ['it works'],
  ['it works'],
  ['it works']
]);
```

`copyMachine` 함수는 배열 `arr`에 `spread operator`(전개 연산자)를 활용해야 합니다.

```js
assert(__helpers.removeJSComments(__helpers.removeJSComments(code)).match(/\.\.\.\s*arr/));
```

# --seed--

## --seed-contents--

```js
function copyMachine(arr, num) {
  let newArr = [];
  while (num >= 1) {
    // Only change code below this line

    // Only change code above this line
    num--;
  }
  return newArr;
}

console.log(copyMachine([true, false, true], 2));
```

# --solutions--

```js
function copyMachine(arr,num){
    let newArr=[];
    while(num >=1){
    newArr.push([...arr]);
    num--;
    }
    return newArr;
}
console.log(copyMachine([true, false, true], 2));
```
