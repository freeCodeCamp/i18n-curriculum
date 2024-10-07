---
id: 56533eb9ac21ba0edf2244c0
title: 함수 안에서 글로벌 스코프 vs. 로컬 스코프
challengeType: 1
videoUrl: 'https://scrimba.com/c/c2QwKH2'
forumTopicId: 18194
dashedName: global-vs--local-scope-in-functions
---

# --description--

It is possible to have both <dfn>local</dfn> and <dfn>global</dfn> variables with the same name. When you do this, the local variable takes precedence over the global variable.

이 예를 보세요:

```js
const someVar = "Hat";

function myFun() {
  const someVar = "Head";
  return someVar;
}
```

로컬 버전의 변수가 존재하기 때문에 함수 `myFun`은 문자열 `Head`를 되돌려 줄 것입니다.

# --instructions--

`myOutfit` 함수에 로컬 변수 `outerWear`를 추가하고 해당 변수의 값을 문자열 `sweater`로 덮어쓰기 하세요.

# --hints--

글로벌 `outerWear`의 값을 변경해서는 안됩니다.

```js
assert(outerWear === 'T-Shirt');
```

`myOutfit`은 문자열 `sweater`를 반환해야 합니다.

```js
assert(myOutfit() === 'sweater');
```

return 문을 변경하면 안됩니다.

```js
assert(/return outerWear/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
// Setup
const outerWear = "T-Shirt";

function myOutfit() {
  // Only change code below this line

  // Only change code above this line
  return outerWear;
}

myOutfit();
```

# --solutions--

```js
const outerWear = "T-Shirt";
function myOutfit() {
  const outerWear = "sweater";
  return outerWear;
}
```
