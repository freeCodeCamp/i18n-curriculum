---
id: 56533eb9ac21ba0edf2244da
title: Else문 소개
challengeType: 1
videoUrl: 'https://scrimba.com/c/cek4Efq'
forumTopicId: 18207
dashedName: introducing-else-statements
---

# --description--

`if`문에 대한 조건이 참일 때 뒤따르는 코드 블럭이 실행됩니다. 해당 조건이 거짓일 때는 어떨까요? 보통 아무 일도 일어나지 않습니다. `else` 문으로 다른 코드 블럭이 실행될 수 있습니다.

```js
if (num > 10) {
  return "Bigger than 10";
} else {
  return "10 or Less";
}
```

# --instructions--

`if`문을 하나의 `if/else`문으로 조합하시오.

# --hints--

편집기에 하나의 `if`문만 가져야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/if/g).length === 1);
```

`else`문을 사용해야 합니다.

```js
assert(/else/g.test(__helpers.removeJSComments(code)));
```

`testElse(4)`는 문자열 `5 or Smaller`을 반환해야 합니다.

```js
assert(testElse(4) === '5 or Smaller');
```

`testElse(5)`는 문자열 `5 or Smaller`을 반환해야 합니다.

```js
assert(testElse(5) === '5 or Smaller');
```

`testElse(6)`는 문자열 `Bigger than 5`을 반환해야 합니다.

```js
assert(testElse(6) === 'Bigger than 5');
```

`testElse(10)`는 문자열 `Bigger than 5`을 반환해야 합니다.

```js
assert(testElse(10) === 'Bigger than 5');
```

특정 주석 위아래의 코드를 변환하지 않아야 합니다.

```js
assert(/let result = "";/.test(__helpers.removeJSComments(code)) && /return result;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function testElse(val) {
  let result = "";
  // Only change code below this line

  if (val > 5) {
    result = "Bigger than 5";
  }

  if (val <= 5) {
    result = "5 or Smaller";
  }

  // Only change code above this line
  return result;
}

testElse(4);
```

# --solutions--

```js
function testElse(val) {
  let result = "";
  if(val > 5) {
    result = "Bigger than 5";
  } else {
    result = "5 or Smaller";
  }
  return result;
}
```
