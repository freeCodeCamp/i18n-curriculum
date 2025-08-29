---
id: 587d7b8d367417b2b2512b59
title: 导入一个默认的导出
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

这个语法有一处特别的地方， 被导入的 `add` 值没有被花括号（`{}`）所包围。 `add` 只是一个变量的名字，对应 `math_functions.js` 文件的任何默认导出值。 在导入默认导出时，可以使用任何名字。

# --instructions--

在下面的代码中，导入同一目录中 `math_functions.js` 文件的默认导出。 导入变量的名字为 `subtract`。

# --hints--

应从 `math_functions.js` 中正确导入 `subtract`。

```js
assert(__helpers.removeJSComments(code).match(/import\s+subtract\s+from\s+('|")\.\/math_functions\.js\1/g));
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

subtract(7,4);
```

# --solutions--

```js
import subtract from "./math_functions.js";

subtract(7,4);
```
