---
id: 56533eb9ac21ba0edf2244b8
title: 문자열을 더하기 할당 문자열로 연결하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmmC4'
forumTopicId: 16803
dashedName: concatenating-strings-with-the-plus-equals-operator
---

# --description--

We can also use the `+=` operator to <dfn>concatenate</dfn> a string onto the end of an existing string variable. This can be very helpful to break a long string over several lines.

**노트:** 공백에 주의하세요. 연결에서는 문자열 사이에 공백이 추가되지 않기 때문에, 필요한 경우에는 직접 추가할 필요가 있습니다.

예:

```js
let ourStr = "I come first. ";
ourStr += "I come second.";
```

`ourStr` now has a value of the string `I come first. I come second.`.

# --instructions--

`+=` 연산자를 사용해서, `This is the first sentence.`와 `This is the second sentence.`의 2개의 문자열을 연결해 복수의 행이 되는 `myStr`을 작성하세요. 이전의 예와 같이 `+=` 연산자를 사용해 반드시 2개의 문자열 사이에 공백을 넣으세요. 우선 `myStr`에 첫번째 문자열을 할당하고, 다음으로 두번째 문자열을 추가하세요.

# --hints--

`myStr` should have a single space character between the two strings.

```js
assert(/sentence\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the first sentence. This is the second sentence.`

```js
assert(myStr === 'This is the first sentence. This is the second sentence.');
```

You should use the `+=` operator to build `myStr`.

```js
assert(__helpers.removeJSComments(code).match(/myStr\s*\+=\s*(["']).*\1/g));
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
let myStr;
```

# --solutions--

```js
let myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";
```
