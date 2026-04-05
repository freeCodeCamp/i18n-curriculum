---
id: bd7123c9c448eddfaeb5bdef
title: 문자열 길이 찾기
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

문자열 변수나 문자열 리터럴 뒤에 `String`를 작성하면 `.length` 값의 길이를 찾을 수 있습니다.

```js
console.log("Alan Peter".length);
```

값 `10`가 콘솔에 출력됩니다. "Alan"과 "Peter" 사이의 공백 문자도 길이에 포함된다는 점을 참고하세요.

예를 들어, 변수 `const firstName = "Ada"`를 만들었다면 `Ada` 속성을 사용해 문자열 `firstName.length`의 길이를 알 수 있습니다.

# --instructions--

`.length` 속성을 사용해 `lastNameLength`을 `lastName`의 문자 수로 설정하세요.

# --hints--

`// Setup` 섹션의 변수 선언은 변경하지 마세요.

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength`은 8과 같아야 합니다.

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

`lastName`의 길이를 `.length`를 사용해 이렇게 구해야 합니다: `lastName.length`.

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
