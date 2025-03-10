---
id: 56533eb9ac21ba0edf2244b7
title: 더하기 연산자로 문자열을 연결하기
challengeType: 1
forumTopicId: 16802
dashedName: concatenating-strings-with-plus-operator
---

# --description--

In JavaScript, when the `+` operator is used with a `String` value, it is called the <dfn>concatenation</dfn> operator. You can build a new string out of other strings by <dfn>concatenating</dfn> them together.

**예)**

```js
'My name is Alan,' + ' I concatenate.'
```

**노트:** 공백에 주의하세요. 연결에서는 문자열 사이에 공백이 추가되지 않기 때문에, 필요한 경우에는 직접 추가할 필요가 있습니다.

예:

```js
const ourStr = "I come first. " + "I come second.";
```

The string `I come first. I come second.` would be displayed in the console.
# --instructions--

`+` 연산자를 사용해서, 문자열 `This is the start.` 와 `This is the end.`로 `myStr`을 제작해주세요. 2개의 문자열 사이에 공백을 반드시 포함해 주세요.

# --hints--

`myStr` should have a single space character between the two strings.

```js
assert(/start\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the start. This is the end.`

```js
assert(myStr === 'This is the start. This is the end.');
```

You should use the `+` operator to build `myStr`.

```js
assert(__helpers.removeJSComments(code).match(/(["']).*\1\s*\+\s*(["']).*\2/g));
```

`myStr` should be created using the `const` keyword.

```js
assert(/const\s+myStr/.test(__helpers.removeJSComments(code)));
```

You should assign the result to the `myStr` variable.

```js
assert(/myStr\s*=/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){
  if(typeof myStr === 'string') {
    return 'myStr = "' + myStr + '"';
  } else {
    return 'myStr is not a string';
  }
})();
```

## --seed-contents--

```js
const myStr = ""; // Change this line
```

# --solutions--

```js
const myStr = "This is the start. " + "This is the end.";
```
