---
id: 695cc8f280fef0cc3bed02cc
title: 스트림 모듈이란 무엇이며 어떻게 작동하나요?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

마지막으로 살펴볼 Node.js 핵심 모듈은 `stream`입니다. 이 모듈은 특히 데이터가 너무 커서 한 번에 모두 불러올 수 없을 때, 예를 들어 큰 텍스트 파일을 읽거나 큰 동영상을 다운로드할 때 데이터를 효율적으로 처리하는 데 도움을 줍니다.

모든 데이터를 읽거나 쓰기 전에 기다리는 대신, 스트림은 데이터가 도착하는 대로 조각 단위로 처리합니다. 이는 전체 동영상이 다 로드되기 전에 유튜브 영상을 바로 볼 수 있는 것과 비슷합니다.

Node.js에는 네 가지 주요 스트림 유형이 있습니다: readable, writable, duplex, transform입니다.

- Readable 스트림은 데이터를 조각 단위로 읽을 수 있게 해줍니다(예: 큰 파일 읽기).
- Writable 스트림은 데이터를 조각 단위로 쓸 수 있게 해줍니다(예: 파일 저장).
- Duplex 스트림은 읽기와 쓰기를 모두 할 수 있습니다.
- Transform 스트림은 데이터를 흐르는 동안 변경하거나 처리할 수 있는 특별한 duplex 스트림입니다.

필요한 스트림 클래스를 stream 모듈에서 구조 분해하여 가져올 수 있습니다:

```js
const { Readable, Writable, Transform } = require("stream");
```

대부분의 경우, 직접 커스텀 스트림 클래스를 만들 필요가 없습니다. 일상적인 파일 작업에는 `fs.createReadStream()`과 `fs.createWriteStream()` 같은 내장 메서드만으로 충분한 경우가 많습니다.

이 두 메서드는 읽거나 쓸 파일의 경로를 받습니다. 따라서 많은 경우 스트리밍을 구현하려면 `fs`과 `path` 모듈도 필요합니다.

예를 들어 `input.txt` 파일에서 데이터를 읽는 방법은 다음과 같습니다:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

아직 아무 일도 일어나지 않습니다. 스트림의 이벤트를 사용해 데이터를 읽어야 하기 때문입니다. 예를 들어 `data` 이벤트를 이렇게 들을 수 있습니다:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

데이터 조각을 콘솔에 기록할 수도 있습니다:

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

버퍼를 반환하므로 `toString()` 메서드를 호출해 읽을 수 있는 텍스트로 변환할 수 있습니다:

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

쓰기 가능한 스트림을 구현하려면, 특히 한 파일에서 읽고 다른 파일에 쓸 때는 먼저 읽기 스트림을 만들고 그다음 쓰기 스트림을 만들어야 합니다:

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

다음으로 `.pipe()` 메서드를 사용해 읽기 스트림을 쓰기 스트림에 연결하세요. 이렇게 하면 Node.js가 자동으로 소스에서 데이터를 읽어 대상에 조각 단위로 씁니다:

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

그다음 쓰기 스트림에서 `finish`와 `error` 이벤트를 들어 스트리밍이 완료되었는지 또는 문제가 발생했는지 알 수 있습니다:

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

`finish` 이벤트는 스트림이 완료되어 더 이상 쓸 데이터가 없음을 알려주고, error 이벤트는 권한 문제나 디렉터리 누락 같은 쓰기 중 발생할 수 있는 문제를 잡아줍니다.

# --questions--

## --text--

다음 중 네 가지 주요 스트림 유형은 무엇인가요?

## --answers--

Request, Response, Event, and Error streams.

### --feedback--

Node.js가 데이터를 읽고 쓰며 변환하는 방식을 생각해 보세요.

---

Readable, Editable, Duplex, and Transform streams.

### --feedback--

Node.js가 데이터를 읽고 쓰며 변환하는 방식을 생각해 보세요.

---

Data, File, HTTP, and Buffer streams.

### --feedback--

Node.js가 데이터를 읽고 쓰며 변환하는 방식을 생각해 보세요.

---

Readable, Writable, Duplex, and Transform streams.

## --video-solution--

4

## --text--

커스텀 readable 및 writable 스트림을 구현하려면 무엇이 필요할까요?

## --answers--

Readable 및 Writable 클래스를 사용하는 `stream` 모듈.

---

`http` 모듈.

### --feedback--

커스텀 스트림을 만들기 위한 기본 클래스를 제공하는 모듈을 생각해 보세요.

---

`fs` 모듈에서 `createReadStream()`와 `createWriteStream()`을 사용하는 방법.

### --feedback--

Node.js가 데이터를 읽고 쓰며 변환하는 방식을 생각해 보세요.

---

events 모듈.

### --feedback--

Node.js가 데이터를 읽고 쓰며 변환하는 방식을 생각해 보세요.

## --video-solution--

1

## --text--

스트리밍이 완료되거나 오류가 발생했을 때 알 수 있는 writable 스트림 이벤트는 무엇인가요?

## --answers--

`end`와 `close`.

### --feedback--

완료와 실패를 알리는 writable 스트림 이벤트를 생각해 보세요.

---

`finish`와 `error`.

---

`start`와 `stop`.

### --feedback--

완료와 실패를 알리는 writable 스트림 이벤트를 생각해 보세요.

---

`done`와 `fail`.

### --feedback--

완료와 실패를 알리는 writable 스트림 이벤트를 생각해 보세요.

## --video-solution--

2
