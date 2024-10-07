---
id: 587d7db2367417b2b2512b8b
title: 즉시-호출 함수 표현(IIFE) 이해하기
challengeType: 1
forumTopicId: 301328
dashedName: understand-the-immediately-invoked-function-expression-iife
---

# --description--

A common pattern in JavaScript is to execute a function as soon as it is declared:

```js
(function () {
  console.log("Chirp, chirp!");
})();
```

이것은 즉시 실행하여 `Chirp, chirp!`을 출력하는 익명 함수입니다.

이 함수에 이름이 없고 변수에 저장되어 있지 않다는 점에 주목하길 바랍니다. 함수 표현의 끝에 두 개의 괄호가 이 함수를 즉시 실행시켜주는 것입니다. 이 유형은 <dfn>즉시-호출 함수 표현</dfn> 혹은 <dfn>IIFE</dfn>라고 알려져 있습니다.

# --instructions--

함수 `makeNest`를 다시 작성하여 호출 부분을 삭제하고 대신에 익명의 즉시-호출 함수 표현이 되도록 하시오.

# --hints--

이 함수는 익명이어야 합니다.

```js
assert(/\((function|\(\))(=>|\(\)){?/.test(__helpers.removeJSComments(code).replace(/\s/g, '')));
```

이 함수는 즉각적으로 호출하도록 표현의 끝에 괄호가 있어야 합니다.

```js
assert(/\(.*(\)\(|\}\(\))\)/.test(__helpers.removeJSComments(code).replace(/[\s;]/g, '')));
```

# --seed--

## --seed-contents--

```js
function makeNest() {
  console.log("A cozy nest is ready");
}

makeNest();
```

# --solutions--

```js
(function () {
  console.log("A cozy nest is ready");
})();
```

---

```js
(function () {
  console.log("A cozy nest is ready");
}());
```

---

```js
(() => {
  console.log("A cozy nest is ready");
})();
```

---

```js
(() =>
  console.log("A cozy nest is ready")
)();
```
