---
id: 587d7b87367417b2b2512b43
title: 使用箭头函数编写简洁的匿名函数
challengeType: 1
forumTopicId: 301211
dashedName: use-arrow-functions-to-write-concise-anonymous-functions
---

# --description--

In JavaScript, we often don't need to name our functions, especially when passing a function as an argument to another function. Instead, we create inline functions. We don't need to name these functions because we do not reuse them anywhere else.

这种情况下，我们通常会使用以下语法：

```js
const myFunc = function() {
  const myVar = "value";
  return myVar;
}
```

ES6 提供了其他写匿名函数的方式的语法糖。 你可以使用**箭头函数**：

```js
const myFunc = () => {
  const myVar = "value";
  return myVar;
}
```

当不需要函数体，只返回一个值的时候，箭头函数允许你省略 `return` 关键字和外面的大括号。 这样就可以将一个简单的函数简化成一个单行语句。

```js
const myFunc = () => "value";
```

这段代码默认会返回字符串 `value`。

# --instructions--

使用箭头函数的语法重写赋给 `magic` 变量的函数，使其返回一个新的 Date() `new Date()`。 同时不要用 `var` 关键字来定义任何变量。

# --hints--

应替换 `var` 关键词。

```js
assert.notMatch(code, /var/g)
```

`magic` 应该为一个常量（使用 `const`）。

```js
assert.match(code, /const\s+magic/g)
```

`magic` 应该是一个函数 `function`。

```js
assert(typeof magic === 'function');
```

`magic()` 应该返回正确的日期。

```js
assert(magic().setHours(0, 0, 0, 0) === new Date().setHours(0, 0, 0, 0));
```

不能使用 `function` 关键字。

```js
assert.notMatch(code, /function/g)
```

# --seed--

## --seed-contents--

```js
var magic = function() {
  return new Date();
};
```

# --solutions--

```js
const magic = () => {
  return new Date();
};
```
