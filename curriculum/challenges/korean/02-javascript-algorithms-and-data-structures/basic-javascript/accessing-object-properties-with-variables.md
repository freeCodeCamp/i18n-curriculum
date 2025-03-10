---
id: 56533eb9ac21ba0edf2244c9
title: 변수로 객체 속성 접근하기
challengeType: 1
forumTopicId: 16165
dashedName: accessing-object-properties-with-variables
---

# --description--

객체에서 대괄호 표기법을 사용하는 또 다른 방법은 변수의 값으로 저장된 속성에 접근하는 것입니다. 이는 객체의 속성을 반복하거나 룩업 테이블에 접근할 때 매우 유용할 수 있습니다.

여기 속성에 접근하기 위해 변수를 사용하는 예시입니다:

```js
const dogs = {
  Fido: "Mutt",
  Hunter: "Doberman",
  Snoopie: "Beagle"
};

const myDog = "Hunter";
const myBreed = dogs[myDog];
console.log(myBreed);
```

문자열 `Doberman`이 콘솔에 출력될 것입니다.

변수의 *이름*이 아니고 변수의 *값*을 사용하기 때문에 변수를 사용하여 속성에 접근할 때 변수 이름 주위에 따옴표를 사용하지 않는다는 점에 유의하시오.

# --instructions--

`playerNumber` 변수를 `16`으로 설정하시오. 그런 다음 선수의 이름을 찾을 수 있도록 해당 변수를 사용하고 그 변수를 `player`에 할당하시오.

# --hints--

`playerNumber`는 숫자이어야 합니다.

```js
assert(typeof playerNumber === 'number');
```

변수 `player`는 문자열이어야 합니다.

```js
assert(typeof player === 'string');
```

`player`의 값은 문자열 `Montana`이어야 합니다.

```js
assert(player === 'Montana');
```

`testObj`에 접근하기 위해 괄호 표기법을 사용해야 합니다.

```js
assert(/testObj\s*?\[.*?\]/.test(__helpers.removeJSComments(code)));
```

값 `Montana`를 변수 `player`에 바로 할당하지 않아야 합니다.

```js
assert(!__helpers.removeJSComments(code).match(/player\s*=\s*"|\'\s*Montana\s*"|\'\s*;/gi));
```

괄호 표기법에 변수 `playerNumber`를 사용해야 합니다.

```js
assert(/testObj\s*?\[\s*playerNumber\s*\]/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
if(typeof player !== "undefined"){(function(v){return v;})(player);}
```

## --seed-contents--

```js
// Setup
const testObj = {
  12: "Namath",
  16: "Montana",
  19: "Unitas"
};

// Only change code below this line
const playerNumber = 42;  // Change this line
const player = testObj;   // Change this line
```

# --solutions--

```js
const testObj = {
  12: "Namath",
  16: "Montana",
  19: "Unitas"
};
const playerNumber = 16;
const player = testObj[playerNumber];
```
