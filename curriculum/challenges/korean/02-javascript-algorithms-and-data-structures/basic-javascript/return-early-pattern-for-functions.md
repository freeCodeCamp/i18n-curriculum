---
id: 56533eb9ac21ba0edf2244c4
title: 함수에 대한 조기 패턴 반환하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cQe39Sq'
forumTopicId: 18272
dashedName: return-early-pattern-for-functions
---

# --description--

When a `return` statement is reached, the execution of the current function stops and control returns to the calling location.

**예)**

```js
function myFun() {
  console.log("Hello");
  return "World";
  console.log("byebye")
}
myFun();
```

콘솔에 문자열 `Hello`가 출력될 것이며 문자열 `World`을 반환할 것입니다. 함수가 `return`문에서 빠져나갈 것이기 때문에 문자열 `byebye`은 콘솔에 절대 출력되지 않을 것입니다.

# --instructions--

`a` 또는 `b`가 `0`보다 작으면 함수가 즉시 `undefined` 값을 반환하도록 함수 `abTest`를 수정하시오.

**Hint**  <a href="https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/understanding-uninitialized-variables" target="_blank" rel="noopener noreferrer nofollow"><code>undefined</code>이 키워드</a>이며, 문자열이 아니라는 것을 상기하시오.

# --hints--

`abTest(2, 2)`는 숫자를 반환해야 합니다

```js
assert(typeof abTest(2, 2) === 'number');
```

`abTest(2, 2)`는 `8`을 반환해야 합니다

```js
assert(abTest(2, 2) === 8);
```

`abTest(-2, 2)`은 `undefined`을 반환해야 합니다

```js
assert(abTest(-2, 2) === undefined);
```

`abTest(2, -2)` should return `undefined`

```js
assert(abTest(2, -2) === undefined);
```

`abTest(2, 8)`은 `18`을 반환해야 합니다

```js
assert(abTest(2, 8) === 18);
```

`abTest(3, 3)`은 `12`를 반환해야 합니다

```js
assert(abTest(3, 3) === 12);
```

`abTest(0, 0)`은 `0`를 반환해야 합니다

```js
assert(abTest(0, 0) === 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function abTest(a, b) {
  // Only change code below this line



  // Only change code above this line

  return Math.round(Math.pow(Math.sqrt(a) + Math.sqrt(b), 2));
}

abTest(2,2);
```

# --solutions--

```js
function abTest(a, b) {
  if(a < 0 || b < 0) {
    return undefined;
  }
  return Math.round(Math.pow(Math.sqrt(a) + Math.sqrt(b), 2));
}
```
