---
id: 56533eb9ac21ba0edf2244d6
title: 이하 연산자로 비교하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cNVRWtB'
forumTopicId: 16789
dashedName: comparison-with-the-less-than-operator
---

# --description--

The less than operator (`<`) compares the values of two numbers. If the number to the left is less than the number to the right, it returns `true`. Otherwise, it returns `false`. Like the equality operator, the less than operator converts data types while comparing.

**예시**

```js
2   < 5 // true
'3' < 7 // true
5   < 5 // false
3   < 2 // false
'8' < 4 // false
```

# --instructions--

반환문이 맞도록 지시된 줄에 이하 연산자를 추가하시오.

# --hints--

`testLessThan(0)`는 문자열 `Under 25`을 반환해야 합니다.

```js
assert(testLessThan(0) === 'Under 25');
```

`testLessThan(24)`는 문자열 `Under 25`를 반환해야 합니다.

```js
assert(testLessThan(24) === 'Under 25');
```

`testLessThan(25)`는 문자열 `Under 55`을 반환해야 합니다.

```js
assert(testLessThan(25) === 'Under 55');
```

`testLessThan(54)`는 문자열 `Under 55`를 반환해야 합니다.

```js
assert(testLessThan(54) === 'Under 55');
```

`testLessThan(55)`는 문자열 `55 or Over`를 반환해야 합니다.

```js
assert(testLessThan(55) === '55 or Over');
```

`testLessThan(99)`는 문자열 `55 or Over`을 반환해야 합니다.

```js
assert(testLessThan(99) === '55 or Over');
```

`<` 연산자를 적어도 두번 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/val\s*<\s*('|")*\d+('|")*/g).length > 1);
```

# --seed--

## --seed-contents--

```js
function testLessThan(val) {
  if (val) {  // Change this line
    return "Under 25";
  }

  if (val) {  // Change this line
    return "Under 55";
  }

  return "55 or Over";
}

testLessThan(10);
```

# --solutions--

```js
function testLessThan(val) {
  if (val < 25) {  // Change this line
    return "Under 25";
  }

  if (val < 55) {  // Change this line
    return "Under 55";
  }

  return "55 or Over";
}
```
