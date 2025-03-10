---
id: 56bbb991ad1ed5201cd392d3
title: 자바스크립트 객체에서 속성 삭제하기
challengeType: 1
forumTopicId: 17560
dashedName: delete-properties-from-a-javascript-object
---

# --description--

We can also delete properties from objects like this:

```js
delete ourDog.bark;
```

예:

```js
const ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"],
  "bark": "bow-wow"
};

delete ourDog.bark;
```

위에 표시된 마지막 줄 다음에, `ourDog`는 다음과 같이 보입니다.

```js
{
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
}
```

# --instructions--

`myDog`에서 `tails` 속성을 삭제하십시오. 점 또는 괄호 표기법을 사용할 수 있습니다.

# --hints--

`myDog`에서 `tails` 속성을 삭제해야 합니다.

```js
assert(typeof myDog === 'object' && myDog.tails === undefined);
```

`myDog` 설정을 수정해서는 안 됩니다.

```js
assert(__helpers.removeJSComments(code).match(/"tails": 1/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(z){return z;})(myDog);
```

## --seed-contents--

```js
// Setup
const myDog = {
  "name": "Happy Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["freeCodeCamp Campers"],
  "bark": "woof"
};

// Only change code below this line

```

# --solutions--

```js
const myDog = {
  "name": "Happy Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["freeCodeCamp Campers"],
  "bark": "woof"
};
delete myDog.tails;
```
