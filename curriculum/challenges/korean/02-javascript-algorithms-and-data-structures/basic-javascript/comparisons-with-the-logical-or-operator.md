---
id: 56533eb9ac21ba0edf2244d9
title: 논리합 연산자를 사용한 비교
challengeType: 1
forumTopicId: 16800
dashedName: comparisons-with-the-logical-or-operator
---

# --description--

The <dfn>logical or</dfn> operator (`||`) returns `true` if either of the <dfn>operands</dfn> is `true`. Otherwise, it returns `false`.

<dfn>논리합</dfn> 연산자는 두 개의 파이프 기호로 구성됩니다. (`||`). 일반적으로 백스페이스 키와 엔터 키 사이에 있습니다.

아래 패턴은 이전 웨이포인트에서 익숙할 것입니다.

```js
if (num > 10) {
  return "No";
}
if (num < 5) {
  return "No";
}
return "Yes";
```

이 코드는 `num`이 `5`에서 `10` 사이 (`5`와 `10` 포함)에 있으면 `Yes`를 반환합니다. 동일한 논리를 <dfn>논리합</dfn> 연산자로 작성할 수 있습니다.

```js
if (num > 10 || num < 5) {
  return "No";
}
return "Yes";
```

# --instructions--

두 개의 `if` 문을 결합하여 `val`이 `10`과 `20`을 포함해서 그 사이에 있지 않으면 문자열 `Outside`를 반환하는 문을 작성하세요. 그렇지 않으면 문자열 `Inside`를 반환합니다.

# --hints--

`||`연산자를 한 번 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\|\|/g).length === 1);
```

`if` 문은 한 번만 있어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/if/g).length === 1);
```

`testLogicalOr(0)`은 문자열 `Outside`를 반환해야 합니다.

```js
assert(testLogicalOr(0) === 'Outside');
```

`testLogicalOr(9)`은 문자열 `Outside`를 반환해야 합니다.

```js
assert(testLogicalOr(9) === 'Outside');
```

`testLogicalOr(10)`은 문자열 `Inside`를 반환해야 합니다.

```js
assert(testLogicalOr(10) === 'Inside');
```

`testLogicalOr(15)`은 문자열 `Inside`를 반환해야 합니다.

```js
assert(testLogicalOr(15) === 'Inside');
```

`testLogicalOr(19)`은 문자열 `Inside`를 반환해야 합니다.

```js
assert(testLogicalOr(19) === 'Inside');
```

`testLogicalOr(20)`은 문자열 `Inside`를 반환해야 합니다.

```js
assert(testLogicalOr(20) === 'Inside');
```

`testLogicalOr(21)`은 문자열 `Outside`를 반환해야 합니다.

```js
assert(testLogicalOr(21) === 'Outside');
```

`testLogicalOr(25)`은 문자열 `Outside`를 반환해야 합니다.

```js
assert(testLogicalOr(25) === 'Outside');
```

# --seed--

## --seed-contents--

```js
function testLogicalOr(val) {
  // Only change code below this line

  if (val) {
    return "Outside";
  }

  if (val) {
    return "Outside";
  }

  // Only change code above this line
  return "Inside";
}

testLogicalOr(15);
```

# --solutions--

```js
function testLogicalOr(val) {
  if (val < 10 || val > 20) {
    return "Outside";
  }
  return "Inside";
}
```
