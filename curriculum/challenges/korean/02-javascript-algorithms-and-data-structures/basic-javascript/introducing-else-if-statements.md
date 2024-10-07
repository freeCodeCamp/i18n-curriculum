---
id: 56533eb9ac21ba0edf2244db
title: Else If 문 소개
challengeType: 1
videoUrl: 'https://scrimba.com/c/caeJ2hm'
forumTopicId: 18206
dashedName: introducing-else-if-statements
---

# --description--

If you have multiple conditions that need to be addressed, you can chain `if` statements together with `else if` statements.

```js
if (num > 15) {
  return "Bigger than 15";
} else if (num < 5) {
  return "Smaller than 5";
} else {
  return "Between 5 and 15";
}
```

# --instructions--

`else if`문을 사용하도록 로직을 변경하시오.

# --hints--

적어도 두 개의 `else`문을 가져야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/else/g).length > 1);
```

적어도 두 개의 `if`문을 가져야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/if/g).length > 1);
```

각 `if else` 코드 블럭에 열고 닫는 대괄호가 있어야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /if\s*\((.+)\)\s*\{[\s\S]+\}\s*else\s+if\s*\((.+)\)\s*\{[\s\S]+\}\s*else\s*\{[\s\S]+\s*\}/
  )
);
```

`testElseIf(0)`은 문자열 `Smaller than 5`을 반환해야 합니다.

```js
assert(testElseIf(0) === 'Smaller than 5');
```

`testElseIf(5)`은 문자열 `Between 5 and 10`을 반환해야 합니다.

```js
assert(testElseIf(5) === 'Between 5 and 10');
```

`testElseIf(7)`은 문자열 `Between 5 and 10`을 반환해야 합니다.

```js
assert(testElseIf(7) === 'Between 5 and 10');
```

`testElseIf(10)`은 문자열 `Between 5 and 10`을 반환해야 합니다.

```js
assert(testElseIf(10) === 'Between 5 and 10');
```

`testElseIf(12)`은 문자열 `Greater than 10`을 반환해야 합니다.

```js
assert(testElseIf(12) === 'Greater than 10');
```

# --seed--

## --seed-contents--

```js
function testElseIf(val) {
  if (val > 10) {
    return "Greater than 10";
  }

  if (val < 5) {
    return "Smaller than 5";
  }

  return "Between 5 and 10";
}

testElseIf(7);
```

# --solutions--

```js
function testElseIf(val) {
  if(val > 10) {
    return "Greater than 10";
  } else if(val < 5) {
    return "Smaller than 5";
  } else {
    return "Between 5 and 10";
  }
}
```
