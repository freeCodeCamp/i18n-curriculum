---
id: 56533eb9ac21ba0edf2244cd
title: 중첩 배열에 접근하기
challengeType: 1
forumTopicId: 16160
dashedName: accessing-nested-arrays
---

# --description--

As we have seen in earlier examples, objects can contain both nested objects and nested arrays. Similar to accessing nested objects, array bracket notation can be chained to access nested arrays.

다음은 중첩 배열에 접근하는 방법에 대한 예제입니다.

```js
const ourPets = [
  {
    animalType: "cat",
    names: [
      "Meowzer",
      "Fluffy",
      "Kit-Cat"
    ]
  },
  {
    animalType: "dog",
    names: [
      "Spot",
      "Bowser",
      "Frankie"
    ]
  }
];

ourPets[0].names[1];
ourPets[1].names[0];
```

`ourPets[0].names[1]`은 문자열 `Fluffy`이 되어야 하고, `ourPets[1].names[0]`은 문자열 `Spot`이 되어야 합니다.

# --instructions--

점 표기법과 괄호 표기법을 사용하여, 변수 `myPlants`배열의 두 번째 객체에서 `list` 배열의 두 번째 요소로 `second Tree`를 설정합니다.

# --hints--

`secondTree`는 문자열 `pine`과 같아야 합니다.

```js
assert(secondTree === 'pine');
```

`myPlants`에 접근하기 위해 점 표기법과 괄호 표기법을 사용하여야 합니다.

```js
assert(/=\s*myPlants\[1\].list\[1\]/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(x) {
  if(typeof x != 'undefined') {
    return "secondTree = " + x;
  }
  return "secondTree is undefined";
})(secondTree);
```

## --seed-contents--

```js
const myPlants = [
  {
    type: "flowers",
    list: [
      "rose",
      "tulip",
      "dandelion"
    ]
  },
  {
    type: "trees",
    list: [
      "fir",
      "pine",
      "birch"
    ]
  }
];

const secondTree = "";
```

# --solutions--

```js
const myPlants = [
  {
    type: "flowers",
    list: [
      "rose",
      "tulip",
      "dandelion"
    ]
  },
  {
    type: "trees",
    list: [
      "fir",
      "pine",
      "birch"
    ]
  }
];

const secondTree = myPlants[1].list[1];
```
