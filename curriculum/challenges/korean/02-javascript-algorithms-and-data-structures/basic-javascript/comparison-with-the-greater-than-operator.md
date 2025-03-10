---
id: 56533eb9ac21ba0edf2244d4
title: 이상 연산자로 비교하기
challengeType: 1
forumTopicId: 16786
dashedName: comparison-with-the-greater-than-operator
---

# --description--

The greater than operator (`>`) compares the values of two numbers. If the number to the left is greater than the number to the right, it returns `true`. Otherwise, it returns `false`.

등호 연산자와 같이 이상 연산자는 비교하면서 값의 데이터 유형을 변환할 것입니다.

**예시**

```js
5   >  3  // true
7   > '3' // true
2   >  3  // false
'1' >  9  // false
```

# --instructions--

반환문이 맞도록 지시된 줄에 이상 연산자를 추가하시오.

# --hints--

`testGreaterThan(0)`는 문자열 `10 or Under`를 반환해야 합니다.

```js
assert(testGreaterThan(0) === '10 or Under');
```

`testGreaterThan(10)`는 문자열 `10 or Under`을 반환해야 합니다.

```js
assert(testGreaterThan(10) === '10 or Under');
```

`testGreaterThan(11)`는 문자열 `Over 10`을 반환해야 합니다.

```js
assert(testGreaterThan(11) === 'Over 10');
```

`testGreaterThan(99)`는 문자열 `Over 10`을 반환해야 합니다.

```js
assert(testGreaterThan(99) === 'Over 10');
```

`testGreaterThan(100)`는 문자열 `Over 10`을 반환해야 합니다.

```js
assert(testGreaterThan(100) === 'Over 10');
```

`testGreaterThan(101)`는 문자열 `Over 100`을 반환해야 합니다.

```js
assert(testGreaterThan(101) === 'Over 100');
```

`testGreaterThan(150)`는 문자열 `Over 100`을 반환해야 합니다.

```js
assert(testGreaterThan(150) === 'Over 100');
```

`>` 연산자를 적어도 두 번 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/val\s*>\s*('|")*\d+('|")*/g).length > 1);
```

# --seed--

## --seed-contents--

```js
function testGreaterThan(val) {
  if (val) {  // Change this line
    return "Over 100";
  }

  if (val) {  // Change this line
    return "Over 10";
  }

  return "10 or Under";
}

testGreaterThan(10);
```

# --solutions--

```js
function testGreaterThan(val) {
  if (val > 100) {  // Change this line
    return "Over 100";
  }
  if (val > 10) {  // Change this line
    return "Over 10";
  }
  return "10 or Under";
}
```
