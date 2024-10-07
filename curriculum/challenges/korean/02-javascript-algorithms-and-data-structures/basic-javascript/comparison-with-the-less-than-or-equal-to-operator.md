---
id: 56533eb9ac21ba0edf2244d7
title: 이하 연산자로 비교하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cNVR7Am'
forumTopicId: 16788
dashedName: comparison-with-the-less-than-or-equal-to-operator
---

# --description--

The less than or equal to operator (`<=`) compares the values of two numbers. If the number to the left is less than or equal to the number to the right, it returns `true`. If the number on the left is greater than the number on the right, it returns `false`. Like the equality operator, the less than or equal to operator converts data types.

**예시**

```js
4   <= 5 // true
'7' <= 7 // true
5   <= 5 // true
3   <= 2 // false
'8' <= 4 // false
```

# --instructions--

반환문이 맞도록 지시된 줄에 이하 연산자를 추가하시오.

# --hints--

`testLessOrEqual(0)`는 반드시 문자열 `Smaller Than or Equal to 12`을 반환해야합니다.

```js
assert(testLessOrEqual(0) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(11)`는 반드시 문자열 `Smaller Than or Equal to 12`을 반환해야합니다.

```js
assert(testLessOrEqual(11) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(12)`는 반드시 문자열 `Smaller Than or Equal to 12`을 반환해야합니다.

```js
assert(testLessOrEqual(12) === 'Smaller Than or Equal to 12');
```

`testLessOrEqual(23)`는 반드시 문자열 `Smaller Than or Equal to 24`을 반환해야합니다.

```js
assert(testLessOrEqual(23) === 'Smaller Than or Equal to 24');
```

`testLessOrEqual(24)`는 반드시 문자열 `Smaller Than or Equal to 24`을 반환해야합니다.

```js
assert(testLessOrEqual(24) === 'Smaller Than or Equal to 24');
```

`testLessOrEqual(25)`는 반드시 문자열 `More Than 24`을 반환해야 합니다.

```js
assert(testLessOrEqual(25) === 'More Than 24');
```

`testLessOrEqual(55)`는 반드시 문자열 `More Than 24`을 반환해야 합니다.

```js
assert(testLessOrEqual(55) === 'More Than 24');
```

`<=` 연산자를 적어도 두번 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/val\s*<=\s*('|")*\d+('|")*/g).length > 1);
```

# --seed--

## --seed-contents--

```js
function testLessOrEqual(val) {
  if (val) {  // Change this line
    return "Smaller Than or Equal to 12";
  }

  if (val) {  // Change this line
    return "Smaller Than or Equal to 24";
  }

  return "More Than 24";
}

testLessOrEqual(10);
```

# --solutions--

```js
function testLessOrEqual(val) {
  if (val <= 12) {  // Change this line
    return "Smaller Than or Equal to 12";
  }

  if (val <= 24) {  // Change this line
    return "Smaller Than or Equal to 24";
  }

  return "More Than 24";
}
```
