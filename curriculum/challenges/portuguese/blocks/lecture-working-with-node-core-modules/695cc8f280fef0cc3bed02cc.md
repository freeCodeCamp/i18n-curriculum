---
id: 695cc8f280fef0cc3bed02cc
title: O que é o módulo Stream e como ele funciona?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

O último módulo principal do Node.js que vamos analisar é o `stream`. Este módulo ajuda você a lidar com dados de forma eficiente, especialmente quando os dados são grandes demais para serem carregados de uma vez, como ao ler um arquivo de texto grande ou baixar um vídeo grande.

Ao invés de esperar para ler ou escrever todos os dados antes de fazer qualquer coisa, streams processam pedaços de dados conforme eles chegam, semelhante a como você pode começar a assistir a um vídeo no YouTube antes que o vídeo inteiro termine de carregar.

Existem quatro tipos principais de streams no Node.js: readable, writable, duplex e transform:

- Streams legíveis permitem que você leia dados em pedaços (por exemplo, lendo um arquivo grande).
- Streams graváveis permitem que você escreva dados em pedaços (por exemplo, salvando um arquivo).
- Streams duplex podem tanto ler quanto escrever dados.
- Streams de transformação são um tipo especial de stream duplex que podem alterar ou processar os dados enquanto eles fluem.

Você pode importar as classes de stream que precisar desestruturando-as do módulo stream:

```js
const { Readable, Writable, Transform } = require("stream");
```

Na maioria das vezes, você não precisa criar classes de stream personalizadas. Para operações diárias com arquivos, métodos integrados como `fs.createReadStream()` e `fs.createWriteStream()` geralmente são tudo o que você precisa.

Esses dois métodos recebem o caminho do arquivo para ler ou escrever. Isso significa que você também precisa dos módulos `fs` e `path` para implementar streaming em muitas ocasiões.

Aqui está como você pode ler dados de um arquivo, por exemplo um arquivo `input.txt`:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

Isso ainda não fará nada, pois você precisa usar os eventos do stream para ler os dados. Por exemplo, você pode escutar o evento `data` desta forma:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

Você também pode registrar o pedaço de dados no console:

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

Como ele retorna um buffer, você pode chamar o método `toString()` para convertê-lo em texto legível:

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

Para implementar um stream gravável, especialmente quando você está lendo de um arquivo e escrevendo em outro, você precisa criar primeiro o read stream, seguido pelo write stream:

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

Em seguida, use o método `.pipe()` para conectar o stream legível ao stream gravável. Isso permite que o Node.js leia automaticamente os dados da fonte e os escreva no destino, pedaço por pedaço:

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

Então você pode escutar os eventos `finish` e `error` na stream gravável para saber quando a transmissão estiver completa ou se algo der errado:

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

O evento `finish` informa que o stream está completo e não há mais dados para escrever, enquanto o evento error ajuda você a capturar problemas que podem acontecer durante a escrita, como problemas de permissões ou diretórios ausentes.

# --questions--

## --text--

Quais destes são os quatro principais tipos de streams?

## --answers--

Streams de Request, Response, Event e Error.

### --feedback--

Pense em como o Node.js lida com a leitura, escrita e transformação de dados.

---

Streams Readable, Editable, Duplex e Transform.

### --feedback--

Pense em como o Node.js lida com a leitura, escrita e transformação de dados.

---

Streams de Data, File, HTTP e Buffer.

### --feedback--

Pense em como o Node.js lida com a leitura, escrita e transformação de dados.

---

Streams Readable, Writable, Duplex e Transform.

## --video-solution--

4

## --text--

O que permite implementar uma stream customizada legível e gravável?

## --answers--

O módulo `stream` usando as classes Readable e Writable.

---

O módulo `http`.

### --feedback--

Pense no módulo que fornece classes base para criar streams personalizados.

---

O módulo `fs` usando `createReadStream()` e `createWriteStream()`.

### --feedback--

Pense em como o Node.js lida com a leitura, escrita e transformação de dados.

---

O módulo de eventos.

### --feedback--

Pense em como o Node.js lida com a leitura, escrita e transformação de dados.

## --video-solution--

1

## --text--

Quais eventos você pode usar em um stream gravável para saber quando a transmissão é concluída ou ocorre um erro?

## --answers--

`end` e `close`.

### --feedback--

Pense nos eventos do writable stream que sinalizam conclusão e falha.

---

`finish` e `error`.

---

`start` e `stop`.

### --feedback--

Pense nos eventos do stream gravável que sinalizam conclusão e falha.

---

`done` e `fail`.

### --feedback--

Pense nos eventos do stream gravável que sinalizam conclusão e falha.

## --video-solution--

2
