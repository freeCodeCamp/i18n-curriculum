---
id: 56533eb9ac21ba0edf2244d2
title: 비등호 연산자로 비교하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cdBm9Sr'
forumTopicId: 16787
dashedName: comparison-with-the-inequality-operator
---

# --description--

The inequality operator (`!=`) is the opposite of the equality operator. It means not equal and returns `false` where equality would return `true` and *vice versa*. Like the equality operator, the inequality operator will convert data types of values while comparing.

**예시**

```js
1 !=  2    // true
1 != "1"   // false
1 != '1'   // false
1 != true  // false
0 != false // false
```

# --instructions--

함수가 `val`가 `99`와 같지 않을 때 문자열 `Not Equal`을 반환하도록 `if` 문에 있는 등호 연산자 `!=`를 추가하시오.

# --hints--

`testNotEqual(99)`는 문자열 `Equal`을 반환해야 합니다.

```js
assert(testNotEqual(99) === 'Equal');
```

`testNotEqual("99")`는 문자열 `Equal`을 반환해야 합니다.

```js
assert(testNotEqual('99') === 'Equal');
```

`testNotEqual(12)`는 문자열 `Not Equal`을 반환해야 합니다.

```js
assert(testNotEqual(12) === 'Not Equal');
```

`testNotEqual("12")`는 문자열 `Not Equal`을 반환해야 합니다.

```js
assert(testNotEqual('12') === 'Not Equal');
```

`testNotEqual("bob")`는 문자열 `Not Equal`을 반환해야 합니다.

```js
assert(testNotEqual('bob') === 'Not Equal');
```

`!=` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/(?!!==)!=/));
```

# --seed--

## --seed-contents--

```js
// Setup
function testNotEqual(val) {
  if (val) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

testNotEqual(10);
```

# --solutions--

```js
function testNotEqual(val) {
  if (val != 99) {
    return "Not Equal";
  }
  return "Equal";
}
```
