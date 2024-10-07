---
id: 587d7daa367417b2b2512b6b
title: split 메소드로 문자열을 배열로 나누기
challengeType: 1
forumTopicId: 18305
dashedName: split-a-string-into-an-array-using-the-split-method
---

# --description--

The `split` method splits a string into an array of strings. It takes an argument for the delimiter, which can be a character to use to break up the string or a regular expression. For example, if the delimiter is a space, you get an array of words, and if the delimiter is an empty string, you get an array of each character in the string.

여기 공백으로 한 문자열을 나눈 예와 정규 표현식을 사용하여 숫자로 나눈 예가 있습니다:

```js
const str = "Hello World";
const bySpace = str.split(" ");

const otherString = "How9are7you2today";
const byDigits = otherString.split(/\d/);
```

`bySpace`는 `["Hello", "World"]` 값을 가질 것이며 `byDigits`는 `["How", "are", "you", "today"]` 값을 가질 것입니다.

문자열은 불변하기 때문에 `split` 메소드는 문자열과 함께 쉽게 작업할 수 있습니다.

# --instructions--

`str`를 단어의 배열로 나누기 위해 `splitify` 함수 안에 `split` 메소드를 사용하시오. 함수는 배열을 반환해야 합니다. 단어들이 항상 공백에 의해 나뉘는 것은 아니며 배열은 마침표를 포함하지 않아야 한다는 것에 주의하시오.

# --hints--

`split` 메소드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.split/g));
```

`splitify("Hello World,I-am code")`는 `["Hello", "World", "I", "am", "code"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(splitify('Hello World,I-am code')) ===
    JSON.stringify(['Hello', 'World', 'I', 'am', 'code'])
);
```

`splitify("Earth-is-our home")`는 `["Earth", "is", "our", "home"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(splitify('Earth-is-our home')) ===
    JSON.stringify(['Earth', 'is', 'our', 'home'])
);
```

`splitify("This.is.a-sentence")`는 `["This", "is", "a", "sentence"]`를 반환해야 합니다.

```js
assert(
  JSON.stringify(splitify('This.is.a-sentence')) ===
    JSON.stringify(['This', 'is', 'a', 'sentence'])
);
```

# --seed--

## --seed-contents--

```js
function splitify(str) {
  // Only change code below this line


  // Only change code above this line
}

splitify("Hello World,I-am code");
```

# --solutions--

```js
function splitify(str) {
  return str.split(/\W/);
}
```
