---
id: 587d7b84367417b2b2512b35
title: 오타가 있는 변수와 함수 이름을 잡아내기
challengeType: 1
forumTopicId: 301186
dashedName: catch-misspelled-variable-and-function-names
---

# --description--

The `console.log()` and `typeof` methods are the two primary ways to check intermediate values and types of program output. Now it's time to get into the common forms that bugs take. One syntax-level issue that fast typers can commiserate with is the humble spelling error.

변수나 함수 이름에서 글자가 바뀌거나, 빠지거나, 대소문자가 잘못된 경우 브라우저는 존재하지 않는 객체를 찾으려 하며 참조 오류(reference error) 형태로 불평할 것입니다. 자바스크립트 변수와 함수 이름은 대소문자를 구분합니다.

# --instructions--

코드에서 두 가지 철자 오류를 수정하여 `netWorkingCapital` 계산이 제대로 작동하게 하세요.

# --hints--

netWorkingCapital 계산에 사용된 두 변수의 철자를 확인하여, 콘솔 출력에 "Net working capital is: 2"가 표시되도록 하세요.

```js
assert(netWorkingCapital === 2);
```

코드에 오타가 있는 변수가 없어야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/recievables/g));
```

`receivables` 변수가 코드에서 올바르게 선언되고 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/receivables/g).length == 2);
```

코드에 오타가 있는 변수가 없어야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/payable;/g));
```

`payables` 변수가 코드에서 올바르게 선언되고 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/payables/g).length == 2);
```

# --seed--

## --seed-contents--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = recievables - payable;
console.log(`Net working capital is: ${netWorkingCapital}`);
```

# --solutions--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = receivables - payables;
console.log(`Net working capital is: ${netWorkingCapital}`);
```
