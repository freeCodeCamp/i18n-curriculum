---
id: 587d78b3367417b2b2512b11
title: splice() 를 사용하여 항목 추가하기
challengeType: 1
forumTopicId: 301152
dashedName: add-items-using-splice
---

# --description--

지난 도전에서 언급하였듯이 `splice()`는 최대 세 개의 매개변수를 가질 수 있다는 것 기억하시나요? 사실, 배열에 요소를 추가하기 위해 세 번째 매개변수에 요소 하나 혹은 더 많은 요소를 넣을 수 있습니다. 이는 요소 하나 또는 일련의 요소를 빠르게 다른 것으로 바꾸는데 매우 유용할 수 있습니다.

```js
const numbers = [10, 11, 12, 12, 15];
const startIndex = 3;
const amountToDelete = 1;

numbers.splice(startIndex, amountToDelete, 13, 14);
console.log(numbers);
```

위 코드를 실행하면, 두 번째로 나타난 `12`가 제거되고 그 자리에 `13`과 `14`를 추가합니다. `numbers` 배열은 이제 `[ 10, 11, 12, 13, 14, 15 ]`가 될 것입니다.

숫자 배열 numbers를 먼저 작성하고, `splice()`에 다음을 전달합니다. 요소를 삭제할 인덱스 (3), 삭제할 요소의 개수 (1), 그리고 해당 인덱스에서 삽입될 나머지 인수 (13, 14). `amountToDelete` 뒤에 (쉼표로 구분된) 요소의 수가 어떤 개수든 올 수 있으며, 각각이 삽입됩니다.

# --instructions--

우리는 HTML 색상 배열을 인수로 사용하는 함수 `htmlColorNames`를 정의했습니다. `splice()`를 사용하여 배열의 처음 두 요소를 제거하고 대신에 `'DarkSalmon'`과 `'BlanchedAlmond'`을 각각 추가하도록 함수를 수정하세요.

# --hints--

`htmlColorNames`는 `["DarkSalmon", "BlanchedAlmond", "LavenderBlush", "PaleTurquoise", "FireBrick"]`를 반환해야 합니다.

```js
assert.deepEqual(
  htmlColorNames([
    'DarkGoldenRod',
    'WhiteSmoke',
    'LavenderBlush',
    'PaleTurquoise',
    'FireBrick'
  ]),
  [
    'DarkSalmon',
    'BlanchedAlmond',
    'LavenderBlush',
    'PaleTurquoise',
    'FireBrick'
  ]
);
```

`htmlColorNames` 함수는 `splice()` 메서드를 활용해야 합니다.

```js
assert(/.splice/.test(__helpers.removeJSComments(code)));
```

`shift()` 또는 `unshift()`를 사용해서는 안 됩니다.

```js
assert(!/shift|unshift/.test(__helpers.removeJSComments(code)));
```

배열 괄호 표기법을 사용해서는 안 됩니다.

```js
assert(!/\[\d\]\s*=/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function htmlColorNames(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(htmlColorNames(['DarkGoldenRod', 'WhiteSmoke', 'LavenderBlush', 'PaleTurquoise', 'FireBrick']));
```

# --solutions--

```js
function htmlColorNames(arr) {
  arr.splice(0,2,'DarkSalmon', 'BlanchedAlmond');
  return arr;
}
```
