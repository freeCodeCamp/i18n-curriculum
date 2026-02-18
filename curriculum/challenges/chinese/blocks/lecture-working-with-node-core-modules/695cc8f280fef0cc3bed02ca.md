---
id: 695cc8f280fef0cc3bed02ca
title: 什么是 `path` 模块及其工作原理？
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Node.js 的 `path` 模块让你可以处理文件和目录路径。它提供了多个有用的方法来处理和转换目录，包括在不同平台和操作系统之间连接、规范化和解析目录。

要使用 `path` 模块，你可以这样导入它：

```js
const path = require("path");
```

让我们来看一下 `path` 模块提供的一些方法以及它们的工作原理。

首先，你应该了解 Node.js 全局的变量 `__filename` 和 `__dirname`，也称为“common JS”变量。你不需要 `path` 模块来访问它们，这就是它们被称为全局变量的原因。

`__filename` 是当前文件的绝对路径，`__dirname` 是包含当前文件的目录的绝对路径。

例如，我目前正在处理一个 `script.js` 文件。以下是这两个方法的返回值：

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

你还应该了解相对路径和绝对路径。

相对路径是基于你当前工作目录指向一个文件或文件夹。例如，`./assets/src/text-files`。

另一方面，绝对路径从系统根目录给出文件或文件夹的完整地址，例如 `/Users/johndoe/projects/app/assets/src/text-files`。

`basename()` 方法显示文件的最后一部分，即文件名：

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` 返回路径的目录名：

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` 返回当前文件的扩展名：

```js
console.log(path.extname(__filename)); // .js
```

你也可以指定不同的文件来返回扩展名：

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

`join()` 方法将你传入的所有路径段连接成一个干净、规范化的路径。 

如果你想合并不同文件夹中相关的文件，以便一起处理，这可能会很有用：

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows 使用反斜线分隔目录，所以结果将是 `src\assets\text-files`。

此外，`join()` 方法会自动修正错误的斜线并删除多余的斜线：

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

`resolve()` 方法将一系列路径段解析为绝对路径。它从你当前的工作目录开始，最终生成指向设备上确切位置的完整路径：

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

`join()` 和 `resolve()` 的区别在于 `join()` 创建相对路径，而 `resolve()` 返回绝对路径。

最后，还有 `parse()` 和 `format()` 方法。

`parse()` 接受一个目录或文件，并返回一个包含其各部分细分的对象，例如系统根目录、其目录、扩展名和文件名：

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

另一方面，`format()` 从包含目录、名称和扩展名的对象构建路径：

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

`path.dirname()` 和 `path.extname()` 在 Node.js 中有什么区别？

## --answers--

`dirname()` 会移除扩展名，而 `extname()` 会移除目录。

### --feedback--

关注哪个处理目录，哪个处理文件扩展名。

---

`dirname()` 返回完整的文件路径，而 `extname()` 返回目录名。

### --feedback--

关注哪个处理目录，哪个处理文件扩展名。

---

`dirname()` 返回路径的目录名，而 `extname()` 返回文件的扩展名。

---

`dirname()` 和 `extname()` 都返回相同的值，但格式不同。

### --feedback--

关注哪个处理目录，哪个处理文件扩展名。

## --video-solution--

3

## --text--

哪个 `path` 方法从包含目录、名称和扩展名属性的对象构建完整的文件路径？

## --answers--

`path.parse()`

### --feedback--

考虑 `parse()` 的反义操作是什么。

---

`path.format()`

---

`path.resolve()`

### --feedback--

考虑 `parse()` 的反义操作是什么。

---

`path.join()`

### --feedback--

考虑 `parse()` 的反义操作是什么。

## --video-solution--

2

## --text--

Node.js 全局的变量 `__filename` 和 `__dirname` 提供访问什么？

## --answers--

当前文件及其包含目录的绝对路径。

---

当前模块及其依赖项的名称。

### --feedback--

考虑哪些变量可以自动为你提供完整的文件和文件夹路径，而无需使用 `path` 模块。

---

Node.js 安装目录的相对路径。

### --feedback--

考虑哪些变量可以自动为你提供完整的文件和文件夹路径，而无需使用 `path` 模块。

---

正在运行的网络服务器的 URL 及其主机名。

### --feedback--

考虑哪些变量可以自动为你提供完整的文件和文件夹路径，而无需使用 `path` 模块。

## --video-solution--

1
