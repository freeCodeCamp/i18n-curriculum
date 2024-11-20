---
id: 587d7b87367417b2b2512b40
title: var과 let 키워드 범위 비교하기
challengeType: 1
forumTopicId: 301195
dashedName: compare-scopes-of-the-var-and-let-keywords
---

# --description--

만약 `let`에 익숙하지 않다면, <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/explore-differences-between-the-var-and-let-keywords" target="_blank" rel="noopener noreferrer nofollow"><code>let</code>와 <code>var</code>의 차이점에 관한 이 과제를 확인하세요</a>.

`var` 키워드로 변수를 선언하면, 전역적으로 선언되거나, 함수 내부에서 선언된 경우에는 지역적으로 선언됩니다.

`let` 키워드는 비슷하게 동작하지만 몇 가지 추가 기능이 있습니다. `let` 키워드로 변수를 블록, 문, 또는 표현식 내에서 선언하면, 그 변수의 범위는 해당 블록, 문, 또는 표현식으로 제한됩니다.

예를 들면:

```js
var numArray = [];
for (var i = 0; i < 3; i++) {
  numArray.push(i);
}
console.log(numArray);
console.log(i);
```

콘솔이 값 `[0, 1, 2]`와 `3`를 출력할 것입니다.

`var` 키워드로 `i`는 전역적으로 선언됩니다. 그래서 `i++`가 실행될 때, 전역 변수를 업데이트시킵니다. 이 코드는 다음과 유사합니다:

```js
var numArray = [];
var i;
for (i = 0; i < 3; i++) {
  numArray.push(i);
}
console.log(numArray);
console.log(i);
```

여기서 콘솔은 값 `[0, 1, 2]`과 `3`을 출력할 것입니다.

이 동작은 `for` 루프 내에서 `i` 변수를 사용하는 함수를 생성하고 나중에 사용하기 위해 저장할 경우 문제가 발생할 수 있습니다. 이것은 저장된 함수가 항상 업데이트된 전역 `i` 변수의 값을 참조하기 때문입니다.

```js
var printNumTwo;
for (var i = 0; i < 3; i++) {
  if (i === 2) {
    printNumTwo = function() {
      return i;
    };
  }
}
console.log(printNumTwo());
```

여기서 콘솔은 값 `3`을 출력할 것입니다.

다음과 같이 보시면, `printNumTwo()` 는 2가 아니라 3을 출력합니다. 이는 `i` 에 할당된 값이 업데이트되었고, `printNumTwo()` 가 전역 `i` 를 반환하기 때문입니다. 즉, 함수가 for 루프 내에서 생성될 때의 `i` 값을 반환하는 것이 아닙니다. `let`  키워드는 이런 동작을 따르지 않습니다:

```js
let printNumTwo;
for (let i = 0; i < 3; i++) {
  if (i === 2) {
    printNumTwo = function() {
      return i;
    };
  }
}
console.log(printNumTwo());
console.log(i);
```

여기서 콘솔은 값 `2`을 출력하고 `i is not defined`이라는 에러를 보여줄 것입니다.

전역 범위에서 선언되지 않았기 때문에 `i`는 정의되지 않습니다. `i`는 오직 <0>for</0> 루프문 내에서만 선언됩니다.  (0, 1, 2)와 같이 각기 다른 값을 가진 세 개의 `i`가 루프문 내에서 `let` 키워드에 의해 생성되었기 때문에 `printNumTwo()`는 올바른 값을 반환했습니다.

# --instructions--

코드를 수정하여 `if` 문에서 선언된 `i`가 함수의 첫 번째 줄에서 선언된 `i`와 별개의 변수로 되도록 하시오. 코드에 `var` 키워드를 사용하지 않아야 합니다.

이 연습은 `var` and `let` 키워드가 변수에 범위를 할당하는 방식의 차이를 설명하기 위해 설계되었습니다. 이 연습에서 사용된 것과 유사한 함수를 프로그래밍할 때는 혼동을 피하기 위해 서로 다른 변수 이름을 사용하는 것이 좋습니다.

# --hints--

`var`는 코드에 존재하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/var/g));
```

`if` 문 안에 선언된 변수 `i`는 문자열 `block scope`와 같아야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/(i\s*=\s*).*\s*.*\s*.*\1('|")block\s*scope\2/g));
```

`checkScope()`는 문자열 `function scope`을 반환해야 합니다

```js
assert(checkScope() === 'function scope');
```

# --seed--

## --seed-contents--

```js
function checkScope() {
  var i = 'function scope';
  if (true) {
    i = 'block scope';
    console.log('Block scope i is: ', i);
  }
  console.log('Function scope i is: ', i);
  return i;
}
```

# --solutions--

```js
function checkScope() {
  let i = 'function scope';
  if (true) {
    let i = 'block scope';
    console.log('Block scope i is: ', i);
  }

  console.log('Function scope i is: ', i);
  return i;
}
```
