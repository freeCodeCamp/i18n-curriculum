---
id: 598f48a36c8c40764b4e52b3
title: 객체 변경 방지하기
challengeType: 1
forumTopicId: 301207
dashedName: prevent-object-mutation
---

# --description--

As seen in the previous challenge, `const` declaration alone doesn't really protect your data from mutation. To ensure your data doesn't change, JavaScript provides a function `Object.freeze` to prevent data mutation.

객체를 변경하려는 시도는 거부될 것이며, 스크립트가 엄격 모드로 실행 중인 경우 오류가 발생할 것입니다.

```js
let obj = {
  name:"FreeCodeCamp",
  review:"Awesome"
};
Object.freeze(obj);
obj.review = "bad";
obj.newProp = "Test";
console.log(obj); 
```

`obj.review` 및 `obj.newProp` 할당은 오류를 발생시킬 것입니다. 기본적으로 우리 편집기는 엄격 모드로 실행되기 때문에 콘솔에 `{ name: "FreeCodeCamp", review: "Awesome" }` 값이 표시될 것입니다.

# --instructions--

이 도전과제에서는 수학 상수가 변경되지 않도록 `Object.freeze`를 사용하게 됩니다. `MATH_CONSTANTS` 객체를 freeze해서 아무도 `PI`의 값을 변경하거나 프로퍼티를 추가 또는 삭제할 수 없도록 해야 합니다.

# --hints--

`const` 키워드를 변경해서는 안 됩니다.

```js
assert(__helpers.removeJSComments(code).match(/const/g));
```

`MATH_CONSTANTS`는 (`const`를 이용하여) 상수로 선언해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/const\s+MATH_CONSTANTS/g));
```

`MATH_CONSTANTS`의 원래 선언을 변경해서는 안 됩니다.

```js
assert(__helpers.removeJSComments(code).match(
   /const\s+MATH_CONSTANTS\s+=\s+{\s+PI:\s+3.14\s+};/g
));
```

`PI`는 `3.14`와 같아야 합니다.

```js
assert(PI === 3.14);
```

# --seed--

## --seed-contents--

```js
function freezeObj() {
  const MATH_CONSTANTS = {
    PI: 3.14
  };
  // Only change code below this line


  // Only change code above this line
  try {
    MATH_CONSTANTS.PI = 99;
  } catch(ex) {
    console.log(ex);
  }
  return MATH_CONSTANTS.PI;
}
const PI = freezeObj();
```

# --solutions--

```js
function freezeObj() {
  const MATH_CONSTANTS = {
    PI: 3.14
  };
  Object.freeze(MATH_CONSTANTS);

  try {
    MATH_CONSTANTS.PI = 99;
  } catch(ex) {
    console.log(ex);
  }
  return MATH_CONSTANTS.PI;
}
const PI = freezeObj();
```
