---
id: 587d7b7b367417b2b2512b17
title: 전개 연산자로 배열을 결합하기
challengeType: 1
forumTopicId: 301156
dashedName: combine-arrays-with-the-spread-operator
---

# --description--

Another huge advantage of the <dfn>spread</dfn> operator is the ability to combine arrays, or to insert all the elements of one array into another, at any index. With more traditional syntaxes, we can concatenate arrays, but this only allows us to combine arrays at the end of one, and at the start of another. Spread syntax makes the following operation extremely simple:

```js
let thisArray = ['sage', 'rosemary', 'parsley', 'thyme'];

let thatArray = ['basil', 'cilantro', ...thisArray, 'coriander'];
```

`thatArray`는 `['basil', 'cilantro', 'sage', 'rosemary', 'parsley', 'thyme', 'coriander']`의 값을 가지게 됩니다.

전통적인 방법을 사용하면 더 복잡했을 작업을 전개 구문을 사용하여 쉽게 해낼 수 있었습니다.

# --instructions--

우리는 변수 `sentence`를 반환하는 `spreadOut` 함수를 정의했습니다. <dfn>전개(spread)</dfn> 연산자를 사용하여 `['learning', 'to', 'code', 'is', 'fun']` 배열을 반환하도록 함수를 수정합니다.

# --hints--

`spreadOut`은 `["learning", "to", "code", "is", "fun"]`을 반환해야 합니다.

```js
assert.deepEqual(spreadOut(), ['learning', 'to', 'code', 'is', 'fun']);
```

`spreadOut` 함수는 전개 구문을 활용해야 합니다.

```js
assert.notStrictEqual(spreadOut.toString().search(/[...]/), -1);
```

# --seed--

## --seed-contents--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence; // Change this line
  return sentence;
}

console.log(spreadOut());
```

# --solutions--

```js
function spreadOut() {
  let fragment = ['to', 'code'];
  let sentence = ['learning', ...fragment, 'is', 'fun'];
  return sentence;
}
```
