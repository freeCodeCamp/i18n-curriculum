---
id: 56bbb991ad1ed5201cd392d1
title: 객체 속성을 변경하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9yEJT4'
forumTopicId: 18336
dashedName: updating-object-properties
---

# --description--

After you've created a JavaScript object, you can update its properties at any time just like you would update any other variable. You can use either dot or bracket notation to update.

예를 들어, `outDog` 객체를 살펴봅시다.

```js
const ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};
```

이 객체는 아주 행복한 개를 나타내므로, 이름을 `Happy Camper`라는 문자열로 바꿔봅시다. 객체의 이름 속성을 변경하는 방법은 다음과 같습니다: `ourDog.name = "Happy Camper";` 또는 `ourDog["name"] = "Happy Camper";` 이제 `ourDog.name`은 `Camper` 대신, 새로운 이름인 `Happy Camper`라는 값을 가집니다.

# --instructions--

`myDog` 객체의 이름 속성을 변경해보세요. 이름을 `Coder`에서 `Happy Coder`로 바꿔봅시다. 점 표기법 또는 괄호 표기법을 사용하면 됩니다.

# --hints--

`myDog`의 `name` 속성이 `Happy Coder`라는 문자열과 일치하도록 변경해야 합니다.

```js
assert(/happy coder/gi.test(myDog.name));
```

`myDog`객체 자체의 선언을 수정해서는 안 됩니다.

```js
assert(/"name": "Coder"/.test(__helpers.removeJSComments(code)));
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
  "name": "Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["freeCodeCamp Campers"]
};

// Only change code below this line

```

# --solutions--

```js
const myDog = {
  "name": "Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["freeCodeCamp Campers"]
};
myDog.name = "Happy Coder";
```
