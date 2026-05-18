---
id: 695cc8f280fef0cc3bed02cc
title: Moduli ya stream ni nini na inafanya kazi vipi?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

Moduli ya mwisho ya msingi ya Node.js tutakayochunguza ni `stream`. Moduli hii inakusaidia kushughulikia data kwa ufanisi, hasa wakati data ni kubwa mno kusoma kwa mara moja, kama vile kusoma faili kubwa la maandishi au kupakua video kubwa.

Badala ya kusubiri kusoma au kuandika data yote kabla ya kufanya kitu chochote, streams huchakata vipande vya data vinavyowasili, kama vile unavyoweza kuanza kutazama video ya YouTube kabla video nzima haijamalizika kupakia.

Kuna aina nne kuu za streams katika Node.js: readable, writable, duplex, na transform:

- Readable streams hukuruhusu kusoma data kwa vipande (kwa mfano, kusoma faili kubwa).
- Writable streams hukuruhusu kuandika data kwa vipande (kwa mfano, kuhifadhi faili).
- Duplex streams zinaweza kusoma na kuandika data.
- Transform streams ni aina maalum ya duplex stream inayoweza kubadilisha au kuchakata data inavyopita.

Unaweza import madarasa ya stream unayohitaji kwa kuyafumbua kutoka moduli ya stream:

```js
const { Readable, Writable, Transform } = require("stream");
```

Mara nyingi, huna haja ya kuunda madarasa ya stream maalum mwenyewe. Kwa shughuli za kawaida za faili, njia zilizojengwa ndani kama `fs.createReadStream()` na `fs.createWriteStream()` kawaida ndizo unazohitaji.

Njia hizi mbili zinachukua njia ya faili kusoma au kuandika. Hii inamaanisha pia unahitaji moduli za `fs` na `path` kutekeleza streaming mara nyingi.

Hapa ni jinsi unavyoweza kusoma data kutoka kwa faili, sema faili la `input.txt`:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

Hii bado haitafanya chochote, kwa sababu unahitaji kutumia matukio kutoka kwa stream kusoma data. Kwa mfano, unaweza kusikiliza tukio la `data` kwa njia hii:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

Pia unaweza kuandika kipande cha data kwenye konsoli:

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

Kwa kuwa inarudisha kihifadhi cha muda, unaweza kuita njia ya `toString()` kuibadilisha kuwa maandishi yanayosomwa:

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

Ili kutekeleza writable stream, hasa unapokuwa unasoma kutoka faili moja na kuandika kwenye nyingine, unahitaji kuunda kwanza read stream, kisha write stream:

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

Kisha, tumia njia ya `.pipe()` kuunganisha readable stream na writable stream. Hii inaruhusu Node.js kusoma data kutoka chanzo na kuandika kwenye mahali pa mwisho, kipande kwa kipande:

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

Baadaye unaweza kusikiliza matukio ya `finish` na `error` kwenye writable stream ili kujua wakati streaming imekamilika au kama kuna tatizo:

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

Tukio la `finish` linakuambia kuwa stream imekamilika na hakuna data zaidi ya kuandika, wakati tukio la error linakusaidia kugundua matatizo yanayoweza kutokea wakati wa kuandika, kama vile matatizo ya ruhusa au saraka zilizokosekana.

# --questions--

## --text--

Ni zipi kati ya hizi ni aina nne kuu za streams?

## --answers--

Streams za Request, Response, Event, na Error.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia kusoma, kuandika, na kubadilisha data.

---

Streams za Readable, Editable, Duplex, na Transform.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia kusoma, kuandika, na kubadilisha data.

---

Streams za Data, File, HTTP, na Buffer.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia kusoma, kuandika, na kubadilisha data.

---

Streams za Readable, Writable, Duplex, na Transform.

## --video-solution--

4

## --text--

Nini hukuruhusu kutekeleza stream maalum ya readable na writable?

## --answers--

Moduli ya `stream` kwa kutumia madarasa ya Readable na Writable.

---

Moduli ya `http`.

### --feedback--

Fikiria moduli inayotoa madarasa ya msingi kwa kuunda streams maalum.

---

Moduli ya `fs` kwa kutumia `createReadStream()` na `createWriteStream()`.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia kusoma, kuandika, na kubadilisha data.

---

Moduli ya matukio.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia kusoma, kuandika, na kubadilisha data.

## --video-solution--

1

## --text--

Ni matukio gani unaweza kutumia kwenye writable stream kujua wakati streaming imekamilika au tatizo limetokea?

## --answers--

`end` na `close`.

### --feedback--

Fikiria matukio ya writable stream yanayoashiria kukamilika na kushindwa.

---

`finish` na `error`.

---

`start` na `stop`.

### --feedback--

Fikiria matukio ya writable stream yanayoashiria kukamilika na kushindwa.

---

`done` na `fail`.

### --feedback--

Fikiria matukio ya writable stream yanayoashiria kukamilika na kushindwa.

## --video-solution--

2
