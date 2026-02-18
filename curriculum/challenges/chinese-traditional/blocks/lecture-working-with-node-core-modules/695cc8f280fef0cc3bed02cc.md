---
id: 695cc8f280fef0cc3bed02cc
title: 什麼是 `Stream` 模組以及它如何運作？
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

我們將要看的最後一個核心 Node.js 模組是 `stream`。這個模組幫助你高效地控制代碼，特別是在資料過大無法一次載入時，例如讀取大型程式本文檔或下載大型影片。

串流會在資料塊抵達時即時處理，而不是等到讀取或寫入所有資料後才開始，就像你可以在整個 YouTube 影片載入完成前就開始觀看一樣。

Node.js 中有四種主要的資料流型別：可讀、可寫、雙工和轉換：

- Readable 資料流讓你以區塊方式讀取資料（例如，讀取大型檔案）。
- 可寫入的 `streams` 讓你以區塊方式寫入 `data`（例如，儲存一個 `file`）。
- 雙工資料流可以同時讀取和寫入資料。
- Transform streams 是一種特殊的雙工資料流，可以在資料流經時改變或處理資料。

你可以從 `stream` 模組中解構匯入你需要的資料流類別：

```js
const { Readable, Writable, Transform } = require("stream");
```

大多數時候，你不需要自己創建訂製的資料流類別。對於日常的檔案操作，內建的 `fs.createReadStream()` 和 `fs.createWriteStream()` 方法通常已經足夠。

這兩個方法會接收要讀取或寫入的檔案路徑。這表示你在許多情況下也需要 `fs` 和 `path` 模組來實作串流。

以下是你如何從一個檔案（例如 `input.txt` 檔案）讀取資料的方法：

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

這還不會有任何作用，因為你需要使用來自資料流的事件來讀取資料。 例如，你可以用這種方式監聽 `data` 事件：

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

你也可以將這段 `data` 記錄到主控台：

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

由於它傳回一個緩衝區，你可以呼叫 `toString()` 方法將它轉換成可讀取的文字：

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

要實作可寫入的資料流，特別是當你從一個檔案讀取並寫入到另一個檔案時，你需要先創建讀取資料流，接著創建寫入資料流：

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

接著，使用 `.pipe()` 方法將可讀取的資料流連接到可寫入的資料流。這讓 Node.js 自動從原始碼讀取資料並逐塊寫入目的地：

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

然後你可以監聽可寫資料流上的 `finish` 和 `error` 事件，以知道何時串流完成或發生錯誤：

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

`finish` 事件告訴你資料流已完成且沒有更多資料可寫入，而錯誤事件則幫助你捕捉寫入過程中可能發生的問題，例如權限問題或目錄遺失。

# --questions--

## --text--

這些哪四種是主要的資料流型別？

## --answers--

Request、Response、事件 和 Error 資料流。

### --feedback--

思考 Node.js 如何控制代碼讀取、寫入和轉換資料。

---

可讀、可編輯、雙工和轉換資料流。

### --feedback--

思考 Node.js 如何控制代碼讀取、寫入和轉換資料。

---

資料、檔案、HTTP 和 Buffer 資料流。

### --feedback--

思考 Node.js 如何控制代碼讀取、寫入和轉換資料。

---

Readable、Writable、Duplex 和 Transform 資料流。

## --video-solution--

4

## --text--

什麼讓你能實作訂製的可讀和可寫資料流？

## --answers--

使用 Readable 和 Writable 類別的 `stream` 模組。

---

`http` 模組。

### --feedback--

思考提供用於建立訂製資料流基礎類別的模組。

---

使用 `createReadStream()` 和 `createWriteStream()` 的 `fs` 模組。

### --feedback--

思考 Node.js 如何控制代碼讀取、寫入和轉換資料。

---

`events` 模組。

### --feedback--

思考 Node.js 如何控制代碼讀取、寫入和轉換資料。

## --video-solution--

1

## --text--

你可以在可寫入的 `stream` 上使用哪些 `event` 來知道何時串流完成或發生錯誤？

## --answers--

`end` 和 `close`。

### --feedback--

思考可寫入資料流的事件，這些事件用來表示完成和失敗的信號。

---

`finish` 和 `error`。

---

`start` 和 `stop`。

### --feedback--

思考可寫入資料流的事件，這些事件用來表示完成和失敗的信號。

---

`done` 和 `fail`。

### --feedback--

思考可寫入資料流的事件，這些事件用來表示完成和失敗的信號。

## --video-solution--

2
