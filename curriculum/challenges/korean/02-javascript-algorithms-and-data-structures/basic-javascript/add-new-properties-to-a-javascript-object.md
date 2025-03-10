---
id: 56bbb991ad1ed5201cd392d2
title: 자바스크립트 객체에 새 속성 추가하기
challengeType: 1
forumTopicId: 301169
dashedName: add-new-properties-to-a-javascript-object
---

# --description--

You can add new properties to existing JavaScript objects the same way you would modify them.

다음과 같이 `ourDog` 객체에 `bark`이라는 속성을 추가할 수 있습니다:

```js
ourDog.bark = "bow-wow";
```

이렇게 할 수도 있습니다:

```js
ourDog["bark"] = "bow-wow";
```

이제 `outDog.bark`의 값을 확인해보면, `bow-wow`라는 값을 얻게 됩니다.

예:

```js
const ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};

ourDog.bark = "bow-wow";
```

# --instructions--

`myDog` 객체에 `bark`라는 속성을 추가하고, 값으로는 "woof"와 같은 개 짖는 소리를 설정해 주세요. 점 표기법 또는 괄호 표기법을 사용하면 됩니다.

# --hints--

`myDog`에 `bark`라는 속성을 추가해야 합니다.

```js
assert(myDog.bark !== undefined);
```

`myDog`를 초기화하는 과정에서 `bark`을 추가하면 안 됩니다.

```js
assert(!/bark[^\n]:/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return z;})(myDog);
```

## --seed-contents--

```js
const myDog = {
  "name": "Happy Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["freeCodeCamp Campers"]
};


```

# --solutions--

```js
const myDog = {
  "name": "Happy Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["freeCodeCamp Campers"]
};
myDog.bark = "Woof Woof";
```
