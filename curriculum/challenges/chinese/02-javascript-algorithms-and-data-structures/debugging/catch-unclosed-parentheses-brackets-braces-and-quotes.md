---
id: 587d7b84367417b2b2512b36
title: '捕获未闭合的括号、方括号、大括号和引号'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

避免这种错误的一种方法是，一次性输入完这些符号，然后将光标移回它们之间继续编写。 好在现在大部分编辑器都会帮你自动补全。

# --instructions--

修复代码中的两个符号配对错误。

# --hints--

应该修复数组缺少的部分。

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

应该修复 `.reduce()` 方法缺少的部分。 控制台应该输出 `Sum of array values is: 6`。

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
