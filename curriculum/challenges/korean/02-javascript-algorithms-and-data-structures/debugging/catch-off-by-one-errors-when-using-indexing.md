---
id: 587d7b86367417b2b2512b3b
title: 인덱싱을 사용할 때 발생하는 Off By One 오류 잡아내기
challengeType: 1
forumTopicId: 301189
dashedName: catch-off-by-one-errors-when-using-indexing
---

# --description--

<dfn>Off by one errors</dfn> (sometimes called OBOE) crop up when you're trying to target a specific index of a string or array (to slice or access a segment), or when looping over the indices of them. JavaScript indexing starts at zero, not one, which means the last index is always one less than the length of the item. If you try to access an index equal to the length, the program may throw an "index out of range" reference error or print `undefined`.

문자열이나 배열 메서드에서 인덱스 범위를 인수로 사용할 때, 해당 메서드가 포함 범위(주어진 인덱스의 항목이 반환되는 것에 포함되는지 여부)인지 문서를 읽고 이해하는 것이 도움이 됩니다. 다음은 off by one 오류의 몇 가지 예입니다.

```js
let alphabet = "abcdefghijklmnopqrstuvwxyz";
let len = alphabet.length;
for (let i = 0; i <= len; i++) {
  console.log(alphabet[i]);
}
for (let j = 1; j < len; j++) {
  console.log(alphabet[j]);
}
for (let k = 0; k < len; k++) {
  console.log(alphabet[k]);
}
```

첫 번째 예시는 한 번 더 반복하며, 두 번째 예시는 첫 번째 인덱스(0)를 놓치며 반복합니다. 세 번째 예시는 올바르게 작동합니다.

# --instructions--

다음 함수에서 두 가지 인덱싱 오류를 수정하여 1부터 5까지의 모든 숫자가 콘솔에 출력되도록 하세요.

# --hints--

코드에서 반복문의 초기 조건을 설정하여 첫 번째 인덱스에서 시작하도록 해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?=\s*?0\s*?;/g).length == 1);
```

코드에서 반복문의 초기 조건을 수정하여 인덱스가 0에서 시작하도록 해야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/i\s?=\s*?1\s*?;/g));
```

코드에서 반복문의 종료 조건을 설정하여 마지막 인덱스에서 멈추도록 해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/i\s*<\s*len\s*;|i\s*<=\s*len\s*-\s*1\s*;/g).length == 1);
```

코드에서 반복문의 종료 조건을 수정하여 인덱스가 길이보다 1만큼 작을 때 멈추도록 해야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?<=\s*?len;/g));
```

# --seed--

## --seed-contents--

```js
function countToFive() {
  let firstFive = "12345";
  let len = firstFive.length;
  // Only change code below this line
  for (let i = 1; i <= len; i++) {
  // Only change code above this line
    console.log(firstFive[i]);
  }
}

countToFive();
```

# --solutions--

```js
function countToFive() {
 let firstFive = "12345";
 let len = firstFive.length;
 // Only change code below this line
 for (let i = 0; i < len; i++) {
 // Only change code above this line
   console.log(firstFive[i]);
 }
}

countToFive();
```
