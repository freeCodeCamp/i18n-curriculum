---
id: 56533eb9ac21ba0edf2244b2
title: 나누기를 추가해서 복합적으로 할당하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c2QvKT2'
forumTopicId: 16659
dashedName: compound-assignment-with-augmented-division
---

# --description--

The `/=` operator divides a variable by another number.

```js
myVar = myVar / 5;
```

위의 내용은 `myVar`를 `5`로 나눕니다. 이 내용은 아래와 같이 다시 쓸 수 있습니다.

```js
myVar /= 5;
```

# --instructions--

`a`, `b`, `c`에 각 할당을 `/=` 연산자를 사용하도록 변환해주세요.

# --hints--

`a`는 `4`와 같아야 합니다.

```js
assert(a === 4);
```

`b`는 `27`과 같아야 합니다.

```js
assert(b === 27);
```

`c`는 `3`과 같아야 합니다.

```js
assert(c === 3);
```

당신은 각 변수에서 `/=` 연산자를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\/=/g).length === 3);
```

지정된 코멘트 위의 코드를 변경하면 안됩니다.

```js
assert(
  /let a = 48;/.test(__helpers.removeJSComments(code)) &&
    /let b = 108;/.test(__helpers.removeJSComments(code)) &&
    /let c = 33;/.test(__helpers.removeJSComments(code))
);
```

# --seed--

## --after-user-code--

```js
(function(a,b,c){ return "a = " + a + ", b = " + b + ", c = " + c; })(a,b,c);
```

## --seed-contents--

```js
let a = 48;
let b = 108;
let c = 33;

// Only change code below this line
a = a / 12;
b = b / 4;
c = c / 11;
```

# --solutions--

```js
let a = 48;
let b = 108;
let c = 33;

a /= 12;
b /= 4;
c /= 11;
```
