---
id: 56533eb9ac21ba0edf2244be
title: 글로벌(전역) 스코프(범위) 와 함수
challengeType: 1
forumTopicId: 18193
dashedName: global-scope-and-functions
---

# --description--

자바스크립트에서 변수를 사용할 수 있는 범위를 <dfn>스코프(scope)</dfn> 라고 부릅니다. 함수 블록 바깥 쪽에 정의된 변수는 <dfn>글로벌(Global)</dfn> 스코프를 가집니다. 이것이 의미하는 것은 자바스크립트 코드의 어디에서나 그 변수들을 확인할 수 있다는 것입니다.

`let` 키워드 또는`const` 키워드를 사용하지 않고 선언한 변수는 자동적으로 `글로벌(global)` 스코프로 작성됩니다. 이것은 코드 내의 다른 장소에서, 또는 함수를 다시 실행할 때, 의도하지 않은 결과를 일으킬 수도 있습니다. 당신은 항상 당신의 변수를 `let` 또는 `const`로 선언해야 합니다.

# --instructions--

`let` 또는 `const`를 사용해서, 함수 외부에서 `myGlobal`이라는 글로벌 변수를 선언하세요. 그 값을 `10`으로 초기화하세요.

함수 `fun1` 내부에서 `var`, `let` 또는 `const` 키워드를 사용하지 ***않고*** `oopsGlobal`에 `5`를 할당하세요.

# --before-each--

```js
var oopsGlobal;
```

# --hints--

`myGlobal`는 정의되어야 합니다.

```js
assert(typeof myGlobal != 'undefined');
```

`myGlobal`의 값은 `10`이 되어야 합니다.

```js
assert(myGlobal === 10);
```

`myGlobal`는 `let` 키워드 또는 `const` 키워드를 사용해서 선언해야 합니다.

```js
assert(/(let|const)\s+myGlobal/.test(__helpers.removeJSComments(code)));
```

`oopsGlobal`는 글로벌 변수이며 값은 `5`의 값을 가져야 합니다.

```js
fun1();
assert(typeof oopsGlobal != 'undefined');
```

# --seed--

## --seed-contents--

```js
// Declare the myGlobal variable below this line


function fun1() {
  // Assign 5 to oopsGlobal here

}

// Only change code above this line

function fun2() {
  let output = "";
  if (typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if (typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}
```

# --solutions--

```js
const myGlobal = 10;

function fun1() {
  oopsGlobal = 5;
}

function fun2() {
  let output = "";
  if(typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if(typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}
```
