---
id: 695cc8f280fef0cc3bed02cc
title: ストリームモジュールとは何か、そしてどのように動作するのか？
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

最後に見ていくNode.jsのコアモジュールは`stream`です。このモジュールは、特に大きなテキストファイルを読む場合や大容量の動画をダウンロードする場合のように、一度にすべてのデータを読み込むには大きすぎるデータを効率的に扱うのに役立ちます。

すべてのデータを読み書きし終わるのを待つのではなく、ストリームはデータのチャンクを受け取るたびに処理します。これは、YouTubeの動画が完全に読み込まれる前に視聴を始められるのと似ています。

Node.jsには4つの主なストリームタイプがあります：読み取り可能、書き込み可能、デュプレックス、そしてトランスフォームです。

- 読み取り可能ストリームはデータをチャンク単位で読み取れます（例えば、大きなファイルを読む場合）。
- 書き込み可能ストリームはデータをチャンク単位で書き込めます（例えば、ファイルを保存する場合）。
- デュプレックスストリームは読み取りと書き込みの両方ができます。
- トランスフォームストリームはデュプレックスストリームの特別な種類で、データが流れる途中で変換や処理ができます。

必要なストリームクラスは、ストリームモジュールから分割代入でインポートできます。

```js
const { Readable, Writable, Transform } = require("stream");
```

ほとんどの場合、カスタムのストリームクラスを自分で作成する必要はありません。日常的なファイル操作には、`fs.createReadStream()`や`fs.createWriteStream()`のような組み込みメソッドで十分です。

これら2つのメソッドは読み書きするファイルのパスを受け取ります。つまり、多くの場合ストリーミングを実装するには`fs`と`path`のモジュールも必要です。

例えば、`input.txt`ファイルからデータを読み取る方法は次の通りです。

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

これはまだ何も動作しません。ストリームのイベントを使ってデータを読み取る必要があります。例えば、`data`イベントを次のように監視できます。

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

データのチャンクをコンソールにログ出力することもできます。

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

これはバッファを返すので、`toString()`メソッドを呼び出して読みやすいテキストに変換できます。

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

書き込み可能ストリームを実装するには、特に1つのファイルから読み取り別のファイルに書き込む場合、まず読み取りストリームを作成し、その後に書き込みストリームを作成します。

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

次に、`.pipe()`メソッドを使って読み取りストリームを書き込みストリームに接続します。これにより、Node.jsは自動的にソースからデータを読み取り、チャンク単位で宛先に書き込みます。

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

そして、書き込みストリームで`finish`と`error`イベントを監視して、ストリーミングが完了したか、何か問題が起きたかを知ることができます。

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

`finish`イベントはストリームが完了し、これ以上書き込むデータがないことを知らせます。一方、エラーイベントは書き込み中に起こる可能性のある権限の問題やディレクトリの欠如などのトラブルを検出します。

# --questions--

## --text--

これらのうち、4つの主なストリームタイプはどれですか？

## --answers--

Request、Response、Event、Errorストリーム。

### --feedback--

Node.jsがデータの読み取り、書き込み、変換をどのように扱うかを考えてみてください。

---

Readable、Editable、Duplex、Transformストリーム。

### --feedback--

Node.jsがデータの読み取り、書き込み、変換をどのように扱うかを考えてみてください。

---

Data、File、HTTP、Bufferストリーム。

### --feedback--

Node.jsがデータの読み取り、書き込み、変換をどのように扱うかを考えてみてください。

---

Readable、Writable、Duplex、Transformストリーム。

## --video-solution--

4

## --text--

カスタムの読み取り可能および書き込み可能ストリームを実装するには何を使いますか？

## --answers--

ReadableとWritableクラスを使う`stream`モジュール。

---

`http`モジュール。

### --feedback--

カスタムストリームを作成するための基本クラスを提供するモジュールを考えてみてください。

---

`fs`モジュールを使い`createReadStream()`と`createWriteStream()`。

### --feedback--

Node.jsがデータの読み取り、書き込み、変換をどのように扱うかを考えてみてください。

---

eventsモジュール。

### --feedback--

Node.jsがデータの読み取り、書き込み、変換をどのように扱うかを考えてみてください。

## --video-solution--

1

## --text--

ストリーミングが完了したりエラーが発生したりしたことを知るために、書き込み可能ストリームで使えるイベントは何ですか？

## --answers--

`end`と`close`。

### --feedback--

完了と失敗を知らせる書き込み可能ストリームのイベントを考えてみてください。

---

`finish`と`error`。

---

`start`と`stop`。

### --feedback--

完了と失敗を知らせる書き込み可能ストリームのイベントを考えてみてください。

---

`done`と`fail`。

### --feedback--

完了と失敗を知らせる書き込み可能ストリームのイベントを考えてみてください。

## --video-solution--

2
