---
id: cf1111c1c12feddfaeb3bdef
title: 조건부 로직에 If문 사용하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy87mf3'
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if` statements are used to make decisions in code. The keyword `if` tells JavaScript to execute the code in the curly braces under certain conditions, defined in the parentheses. These conditions are known as `Boolean` conditions and they may only be `true` or `false`.

어떤 조건이 `true`로 평가되면, 프로그램은 중괄호 안에 있는 코드를 실행합니다. Boolean 조건이 `false`로 평가되면, 중괄호 안의 코드는 실행되지 않습니다.

**의사코드**

<blockquote>만약 (<i>이 조건이 참이면</i>) {<br> <i>이 코드가 실행됩니다</i><br>}</blockquote>

**예:**

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

`test(true)`는 `It was true`라는 문자열을 반환하고, `test(false)`는 `It was false`라는 문자열을 반환합니다.

`test` 함수가 `true`라는 매개변수와 함께 호출되면, `if`문은 `myCondition`이 `true`인지 아닌지 평가합니다. 이것이 `true`면, 이 함수는 `It was true`를 반환합니다. `test` 함수를 `false`라는 매개변수와 함께 호출하면, `myCondition`은 *not* `true`이고 중괄호 안의 코드는 실행되지 않으며 이 함수는 `It was false`를 반환하게 됩니다.

# --instructions--

함수 내부에 `if` 문을 생성하여 매개변수 `wasThatTrue`가 `true`일 경우 `Yes, that was true`를 반환하고, 그렇지 않은 경우 `No, that was false`를 반환하도록 작성해주세요.

# --hints--

`trueOrFalse`는 함수여야 합니다.

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)`는 문자열을 반환해야 합니다.

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)`는 문자열을 반환해야 합니다.

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)`는 `Yes, that was true`라는 문자열을 반환해야 합니다.

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)`는 `No, that was false`라는 문자열을 반환해야 합니다.

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
