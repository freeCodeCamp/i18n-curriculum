---
id: 695cc8f280fef0cc3bed02cc
title: 什么是 `Stream` 模块及其工作原理？
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

我们将要看的最后一个核心 Node.js 模块是 `stream`。这个模块帮助你高效地处理数据，特别是在数据太大无法一次性装载时，比如读取一个大的文本文件或下载一个大型视频。

流不是等待读取或写入所有数据后才开始操作，而是随着数据块的到达即时处理，就像你可以在整个 `video` 装载完成前开始观看 YouTube `video` 一样。

Node.js 中有四种主要的流类型：可读取流、可写入流、双工流和转换流：

- 可读流让你以块的形式读取数据（例如，读取一个大文件）。
- 可写流允许你以块的形式写入数据（例如，保存文件）。
- 双工流既可以读取也可以写入数据。
- 转换流是一种特殊的双工流，可以在数据流经时更改或处理数据。

你可以通过从 `stream` 模块解构导入你需要的流类：

```js
const { Readable, Writable, Transform } = require("stream");
```

大多数情况下，你不需要自己创建自定义流类。对于日常文件操作，内置方法如 `fs.createReadStream()` 和 `fs.createWriteStream()` 通常就足够了。

这两个方法都需要读取或写入的文件路径。这意味着你在许多情况下还需要 `fs` 和 `path` 模块来实现流操作。

下面是你如何从一个文件（例如 `input.txt` 文件）读取数据的方法：

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

这还不会有任何效果，因为你需要使用来自流的事件来读取数据。例如，你可以通过这种方式监听 `data` 事件：

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

你也可以将数据块记录到控制台：

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
  console.log("Received data:", chunk);
});

/*
Received 622 bytes of data
Received data: <Buffer 4c 6f 72 65 6d 20 69 70 73 75 6d 
20 64 6f 6c 6f 72 20 73 69 74 20 61 6d 65 74 20 63 6f 6e
73 65 63 74 65 74 75 72 20 61 64 69 70 69 73 69 63 69 6e 67 ... 572 more bytes>
*/
```

由于它返回一个缓冲区，你可以调用 `toString()` 方法将其转换为可读文本：

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);

readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
  console.log("Received data:", chunk.toString());
});
/*
Received 622 bytes of data
Received data: Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus sint facilis
aliquid. Odio voluptatibus veniam saepe consectetur alias modi non fuga in,
tempore explicabo numquam maiores quod inventore quibusdam! Nam cumque repellat
facere voluptatem nulla aliquam atque ratione numquam ea aperiam porro ducimus
animi tempora laboriosam, labore quae voluptatum? Nam, hic quas dolore
repudiandae placeat eius! Voluptate reiciendis totam hic expedita tenetur. Nisi
ipsa ad facere optio sint debitis. Magni nostrum sit ipsa saepe suscipit facilis
eaque doloribus assumenda, minima fuga tempore, porro, debitis rem harum in
*/
```

要实现一个可写流，特别是当你从一个文件读取并写入另一个文件时，你需要先创建读取流，然后创建写入流：

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");
const outputFilePath = path.join(__dirname, "output.txt");

// Create the read stream first
const readInputFileStream = fs.createReadStream(inputFilePath);

// Create the write stream
const writeOutputFileStream = fs.createWriteStream(outputFilePath);
```

接下来，使用 `.pipe()` 方法将可读流连接到可写流。这使得 Node.js 能够自动从源头读取数据并将其逐块写入目标。

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");
const outputFilePath = path.join(__dirname, "output.txt");

// Create the read stream first
const readInputFileStream = fs.createReadStream(inputFilePath);

// Create the write stream
const writeOutputFileStream = fs.createWriteStream(outputFilePath);

// Pipe the read stream to the write stream
readInputFileStream.pipe(writeOutputFileStream);
```

然后你可以监听可写流上的 `finish` 和 `error` 事件，以便知道流何时完成或是否出现问题：

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");
const outputFilePath = path.join(__dirname, "output.txt");

// Create the read stream first
const readInputFileStream = fs.createReadStream(inputFilePath);

// Create the write stream
const writeOutputFileStream = fs.createWriteStream(outputFilePath);

readInputFileStream.pipe(writeOutputFileStream);

writeOutputFileStream.on("finish", () => {
  console.log("All data has been written to the file");
});

writeOutputFileStream.on("error", (err) => {
  console.error("Error writing to file:", err);
});
```

`finish` 事件告诉你流已完成且没有更多数据可写，而 `error` 事件帮助你捕获写入过程中可能发生的问题，例如权限问题或缺少目录。

# --questions--

## --text--

以下哪些是四种主要的 `stream` 类型？

## --answers--

请求、响应、事件和误差流。

### --feedback--

考虑 Node.js 如何处理读取、写入和转换数据。

---

可读取、可编辑、双工和转换流。

### --feedback--

考虑 Node.js 如何处理读取、写入和转换数据。

---

数据、文件、超文本传输协议和缓冲区流。

### --feedback--

考虑 Node.js 如何处理读取、写入和转换数据。

---

可读取、可写入、双工和转换流。

## --video-solution--

4

## --text--

什么让你实现一个自定义的可读写流？

## --answers--

使用 Readable 和 Writable 类的 `stream` 模块。

---

`http` 模块。

### --feedback--

考虑提供用于创建自定义流的基类的模块。

---

使用 `createReadStream()` 和 `createWriteStream()` 的 `fs` 模块。

### --feedback--

考虑 Node.js 如何处理读取、写入和转换数据。

---

事件模块。

### --feedback--

考虑 Node.js 如何处理读取、写入和转换数据。

## --video-solution--

1

## --text--

你可以在可写流上使用哪些事件来知道流何时完成或发生误差？

## --answers--

`end` 和 `close`。

### --feedback--

考虑表示完成和失败的可写流事件。

---

`finish` 和 `error`。

---

`start` 和 `stop`。

### --feedback--

考虑表示完成和失败的可写流事件。

---

`done` 和 `fail`。

### --feedback--

考虑表示完成和失败的可写流事件。

## --video-solution--

2
