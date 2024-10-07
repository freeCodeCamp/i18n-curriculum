---
id: 56533eb9ac21ba0edf2244c3
title: 반환된 값으로 할당하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/ce2pEtB'
forumTopicId: 16658
dashedName: assignment-with-a-returned-value
---

# --description--

If you'll recall from our discussion about <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Storing Values with the Assignment Operator</a>, everything to the right of the equal sign is resolved before the value is assigned. This means we can take the return value of a function and assign it to a variable.

두 숫자를 더하는 함수 `sum`를 정의했다고 가정하겠습니다.

```js
ourSum = sum(5, 12);
```

`sum` 함수를 `5`와 `12`의 인수로 호출하면 반환 값으로 `17`이 생성됩니다. 이 반환 값은 변수 `ourSum`에 할당되었습니다.

# --instructions--

인자 `7`을 받는 `processArg` 함수를 호출하고 그 반환 값을 변수 `processed`에 할당하시오.

# --hints--

`processed`는 값 `2`를 가져야 합니다.

```js
assert(processed === 2);
```

`processArg`을 `processed`에 할당해야 합니다.

```js
assert(/processed\s*=\s*processArg\(\s*7\s*\)/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){return "processed = " + processed})();
```

## --seed-contents--

```js
// Setup
let processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

// Only change code below this line

```

# --solutions--

```js
var processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

processed = processArg(7);
```
