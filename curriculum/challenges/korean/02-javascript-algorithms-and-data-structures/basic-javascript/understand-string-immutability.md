---
id: 56533eb9ac21ba0edf2244ba
title: 문자열의 불변성을 이해하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cWPVaUR'
forumTopicId: 18331
dashedName: understand-string-immutability
---

# --description--

In JavaScript, `String` values are <dfn>immutable</dfn>, which means that they cannot be altered once created.

For example, the following code will produce an error because the letter `B` in the string `Bob` cannot be changed to the letter `J`:

```js
let myStr = "Bob";
myStr[0] = "J";
```

Note that this does *not* mean that `myStr` could not be re-assigned. The only way to change `myStr` would be to assign it with a new value, like this:

```js
let myStr = "Bob";
myStr = "Job";
```

# --instructions--

위의 예에서 설명한 접근법에 따라 `Hello World` 를 값으로 포함하도록 `myStr`의 할당을 수정하세요.

# --hints--

`myStr`의 값은 문자열 `Hello World`가 되어야 합니다.

```js
assert(myStr === 'Hello World');
```

지정 코멘트보다 위에 있는 코드를 변경하지 말아 주세요.

```js
assert(/myStr = "Jello World"/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(v){return "myStr = " + v;})(myStr);
```

## --seed-contents--

```js
// Setup
let myStr = "Jello World";

// Only change code below this line
myStr[0] = "H"; // Change this line
// Only change code above this line
```

# --solutions--

```js
let myStr = "Jello World";
myStr = "Hello World";
```
