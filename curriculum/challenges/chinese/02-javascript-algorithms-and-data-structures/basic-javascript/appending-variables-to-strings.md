---
id: 56533eb9ac21ba0edf2244ed
title: 将变量追加到字符串
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmZfa'
forumTopicId: 16656
dashedName: appending-variables-to-strings
---

# --description--

Just as we can build a string over multiple lines out of string <dfn>literals</dfn>, we can also append variables to a string using the plus equals (`+=`) operator.

例如：

```js
const anAdjective = "awesome!";
let ourStr = "freeCodeCamp is ";
ourStr += anAdjective;
```

`ourStr` 值为 `freeCodeCamp is awesome!`。

# --instructions--

将 `someAdjective` 设置为一个至少包含 3 个字符的字符串，然后使用 `+=` 运算符将它追加到 `myStr`。

# --hints--

`someAdjective` 应当为包含至少三个字符的字符串。

```js
assert(typeof someAdjective !== 'undefined' && someAdjective.length > 2);
```

你应该使用 `+=` 运算符将 `someAdjective` 追加到 `myStr`。

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
