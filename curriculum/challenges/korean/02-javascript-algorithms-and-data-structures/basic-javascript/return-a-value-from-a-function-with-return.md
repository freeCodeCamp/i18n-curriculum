---
id: 56533eb9ac21ba0edf2244c2
title: Return을 사용해서 함수의 값을 되돌려주기
challengeType: 1
forumTopicId: 18271
dashedName: return-a-value-from-a-function-with-return
---

# --description--

We can pass values into a function with <dfn>arguments</dfn>. You can use a `return` statement to send a value back out of a function.

**예)**

```js
function plusThree(num) {
  return num + 3;
}

const answer = plusThree(5);
```

`answer`는 `8`의 값을 가집니다.

`plusThree`는 `num`을 <dfn>인수</dfn>로 받아서 `num + 3`와 같은 값을 되돌려줍니다.

# --instructions--

인수를 1개 사용해서, 인수에 `5`를 곱한 값을 새로 되돌려 주는 `timesFive`를 작성하세요.

# --hints--

`timesFive`는 함수여야 합니다.

```js
assert(typeof timesFive === 'function');
```

`timesFive(5)`는 `25`를 반환해야 합니다.

```js
assert(timesFive(5) === 25);
```

`timesFive(2)`는 `10`을 반환해야 합니다.

```js
assert(timesFive(2) === 10);
```

`timesFive(0)`는 `0`을 반환해야 합니다.

```js
assert(timesFive(0) === 0);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function timesFive(num) {
  return num * 5;
}
timesFive(10);
```
