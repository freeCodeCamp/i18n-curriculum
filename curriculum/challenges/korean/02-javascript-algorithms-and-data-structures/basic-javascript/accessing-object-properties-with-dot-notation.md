---
id: 56533eb9ac21ba0edf2244c7
title: 점 표기법으로 객체 속성 접근하기
challengeType: 1
forumTopicId: 16164
dashedName: accessing-object-properties-with-dot-notation
---

# --description--

객체의 속성에 접근하기 위한 방법이 두가지 있습니다. 점 표기법 (`.`)과 배열과 유사한 괄호 표기법(`[]`) 입니다.

점 표기법은 미리 접근하려는 속성의 이름을 알 때 사용하는 것입니다.

여기 객체의 속성을 읽기 위해 점 표기법 (`.`)을 사용하는 예시입니다:

```js
const myObj = {
  prop1: "val1",
  prop2: "val2"
};

const prop1val = myObj.prop1;
const prop2val = myObj.prop2;
```

`prop1val`는 `val1`의 문자열 값을 가질 것이고 `prop2val`는 `val2`의 문자열 값을 가질 것입니다.

# --instructions--

점 표기법으로 `testObj`의 속성 값을 읽으시오. 변수 `hatValue`를 객체의 속성 `hat`과 같도록 설정하고 변수 `shirtValue`를 객체의 속성 `shirt`와 같도록 설정하시오.

# --hints--

`hatValue`는 문자열이어야 합니다.

```js
assert(typeof hatValue === 'string');
```

`hatValue`의 값은 문자열 `ballcap`이어야 합니다.

```js
assert(hatValue === 'ballcap');
```

`shirtValue`는 문자열이어야 합니다.

```js
assert(typeof shirtValue === 'string');
```

`shirtValue`의 값은 문자열 `jersey`이어야 합니다.

```js
assert(shirtValue === 'jersey');
```

점 표기법을 두 번 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/testObj\.\w+/g).length > 1);
```

# --seed--

## --after-user-code--

```js
(function(a,b) { return "hatValue = '" + a + "', shirtValue = '" + b + "'"; })(hatValue,shirtValue);
```

## --seed-contents--

```js
// Setup
const testObj = {
  hat: "ballcap",
  shirt: "jersey",
  shoes: "cleats"
};

// Only change code below this line
const hatValue = testObj;      // Change this line
const shirtValue = testObj;    // Change this line
```

# --solutions--

```js
const testObj = {
  hat: "ballcap",
  shirt: "jersey",
  shoes: "cleats"
};

const hatValue = testObj.hat;
const shirtValue = testObj.shirt;
```
