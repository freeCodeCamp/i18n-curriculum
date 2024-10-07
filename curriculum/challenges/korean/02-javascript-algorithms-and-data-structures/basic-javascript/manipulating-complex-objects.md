---
id: 56533eb9ac21ba0edf2244cb
title: 복잡한 객체 다루기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9yNMfR'
forumTopicId: 18208
dashedName: manipulating-complex-objects
---

# --description--

Sometimes you may want to store data in a flexible <dfn>Data Structure</dfn>. A JavaScript object is one way to handle flexible data. They allow for arbitrary combinations of <dfn>strings</dfn>, <dfn>numbers</dfn>, <dfn>booleans</dfn>, <dfn>arrays</dfn>, <dfn>functions</dfn>, and <dfn>objects</dfn>.

여기 복잡한 데이터 구조의 예시입니다.

```js
const ourMusic = [
  {
    "artist": "Daft Punk",
    "title": "Homework",
    "release_year": 1997,
    "formats": [ 
      "CD", 
      "Cassette", 
      "LP"
    ],
    "gold": true
  }
];
```

이는 안에 하나의 객체를 포함하는 배열입니다. 이 객체는 앨범에 대한 다양한 <dfn>metadata</dfn> 정보를 가지고 있습니다. 또한 중첩된 `formats` 배열을 가지고 있습니다. 앨범 기록을 더 추가하고 싶다면 최상단 배열에 기록을 추가하면 됩니다. 객체는 키-값 형식으로 속성에 데이터를 보관합니다. 위 예시에서 `"artist": "Daft Punk"`는 `artist` 키와 `Daft Punk` 값을 가진 속성입니다.

**주의:** 배열의 마지막 객체가 아니라면 배열의 모든 객체 다음에 콤마를 놓아야 합니다.

# --instructions--

`myMusic` 배열에 새로운 앨범을 추가하시오. 문자열 `artist`와 `title`, 숫자 `release_year` 그리고 문자열의 배열 `formats`을 추가하시오.

# --hints--

`myMusic`은 배열이어야 합니다.

```js
assert(Array.isArray(myMusic));
```

`myMusic`는 적어도 두 개의 요소를 가져야 합니다.

```js
assert(myMusic.length > 1);
```

`myMusic` 배열 안에 있는 요소는 객체이어야 합니다.

```js
myMusic.forEach(object => {assert.typeOf(object, 'object')})
```

`myMusic` 안에 있는 객체는 적어도 4 개의 속성을 가져야 합니다.

```js
myMusic.forEach(object => {assert(Object.keys(object).length > 3); });
```

`myMusic`안의 객체는 문자열인 `artist` 속성을 포함해야 합니다.

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['artist']);
  assert.typeOf(object.artist, 'string')
})
```

`myMusic`안의 객체는 문자열인 `title` 속성을 포함해야 합니다.

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['title']);
  assert.typeOf(object.title, 'string')
})
```

`myMusic`안의 객체는 숫자인 `release_year` 속성을 포함해야 합니다.

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['release_year']);
  assert.typeOf(object.release_year, 'number')
})
```

`myMusic`의 객체는 배열인 `formats` 속성을 포함해야 합니다.

```js
myMusic.forEach(object => {
  assert.containsAllKeys(object, ['formats']);
  assert.typeOf(object.formats, 'array')
})
```

`formats`은 적어도 두개의 요소를 가진 문자열의 배열이어야 합니다.

```js
myMusic.forEach(object => {
  object.formats.forEach(format => {
    assert.typeOf(format, 'string')
  });
  assert.isAtLeast(object.formats.length, 2)
})
```

# --seed--

## --after-user-code--

```js
(function(x){ if (Array.isArray(x)) { return JSON.stringify(x); } return "myMusic is not an array"})(myMusic);
```

## --seed-contents--

```js
const myMusic = [
  {
    "artist": "Billy Joel",
    "title": "Piano Man",
    "release_year": 1973,
    "formats": [
      "CD",
      "8T",
      "LP"
    ],
    "gold": true
  }
];
```

# --solutions--

```js
const myMusic = [
  {
    "artist": "Billy Joel",
    "title": "Piano Man",
    "release_year": 1973,
    "formats": [
      "CS",
      "8T",
      "LP" ],
    "gold": true
  },
  {
    "artist": "ABBA",
    "title": "Ring Ring",
    "release_year": 1973,
    "formats": [
      "CS",
      "8T",
      "LP",
    "CD",
  ]
  }
];
```
