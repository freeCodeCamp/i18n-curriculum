---
id: 56533eb9ac21ba0edf2244ed
title: 문자열에 변수 추가하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmZfa'
forumTopicId: 16656
dashedName: appending-variables-to-strings
---

# --description--

Just as we can build a string over multiple lines out of string <dfn>literals</dfn>, we can also append variables to a string using the plus equals (`+=`) operator.

예:

```js
const anAdjective = "awesome!";
let ourStr = "freeCodeCamp is ";
ourStr += anAdjective;
```

`ourStr`은 `freeCodeCamp is awesome!`의 값을 가질 것입니다.

# --instructions--

`someAdjective`에 3글자 이상의 문자열을 설정하고, `+=` 연산자를 사용해서 `myStr`에 연결해 주세요.

# --hints--

`someAdjective`에는 3글자 이상의 길이를 가지는 문자열이 설정되어야 합니다.

```js
assert(typeof someAdjective !== 'undefined' && someAdjective.length > 2);
```

당신은 `+=` 연산자를 사용해서 `someAdjective`를 `myStr`에 연결해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/myStr\s*\+=\s*someAdjective\s*/).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(){
  var output = [];
  if(typeof someAdjective === 'string') {
    output.push('someAdjective = "' + someAdjective + '"');
  } else {
    output.push('someAdjective is not a string');
  }
  if(typeof myStr === 'string') {
    output.push('myStr = "' + myStr + '"');
  } else {
    output.push('myStr is not a string');
  }
  return output.join('\n');
})();
```

## --seed-contents--

```js
// Change code below this line
const someAdjective = "";
let myStr = "Learning to code is ";
```

# --solutions--

```js
const someAdjective = "neat";
let myStr = "Learning to code is ";
myStr += someAdjective;
```
