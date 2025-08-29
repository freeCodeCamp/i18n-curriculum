---
id: 56533eb9ac21ba0edf2244b9
title: 변수들을 사용해 문자열을 제작하기
challengeType: 1
forumTopicId: 16805
dashedName: constructing-strings-with-variables
---

# --description--

Sometimes you will need to build a string. By using the concatenation operator (`+`), you can insert one or more variables into a string you're building.

예:

```js
const ourName = "freeCodeCamp";
const ourStr = "Hello, our name is " + ourName + ", how are you?";
```

`ourStr`의 값은 문자열 `Hello, our name is freeCodeCamp, how are you?`이 됩니다.

# --instructions--

`myName`에 당신의 이름을 문자열을 넣고, 문자열 `My name is` 와 `and I am well!` 사이에 `myName`을 삽입한 `myStr`을 작성하세요.

# --hints--

`myName`에는 3글자 이상의 길이를 가지는 문자열을 넣어야 합니다.

```js
assert(typeof myName !== 'undefined' && myName.length > 2);
```

당신은 2개의 `+` 연산자를 사용해서 `myName`가 내부에 있는 `myStr`을 작성해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/["']\s*\+\s*myName\s*\+\s*["']/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(){
  var output = [];
  if(typeof myName === 'string') {
    output.push('myName = "' + myName + '"');
  } else {
    output.push('myName is not a string');
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
// Only change code below this line
const myName = "";
const myStr = "";
```

# --solutions--

```js
const myName = "Bob";
const myStr = "My name is " + myName + " and I am well!";
```
