---
id: 56533eb9ac21ba0edf2244de
title: Switch문에 기본값 옵션 추가하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c3JvVfg'
forumTopicId: 16653
dashedName: adding-a-default-option-in-switch-statements
---

# --description--

`switch`문을 사용할 때, 가능한 모든 값들을 `case`문으로 정의하는 것이 불가능할 지도 모릅니다. 대신, 주어진 값에 해당하는 `case`문이 존재하지 않을 때 실행되는 `default`문을 사용할 수 있습니다. 이는 `if/else`문에서의 마지막 `else`문과 비슷하게 적용됩니다.

`default`문은 반드시 마지막에 위치해야 합니다.

```js
switch (num) {
  case value1:
    statement1;
    break;
  case value2:
    statement2;
    break;
...
  default:
    defaultStatement;
    break;
}
```

# --instructions--

주어진 조건들에 따라 `answer`를 설정하는 switch문을 작성해보세요: `a` - `apple`  
`b` - `bird`  
`c` - `cat`  
`default` - `stuff`

# --hints--

`switchOfStuff("a")` 를 실행하면 `apple`이라는 문자열을 반환해야 합니다.

```js
assert(switchOfStuff('a') === 'apple');
```

`switchOfStuff("b")` 를 실행하면 `bird`라는 문자열을 반환해야 합니다.

```js
assert(switchOfStuff('b') === 'bird');
```

`switchOfStuff("c")` 를 실행하면 `cat`이라는 문자열을 반환해야 합니다.

```js
assert(switchOfStuff('c') === 'cat');
```

`switchOfStuff("d")` 를 실행하면 `stuff`라는 문자열을 반환해야 합니다.

```js
assert(switchOfStuff('d') === 'stuff');
```

`switchOfStuff(4)` 를 실행하면 `stuff`이라는 문자열을 반환해야 합니다.

```js
assert(switchOfStuff(4) === 'stuff');
```

`if` 나 `else`문을 사용하지 않아야 합니다.

```js
assert(!/else/g.test(__helpers.removeJSComments(code)) || !/if/g.test(__helpers.removeJSComments(code)));
```

`default`문을 사용해야 합니다.

```js
assert(switchOfStuff('string-to-trigger-default-case') === 'stuff');
```

최소한 3개의 `break`문을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/break/g).length > 2);
```

# --seed--

## --seed-contents--

```js
function switchOfStuff(val) {
  let answer = "";
  // Only change code below this line



  // Only change code above this line
  return answer;
}

switchOfStuff(1);
```

# --solutions--

```js
function switchOfStuff(val) {
  let answer = "";

  switch(val) {
    case "a":
      answer = "apple";
      break;
    case "b":
      answer = "bird";
      break;
    case "c":
      answer = "cat";
      break;
    default:
      answer = "stuff";
  }
  return answer;
}
```
