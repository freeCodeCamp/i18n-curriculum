---
id: 56533eb9ac21ba0edf2244dc
title: If Else 문 연결하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/caeJgsw'
forumTopicId: 16772
dashedName: chaining-if-else-statements
---

# --description--

`if/else` statements can be chained together for complex logic. Here is <dfn>pseudocode</dfn> of multiple chained `if` / `else if` statements:

```js
if (condition1) {
  statement1
} else if (condition2) {
  statement2
} else if (condition3) {
  statement3
. . .
} else {
  statementN
}
```

# --instructions--

다음 조건을 충족하는 연결된 `if`/`else if` 문을 작성하세요.

`num < 5` - `Tiny` 반환  
`num < 10` - `Small` 반환  
`num < 15` - `Medium` 반환  
`num < 20` - `Large` 반환  
`num >= 20` - `Huge` 반환

# --hints--

최소한 네 개의 `else` 문이 있어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/else/g).length > 3);
```

최소한 네 개의 `if` 문이 있어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/if/g).length > 3);
```

적어도 하나의 `return` 문이 있어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/return/g).length >= 1);
```

`testSize(0)`은 문자열 `Tiny`을 반환해야 합니다.

```js
assert(testSize(0) === 'Tiny');
```

`testSize(4)`는 문자열 `Tiny`을 반환해야 합니다.

```js
assert(testSize(4) === 'Tiny');
```

`testSize(5)`은 문자열 `Small`을 반환해야 합니다.

```js
assert(testSize(5) === 'Small');
```

`testSize(8)`은 문자열 `Small`을 반환해야 합니다.

```js
assert(testSize(8) === 'Small');
```

`testSize(10)`은 문자열 `Medium`을 반환해야 합니다.

```js
assert(testSize(10) === 'Medium');
```

`testSize(14)`은 문자열 `Medium`을 반환해야 합니다.

```js
assert(testSize(14) === 'Medium');
```

`testSize(15)`은 문자열 `Large`을 반환해야 합니다.

```js
assert(testSize(15) === 'Large');
```

`testSize(17)`은 문자열 `Large`을 반환해야 합니다.

```js
assert(testSize(17) === 'Large');
```

`testSize(20)`은 문자열 `Huge`을 반환해야 합니다.

```js
assert(testSize(20) === 'Huge');
```

`testSize(25)`은 문자열 `Huge`을 반환해야 합니다.

```js
assert(testSize(25) === 'Huge');
```

# --seed--

## --seed-contents--

```js
function testSize(num) {
  // Only change code below this line


  return "Change Me";
  // Only change code above this line
}

testSize(7);
```

# --solutions--

```js
function testSize(num) {
  if (num < 5) {
    return "Tiny";
  } else if (num < 10) {
    return "Small";
  } else if (num < 15) {
    return "Medium";
  } else if (num < 20) {
    return "Large";
  } else {
    return "Huge";
  }
}
```
