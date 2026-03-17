---
id: 695cc8f280fef0cc3bed02cc
title: Cos’è il modulo stream e come funziona?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

L’ultimo modulo core di Node.js che vedremo è `stream`. Questo modulo ti aiuta a gestire i dati in modo efficiente, soprattutto quando i dati sono troppo grandi per essere caricati tutti insieme, come leggere un file di testo molto grande o scaricare un video pesante.

Invece di aspettare di leggere o scrivere tutti i dati prima di fare qualcosa, gli stream elaborano i dati a pezzi man mano che arrivano, proprio come puoi iniziare a guardare un video su YouTube prima che il video sia completamente caricato.

Ci sono quattro tipi principali di stream in Node.js: leggibili, scrivibili, duplex e transform:

- Gli stream leggibili ti permettono di leggere i dati a pezzi (per esempio, leggere un file grande).
- Gli stream scrivibili ti permettono di scrivere i dati a pezzi (per esempio, salvare un file).
- Gli stream duplex possono sia leggere che scrivere dati.
- Gli stream transform sono un tipo speciale di stream duplex che può modificare o elaborare i dati mentre scorrono.

Puoi importare le classi degli stream di cui hai bisogno destrutturandole dal modulo stream:

```js
const { Readable, Writable, Transform } = require("stream");
```

La maggior parte delle volte non serve creare classi di stream personalizzate da zero. Per le operazioni quotidiane sui file, i metodi integrati come `fs.createReadStream()` e `fs.createWriteStream()` sono di solito tutto ciò che ti serve.

Questi due metodi prendono il percorso del file da leggere o scrivere. Questo significa che spesso ti servono anche i moduli `fs` e `path` per implementare lo streaming.

Ecco come puoi leggere dati da un file, per esempio un file `input.txt`:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

Questo non farà ancora nulla, perché devi usare gli eventi dello stream per leggere i dati. Per esempio, puoi ascoltare l’evento `data` in questo modo:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

Puoi anche stampare il pezzo di dati sulla console:

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

Dato che restituisce un buffer, puoi chiamare il metodo `toString()` per convertirlo in testo leggibile:

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

Per implementare uno stream scrivibile, in particolare quando leggi da un file e scrivi in un altro, devi prima creare lo stream di lettura, poi quello di scrittura:

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

Poi usa il metodo `.pipe()` per collegare lo stream leggibile a quello scrivibile. Questo permette a Node.js di leggere automaticamente i dati dalla sorgente e scriverli nella destinazione, pezzo per pezzo:

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

Dopodiché puoi ascoltare gli eventi `finish` e `error` sullo stream scrivibile per sapere quando lo streaming è completo o se qualcosa va storto:

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

L’evento `finish` ti dice che lo stream è completo e non ci sono più dati da scrivere, mentre l’evento error ti aiuta a intercettare problemi che possono succedere durante la scrittura, come problemi di permessi o cartelle mancanti.

# --questions--

## --text--

Quali sono i quattro tipi principali di stream?

## --answers--

Stream Request, Response, Event e Error.

### --feedback--

Pensa a come Node.js gestisce la lettura, la scrittura e la trasformazione dei dati.

---

Stream Readable, Editable, Duplex e Transform.

### --feedback--

Pensa a come Node.js gestisce la lettura, la scrittura e la trasformazione dei dati.

---

Stream Data, File, HTTP e Buffer.

### --feedback--

Pensa a come Node.js gestisce la lettura, la scrittura e la trasformazione dei dati.

---

Stream Readable, Writable, Duplex e Transform.

## --video-solution--

4

## --text--

Cosa ti permette di implementare uno stream leggibile e scrivibile personalizzato?

## --answers--

Il modulo `stream` usando le classi Readable e Writable.

---

Il modulo `http`.

### --feedback--

Pensa al modulo che fornisce le classi base per creare stream personalizzati.

---

Il modulo `fs` usando `createReadStream()` e `createWriteStream()`.

### --feedback--

Pensa a come Node.js gestisce la lettura, la scrittura e la trasformazione dei dati.

---

Il modulo events.

### --feedback--

Pensa a come Node.js gestisce la lettura, la scrittura e la trasformazione dei dati.

## --video-solution--

1

## --text--

Quali eventi puoi usare su uno stream scrivibile per sapere quando lo streaming è completato o si verifica un errore?

## --answers--

`end` e `close`.

### --feedback--

Pensa agli eventi dello stream scrivibile che segnalano il completamento e il fallimento.

---

`finish` e `error`.

---

`start` e `stop`.

### --feedback--

Pensa agli eventi dello stream scrivibile che segnalano il completamento e il fallimento.

---

`done` e `fail`.

### --feedback--

Pensa agli eventi dello stream scrivibile che segnalano il completamento e il fallimento.

## --video-solution--

2
