---
id: 587d7b7e367417b2b2512b21
title: 다중 조건 (삼항) 연산자 사용하기
challengeType: 1
forumTopicId: 301179
dashedName: use-multiple-conditional-ternary-operators
---

# --description--

In the previous challenge, you used a single conditional operator. You can also chain them together to check for multiple conditions.

다음 함수는 다중 조건을 확인하기 위해 `if`, `else if` 그리고 `else` 문을 사용합니다.

```js
function findGreaterOrEqual(a, b) {
  if (a === b) {
    return "a and b are equal";
  }
  else if (a > b) {
    return "a is greater";
  }
  else {
    return "b is greater";
  }
}
```

위 함수는 다중 조건 연산자를 사용하여 다시 작성할 수 있습니다:

```js
function findGreaterOrEqual(a, b) {
  return (a === b) ? "a and b are equal" 
    : (a > b) ? "a is greater" 
    : "b is greater";
}
```

여러 조건 연산자를 사용할 때는 각 조건을 위와 같이 별도의 줄에 작성하는 것이 모범 사례로 간주됩니다. 적절한 들여쓰기없이 다중 조건 연산자를 사용하는 것은 코드를 읽는 데 어려움을 줄 수 있습니다. 예:

```js
function findGreaterOrEqual(a, b) {
  return (a === b) ? "a and b are equal" : (a > b) ? "a is greater" : "b is greater";
}
```

# --instructions--

숫자가 양수, 음수 혹은 0인지 확인하기 위해 `findGreaterOrEqual`에 사용된 권장 포맷으로 `checkSign` 함수에 다중 조건 연산자를 사용하시오. 해당 함수는 `positive`, `negative` 혹은 `zero`을 반환해야 합니다.

# --hints--

`checkSign`는 다중 조건 연산자를 사용해야 합니다

```js
assert(/.+?\s*?\?\s*?.+?\s*?:\s*?.+?\s*?\?\s*?.+?\s*?:\s*?.+?/gi.test(__helpers.removeJSComments(code)));
```

`checkSign(10)`은 문자열 `positive`을 반환해야 합니다. 대문자/소문자 여부가 중요하다는 것에 유의하시오

```js
assert(checkSign(10) === 'positive');
```

`checkSign(-12)`는 문자열 `negative`을 반환해야 합니다. 대문자/소문자 여부가 중요하다는 것에 유의하시오

```js
assert(checkSign(-12) === 'negative');
```

`checkSign(0)`는 문자열 `zero`을 반환해야 합니다. 대문자/소문자 여부가 중요하다는 것에 유의하시오

```js
assert(checkSign(0) === 'zero');
```

# --seed--

## --seed-contents--

```js
function checkSign(num) {

}

checkSign(10);
```

# --solutions--

```js
function checkSign(num) {
  return (num > 0) ? 'positive' : (num < 0) ? 'negative' : 'zero';
}
```
