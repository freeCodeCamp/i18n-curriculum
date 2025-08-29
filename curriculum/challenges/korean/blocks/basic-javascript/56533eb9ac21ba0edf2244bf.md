---
id: 56533eb9ac21ba0edf2244bf
title: 로컬(지역) 스코프(범위) 와 함수
challengeType: 1
forumTopicId: 18227
dashedName: local-scope-and-functions
---

# --description--

함수 내에 선언되는 변수나 함수의 파라미터는 <dfn>지역(local)</dfn> 스코프라고 합니다. 이 의미는 그 함수 내에서만 해당 변수를 확인할 수 있다는 것입니다.

여기에 `loc`이라는 로컬 변수를 가지는 함수 `myTest`가 있습니다.

```js
function myTest() {
  const loc = "foo";
  console.log(loc);
}

myTest();
console.log(loc);
```

`myTest()` 함수를 부르면 콘솔에 `foo` 라는 문자열을 표시할 것입니다. 이 `console.log(loc)`라는 줄(`myTest` 함수의 바깥쪽) 은 `loc`이 함수 바깥쪽에 정의되어 있지 않다는 에러를 발생시킬 것입니다.

# --instructions--

에디터에 있는 2개의 `console.log`들은 당신이 동작을 확인하는 데 도움을 줄 것입니다. 코드를 치면서 그게 어떻게 변해가는 지 콘솔을 확인하세요. `myLocalScope` 안에 로컬 변수 `myVar`를 선언하고, 테스트들을 실행하세요.

**노트:** 콘솔은 여전히 `ReferenceError: myVar is not defined` 라고 표시될 것이지만, 이것이 테스트의 실패를 야기하지는 않습니다.

# --hints--

코드에서 글로벌 변수 `myVar`을 포함되어서는 안됩니다.

```js
function declared() {
  myVar;
}

assert.throws(declared, ReferenceError);
```

당신은 로컬 변수 `myVar`를 추가해야 합니다.

```js
assert(
  /functionmyLocalScope\(\)\{.*(var|let|const)myVar[\s\S]*}/.test(
    __helpers.removeWhiteSpace(__helpers.removeJSComments(code))
  )
);
```

# --seed--

## --seed-contents--

```js
function myLocalScope() {
  // Only change code below this line

  console.log('inside myLocalScope', myVar);
}
myLocalScope();

// Run and check the console
// myVar is not defined outside of myLocalScope
console.log('outside myLocalScope', myVar);
```

# --solutions--

```js
function myLocalScope() {
  // Only change code below this line
  let myVar;
  console.log('inside myLocalScope', myVar);
}
myLocalScope();

// Run and check the console
// myVar is not defined outside of myLocalScope
console.log('outside myLocalScope', myVar);
```
