---
id: 56533eb9ac21ba0edf2244c8
title: 객체 속성에 대괄호 표기법으로 접근하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cBvmEHP'
forumTopicId: 16163
dashedName: accessing-object-properties-with-bracket-notation
---

# --description--

The second way to access the properties of an object is bracket notation (`[]`). If the property of the object you are trying to access has a space in its name, you will need to use bracket notation.

그러나 공백이 없는 객체 속성에도 여전히 대괄호 표기법을 사용할 수 있습니다.

다음은 객체 속성을 읽는 데 대괄호 표기법을 사용하는 예입니다.

```js
const myObj = {
  "Space Name": "Kirk",
  "More Space": "Spock",
  "NoSpace": "USS Enterprise"
};

myObj["Space Name"];
myObj['More Space'];
myObj["NoSpace"];
```

`myObj["Space Name"]`은 문자열 `Kirk`이 될 것이고, `myObj['More Space']`는 문자열 `Spock`이 될 것이며, `myObj["NoSpace"]`는 문자열 `USS Enterprise`이 될 것입니다.

공백이 있는 속성 이름은 따옴표(큰 또는 작은)로 감싸야 함에 유의하세요.

# --instructions--

`testObj`의 속성 `an entree`와 `the drink`의 값을 대괄호 표기법을 사용하여 읽고, 각각을 `entreeValue`와 `drinkValue`에 할당하세요.

# --hints--

`entreeValue`는 문자열이어야 합니다.

```js
assert(typeof entreeValue === 'string');
```

`entreeValue`의 값은 문자열 `hamburger`이어야 합니다.

```js
assert(entreeValue === 'hamburger');
```

`drinkValue`는 문자열이어야 합니다.

```js
assert(typeof drinkValue === 'string');
```

`drinkValue`의 값은 문자열 `water`이어야 합니다.

```js
assert(drinkValue === 'water');
```

대괄호 표기법을 두 번 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/testObj\s*?\[('|")[^'"]+\1\]/g).length > 1);
```

# --seed--

## --after-user-code--

```js
(function(a,b) { return "entreeValue = '" + a + "', drinkValue = '" + b + "'"; })(entreeValue,drinkValue);
```

## --seed-contents--

```js
// Setup
const testObj = {
  "an entree": "hamburger",
  "my side": "veggies",
  "the drink": "water"
};

// Only change code below this line
const entreeValue = testObj;   // Change this line
const drinkValue = testObj;    // Change this line
```

# --solutions--

```js
const testObj = {
  "an entree": "hamburger",
  "my side": "veggies",
  "the drink": "water"
};
const entreeValue = testObj["an entree"];
const drinkValue = testObj['the drink'];
```
