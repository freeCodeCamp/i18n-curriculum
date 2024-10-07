---
id: 587d8250367417b2b2512c5e
title: 了解堆栈的工作原理
challengeType: 1
forumTopicId: 301705
dashedName: learn-how-a-stack-works
---

# --description--

You are probably familiar with stack of books on your table. You have likely used the undo feature of a text editor. You are also probably used to hitting the back button on your phone to go back to the previous view in your app.

你知道他们有什么共同点吗？ 它们都以一种方式存储数据，以便你可以向后追踪。

这堆书中最上面的一本书是最后放在那里的。 如果你把那本书从你的书堆的顶部移开，你会暴露出在最后一本书之前放在那里的书，以此类推。

如果你仔细想想，在上述所有的例子中，你得到的是 <dfn>后进先出</dfn> 类型的服务。 我们将尝试用我们的代码来模拟这一点。

该数据存储方案称为<dfn>堆栈</dfn> 。 特别是，我们必须实现将 JavaScript 对象推送到堆栈顶部的 `push()` 方法和删除当前位于堆栈顶部的JavaScript对象的 `pop()` 方法。

# --instructions--

在这里，我们有一堆表示为数组的家庭作业：`"BIO12"` 位于底部，`"PSY44"` 位于堆栈顶部。

修改给定的数组，并使用上面提到的 JavaScript 方法把它当作一个 `stack`。 从堆栈中删除顶部元素 `"PSY44"`。 然后添加 `"CS50"` 作为堆栈顶部的新元素。

# --hints--

`homeworkStack` 应该只包含4个元素。

```js
assert(homeworkStack.length === 4);
```

`homeworkStack` 的最后一个元素应该是 `"CS50"`。

```js
assert(homeworkStack[3] === 'CS50');
```

`homeworkStack` 不应包含 `"PSY44"`。

```js
assert(homeworkStack.indexOf('PSY44') === -1);
```

`homeworkStack` 的初始声明不应更改。

```js
assert(
  __helpers.removeJSComments(code).match(/=/g).length === 1 &&
    /homeworkStack\s*=\s*\["BIO12"\s*,\s*"HIS80"\s*,\s*"MAT122"\s*,\s*"PSY44"\]/.test(
      __helpers.removeJSComments(code)
    )
);
```

# --seed--

## --seed-contents--

```js
var homeworkStack = ["BIO12","HIS80","MAT122","PSY44"];
// Only change code below this line
```

# --solutions--

```js
// solution required
```
