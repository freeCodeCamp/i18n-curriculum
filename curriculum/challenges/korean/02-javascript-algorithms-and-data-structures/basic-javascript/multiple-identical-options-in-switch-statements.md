---
id: 56533eb9ac21ba0edf2244df
title: Swicth문에서의 다중의 동일한 옵션
challengeType: 1
videoUrl: 'https://scrimba.com/c/cdBKWCV'
forumTopicId: 18242
dashedName: multiple-identical-options-in-switch-statements
---

# --description--

If the `break` statement is omitted from a `switch` statement's `case`, the following `case` statement(s) are executed until a `break` is encountered. If you have multiple inputs with the same output, you can represent them in a `switch` statement like this:

```js
let result = "";
switch (val) {
  case 1:
  case 2:
  case 3:
    result = "1, 2, or 3";
    break;
  case 4:
    result = "4 alone";
}
```

1, 2, 3의 케이스는 모두 같은 결과를 생성합니다.

# --instructions--

다음 범위에 대해 `answer`를 설정하는 switch 문을 작성합니다:  
`1-3` - `Low`  
`4-6` - `Mid`  
`7-9` - `High`

**Note:** 범위의 각 숫자에 대해 `case`문이 있어야 합니다.

# --hints--

`sequentialSizes(1)` 는 `Low` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(1) === 'Low');
```

`sequentialSizes(2)` 는 `Low` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(2) === 'Low');
```

`sequentialSizes(3)` 는 `Low` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(3) === 'Low');
```

`sequentialSizes(4)` 는 `Mid` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(4) === 'Mid');
```

`sequentialSizes(5)` 는 `Mid` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(5) === 'Mid');
```

`sequentialSizes(6)` 는 `Mid` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(6) === 'Mid');
```

`sequentialSizes(7)` 는 `High` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(7) === 'High');
```

`sequentialSizes(8)` 는 `High` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(8) === 'High');
```

`sequentialSizes(9)` 는 `High` 문자열을 반환해야 합니다.

```js
assert(sequentialSizes(9) === 'High');
```

`if`또는 `else`문을 사용해서는 안 됩니다.

```js
assert(!/else/g.test(__helpers.removeJSComments(code)) || !/if/g.test(__helpers.removeJSComments(code)));
```

9개의 `case` 문을 가지고 있어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/case/g).length === 9);
```

# --seed--

## --seed-contents--

```js
function sequentialSizes(val) {
  let answer = "";
  // Only change code below this line



  // Only change code above this line
  return answer;
}

sequentialSizes(1);
```

# --solutions--

```js
function sequentialSizes(val) {
  let answer = "";

  switch (val) {
    case 1:
    case 2:
    case 3:
      answer = "Low";
      break;
    case 4:
    case 5:
    case 6:
      answer = "Mid";
      break;
    case 7:
    case 8:
    case 9:
      answer = "High";
  }

  return answer;
}
```
