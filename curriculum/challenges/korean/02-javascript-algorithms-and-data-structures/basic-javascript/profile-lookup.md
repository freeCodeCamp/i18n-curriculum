---
id: 5688e62ea601b2482ff8422b
title: 프로필 조회
challengeType: 1
videoUrl: 'https://scrimba.com/c/cDqW2Cg'
forumTopicId: 18259
dashedName: profile-lookup
---

# --description--

We have an array of objects representing different people in our contacts lists.

`name`과 속성(`prop`) 을 인수로 취하는 `lookUpProfile` 함수가 이미 작성되어 있습니다.

이 함수는 `name`이 주소록에 담겨있는 한 연락처의 `firstName`과 매칭되는지, 주어진 속성(`prop`) 이 해당 연락처의 속성이 맞는지를 확인해야 합니다.

둘 다 참인 경우 해당 속성의 "값"을 반환해야 합니다.

만약 주소록에 `name`과 매칭되는 연락처가 없다면 `No such contact`라는 문자열을 반환합니다.

만약 `name`은 일치하는 연락처가 있으나 `prop`이 해당 연락처의 유효한 속성과 일치하지 않는 경우에는 `No such propery`라는 문자열을 반환해야 합니다.

# --hints--

`lookUpProfile("Kristian", "lastName")`는 문자열 `Vos`를 반환해야 합니다.

```js
assert(lookUpProfile('Kristian', 'lastName') === 'Vos');
```

`lookUpProfile("Sherlock", "likes")`는 `["Intriguing Cases", "Violin"]`를 반환해야 합니다.

```js
assert.deepEqual(lookUpProfile('Sherlock', 'likes'), [
  'Intriguing Cases',
  'Violin'
]);
```

`lookUpProfile("Harry", "likes")` 는 배열을 반환해야 합니다.

```js
assert(typeof lookUpProfile('Harry', 'likes') === 'object');
```

`lookUpProfile("Bob", "number")`은 `No such contact`라는 문자열을 반환해야 합니다.

```js
assert(lookUpProfile('Bob', 'number') === 'No such contact');
```

`lookUpProfile("Bob", "potato")`는 `No such contact`라는 문자열을 반환해야 합니다.

```js
assert(lookUpProfile('Bob', 'potato') === 'No such contact');
```

`lookUpProfile("Akira", "address")`는 `No such property`라는 문자열을 반환해야 합니다.

```js
assert(lookUpProfile('Akira', 'address') === 'No such property');
```

# --seed--

## --seed-contents--

```js
// Setup
const contacts = [
  {
    firstName: "Akira",
    lastName: "Laine",
    number: "0543236543",
    likes: ["Pizza", "Coding", "Brownie Points"],
  },
  {
    firstName: "Harry",
    lastName: "Potter",
    number: "0994372684",
    likes: ["Hogwarts", "Magic", "Hagrid"],
  },
  {
    firstName: "Sherlock",
    lastName: "Holmes",
    number: "0487345643",
    likes: ["Intriguing Cases", "Violin"],
  },
  {
    firstName: "Kristian",
    lastName: "Vos",
    number: "unknown",
    likes: ["JavaScript", "Gaming", "Foxes"],
  },
];

function lookUpProfile(name, prop) {
  // Only change code below this line

  // Only change code above this line
}

lookUpProfile("Akira", "likes");
```

# --solutions--

```js
const contacts = [
  {
    firstName: "Akira",
    lastName: "Laine",
    number: "0543236543",
    likes: ["Pizza", "Coding", "Brownie Points"],
  },
  {
    firstName: "Harry",
    lastName: "Potter",
    number: "0994372684",
    likes: ["Hogwarts", "Magic", "Hagrid"],
  },
  {
    firstName: "Sherlock",
    lastName: "Holmes",
    number: "0487345643",
    likes: ["Intriguing Cases", "Violin"],
  },
  {
    firstName: "Kristian",
    lastName: "Vos",
    number: "unknown",
    likes: ["JavaScript", "Gaming", "Foxes"],
  },
];
function lookUpProfile(name, prop) {
  for (let i in contacts) {
    if (contacts[i].firstName === name) {
      return contacts[i][prop] || "No such property";
    }
  }
  return "No such contact";
}
```
