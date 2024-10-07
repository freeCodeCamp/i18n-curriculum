---
id: 56533eb9ac21ba0edf2244cc
title: 중첩 객체에 접근하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cRnRnfa'
forumTopicId: 16161
dashedName: accessing-nested-objects
---

# --description--

The sub-properties of objects can be accessed by chaining together the dot or bracket notation.

이것은 중첩된 객체입니다:

```js
const ourStorage = {
  "desk": {
    "drawer": "stapler"
  },
  "cabinet": {
    "top drawer": { 
      "folder1": "a file",
      "folder2": "secrets"
    },
    "bottom drawer": "soda"
  }
};

ourStorage.cabinet["top drawer"].folder2;
ourStorage.desk.drawer;
```

`ourStorage.cabinet["top drawer"].folder2` 는 `secrets`이라는 문자열 값을 갖고, `ourStorage.desk.drawer`은 `stapler`라는 문자열 값을 갖습니다.

# --instructions--

`myStorage` 객체에 접근하여 `glove box` 속성의 콘텐츠를 `gloveBoxContents` 변수에 할당하세요. 가능한 경우 모든 속성에 대해 점 표기법을 사용하고, 그렇지 않은 경우 괄호 표기법을 사용하세요.

# --hints--

`gloveBoxContents`는 문자열 `maps`와 동일해야 합니다.

```js
assert(gloveBoxContents === 'maps');
```

`myStorage`에 접근하기 위해, 가능하다면 점 표기법을 사용해야 합니다.

```js
assert.match(code, /myStorage\.car\.inside/);
```

`globeBoxContents`는 여전히 `const`로 선언되어야 합니다.

```js
assert.match(code, /const\s+gloveBoxContents\s*=/);
```

`myStorage` 객체를 변경하면 안 됩니다.

```js
const expectedMyStorage = {
  "car":{
    "inside":{
      "glove box":"maps",
      "passenger seat":"crumbs"
    },
    "outside":{
      "trunk":"jack"
    }
  }
};
assert.deepStrictEqual(myStorage, expectedMyStorage);
```

# --seed--

## --after-user-code--

```js
(function(x) { 
  if(typeof x != 'undefined') { 
    return "gloveBoxContents = " + x;
  }
  return "gloveBoxContents is undefined";
})(gloveBoxContents);
```

## --seed-contents--

```js
const myStorage = {
  "car": {
    "inside": {
      "glove box": "maps",
      "passenger seat": "crumbs"
     },
    "outside": {
      "trunk": "jack"
    }
  }
};

const gloveBoxContents = undefined;
```

# --solutions--

```js
const myStorage = {
  "car":{
    "inside":{
      "glove box":"maps",
      "passenger seat":"crumbs"
    },
    "outside":{
      "trunk":"jack"
    }
  }
};
const gloveBoxContents = myStorage.car.inside["glove box"];
```
