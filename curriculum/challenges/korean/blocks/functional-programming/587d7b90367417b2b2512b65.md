---
id: 587d7b90367417b2b2512b65
title: slice 메소드로 배열의 일부 반환하기
challengeType: 1
forumTopicId: 301239
dashedName: return-part-of-an-array-using-the-slice-method
---

# --description--

`slice` 메소드는 배열에 있는 특정 요소들의 복사본을 반환합니다. 이 메소드는 두 개의 인자를 받을 수 있습니다. 첫 번째는 슬라이스를 시작할 인덱스이고, 두 번째 인자는 슬라이스가 끝나는 위치의 바로 이전 인덱스까지 적용됩니다. 인자가 제공되지 않으면, 기본적으로 배열의 처음부터 끝까지 선택되며, 이는 전체 배열을 복사하는 간편한 방법입니다. `slice` 메소드는 본래 배열을 변형시키지 않고 새로운 배열을 반환합니다.

여기 예시가 있습니다:

```js
const arr = ["Cat", "Dog", "Tiger", "Zebra"];
const newArray = arr.slice(1, 3);
```

`newArray`는 `["Dog", "Tiger"]` 값을 가질 것입니다.

# --instructions--

`beginSlice`와 `endSlice` 인덱스가 제공된 `anim` 배열의 일부를 반환하도록 `sliceArray` 함수에 `slice` 메소드를 사용하시오. 이 함수는 배열을 반환해야 합니다.

# --hints--

`slice` 메소드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

`inputAnim` 변수는 변하지 않아야 합니다.

```js
assert(
  JSON.stringify(inputAnim) ===
    JSON.stringify(['Cat', 'Dog', 'Tiger', 'Zebra', 'Ant'])
);
```

`sliceArray(["Cat", "Dog", "Tiger", "Zebra", "Ant"], 1, 3)`는 `["Dog", "Tiger"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(sliceArray(['Cat', 'Dog', 'Tiger', 'Zebra', 'Ant'], 1, 3)) ===
    JSON.stringify(['Dog', 'Tiger'])
);
```

`sliceArray(["Cat", "Dog", "Tiger", "Zebra", "Ant"], 0, 1)`는 `["Cat"]`을 반환해야 합니다.

```js
assert(
  JSON.stringify(sliceArray(['Cat', 'Dog', 'Tiger', 'Zebra', 'Ant'], 0, 1)) ===
    JSON.stringify(['Cat'])
);
```

`sliceArray(["Cat", "Dog", "Tiger", "Zebra", "Ant"], 1, 4)`는 `["Dog", "Tiger", "Zebra"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(sliceArray(['Cat', 'Dog', 'Tiger', 'Zebra', 'Ant'], 1, 4)) ===
    JSON.stringify(['Dog', 'Tiger', 'Zebra'])
);
```

# --seed--

## --seed-contents--

```js
function sliceArray(anim, beginSlice, endSlice) {
  // Only change code below this line


  // Only change code above this line
}

const inputAnim = ["Cat", "Dog", "Tiger", "Zebra", "Ant"];
sliceArray(inputAnim, 1, 3);
```

# --solutions--

```js
function sliceArray(anim, beginSlice, endSlice) {
  return anim.slice(beginSlice, endSlice);
}
const inputAnim = ["Cat", "Dog", "Tiger", "Zebra", "Ant"];
```
