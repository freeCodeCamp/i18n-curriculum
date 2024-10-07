---
id: 5cddbfd622f1a59093ec611d
title: 创建一个模块脚本
challengeType: 6
forumTopicId: 301198
dashedName: create-a-module-script
---

# --description--

JavaScript started with a small role to play on an otherwise mostly HTML web. Today, it’s huge, and some websites are built almost entirely with JavaScript. In order to make JavaScript more modular, clean, and maintainable; ES6 introduced a way to easily share code among JavaScript files. This involves exporting parts of a file for use in one or more other files, and importing the parts you need, where you need them. In order to take advantage of this functionality, you need to create a script in your HTML document with a `type` of `module`. Here’s an example:

```html
<script type="module" src="filename.js"></script>
```

使用了 `module` 类型的脚本可以使用 `import` 和 `export` 特性（接下来的挑战会介绍）。

# --instructions--

给 HTML 文档添加 `module` 类型的脚本，指定源文件为 `index.js`。

# --hints--

应该创建一个 `script` 标签。

```js
assert(__helpers.removeJSComments(code).match(/<\s*script[^>]*>\s*<\/\s*script\s*>/g));
```

`script` 标签应该有一个值为 `module` 的 `type` 属性。

```js
assert(
  __helpers.removeJSComments(code).match(
    /<\s*script\s+[^t]*type\s*=\s*('|")module\1[^>]*>\s*<\/\s*script\s*>/g
  )
);
```

`script` 标签的 `src` 属性应该为 `index.js`。

```js
assert(
  __helpers.removeJSComments(code).match(
    /<\s*script\s+[^s]*src\s*=\s*('|")index\.js\1[^>]*>\s*<\/\s*script\s*>/g
  )
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <!-- Only change code below this line -->

    <!-- Only change code above this line -->
  </body>
</html>
```

# --solutions--

```html
<html>
  <body>
    <script type="module" src="index.js"></script>
  </body>
</html>
```
