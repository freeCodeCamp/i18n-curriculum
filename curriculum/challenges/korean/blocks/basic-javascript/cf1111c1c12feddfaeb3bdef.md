---
id: cf1111c1c12feddfaeb3bdef
title: if 문으로 조건부 논리 사용하기
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if` 문은 코드에서 결정을 내릴 때 사용합니다. 키워드 `if`는 JavaScript에 소괄호 안에 정의된 특정 조건이 충족될 때 중괄호 안의 코드를 실행하라고 지시합니다. 이 조건들은 `Boolean` 조건으로 알려져 있으며, `true` 또는 `false`일 수 있습니다.

조건이 `true`로 평가되면 프로그램은 중괄호 안의 문장을 실행합니다. 불리언 조건이 `false`로 평가되면 중괄호 안의 문장은 실행되지 않습니다.

**의사 코드**

<blockquote>if (<i>조건이 참일 때</i>) {<br>  <i>문장이 실행됩니다</i><br>}</blockquote>

**예시**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)`는 문자열 `It was true`을 반환하고, `test(false)`는 문자열 `It was false`을 반환합니다.

`test`이 `true` 값을 가지고 호출되면, `if` 문장은 `myCondition`가 `true`인지 아닌지 평가합니다. `true`이므로 함수는 `It was true`을 반환합니다. `test`이 `false` 값으로 호출되면 `myCondition`은 *아닌* `true`이고, 중괄호 안의 문장은 실행되지 않으며 함수는 `It was false`를 반환합니다.

# --instructions--

함수 안에 `if` 문을 만들어 매개변수 `Yes, that was true`가 `wasThatTrue`일 때 `true`를 반환하고, 그렇지 않으면 `No, that was false`를 반환하세요.

# --hints--

`trueOrFalse`는 함수여야 합니다

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)`는 문자열을 반환해야 합니다

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)`는 문자열을 반환해야 합니다

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)`는 문자열 `Yes, that was true`를 반환해야 합니다

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)`는 문자열 `No, that was false`를 반환해야 합니다

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
