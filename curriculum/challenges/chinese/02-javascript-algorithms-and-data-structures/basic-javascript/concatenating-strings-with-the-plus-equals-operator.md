---
id: 56533eb9ac21ba0edf2244b8
title: 用 += 运算符连接字符串
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmmC4'
forumTopicId: 16803
dashedName: concatenating-strings-with-the-plus-equals-operator
---

# --description--

We can also use the `+=` operator to <dfn>concatenate</dfn> a string onto the end of an existing string variable. This can be very helpful to break a long string over several lines.

**提示：** 注意空格。 拼接操作不会在两个字符串之间添加空格，所以，如果想要加上空格的话，你需要自己在字符串里面添加。

示例：

```js
let ourStr = "I come first. ";
ourStr += "I come second.";
```

`ourStr` 现在内容为字符串 `I come first. I come second.`

# --instructions--

使用 `+=` 操作符，多行合并字符串 `This is the first sentence.` 和 `This is the second sentence.` ，并赋值给 `myStr` 。 参照示例中显示的方式使用 `+=` 操作符，并确保在两个字符串之间包含一个空格。 先把第一个字符串赋值给 `myStr`，然后拼接第二个字符串。

# --hints--

`myStr` 应该在两个字符串之间有一个空格字符。

```js
assert(/sentence\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the first sentence. This is the second sentence.`

```js
assert(myStr === 'This is the first sentence. This is the second sentence.');
```

应该使用 `+=` 操作符创建 `myStr` 变量。

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
