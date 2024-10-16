---
id: 587d7daa367417b2b2512b6b
title: 使用 split 方法将字符串拆分成数组
challengeType: 1
forumTopicId: 18305
dashedName: split-a-string-into-an-array-using-the-split-method
---

# --description--

The `split` method splits a string into an array of strings. It takes an argument for the delimiter, which can be a character to use to break up the string or a regular expression. For example, if the delimiter is a space, you get an array of words, and if the delimiter is an empty string, you get an array of each character in the string.

下面是两个用空格分隔一个字符串的例子，另一个是用数字的正则表达式分隔：

```js
const str = "Hello World";
const bySpace = str.split(" ");

const otherString = "How9are7you2today";
const byDigits = otherString.split(/\d/);
```

`bySpace` 将有值 `["Hello", "World"]`，`byDigits` 将有值 `["How", "are", "you", "today"]`。

因为字符串是不可变的，`split` 方法操作它们更方便。

# --instructions--

在 `splitify` 函数中用 `split` 方法将 `str` 分割成单词数组。 这个方法应该返回一个数组。 单词不一定都是用空格分隔，所以数组中不应包含标点符号。

# --hints--

应该使用 `split` 方法。

```js
assert(__helpers.removeJSComments(code).match(/\.split/g));
```

`splitify("Hello World,I-am code")` 应返回 `["Hello", "World", "I", "am", "code"]`。

```js
assert(
  JSON.stringify(splitify('Hello World,I-am code')) ===
    JSON.stringify(['Hello', 'World', 'I', 'am', 'code'])
);
```

`splitify("Earth-is-our home")` 应返回 `["Earth", "is", "our", "home"]`。

```js
assert(
  JSON.stringify(splitify('Earth-is-our home')) ===
    JSON.stringify(['Earth', 'is', 'our', 'home'])
);
```

`splitify("This.is.a-sentence")` 应返回 `["This", "is", "a", "sentence"]`。

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
