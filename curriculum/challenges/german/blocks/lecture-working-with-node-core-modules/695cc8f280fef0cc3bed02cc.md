---
id: 695cc8f280fef0cc3bed02cc
title: Was ist das Stream-Modul und wie funktioniert es?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

Das letzte Kernmodul von Node.js, das wir uns ansehen, ist `stream`. Dieses Modul hilft Ihnen, Daten effizient zu verarbeiten, besonders wenn die Daten zu groß sind, um sie auf einmal zu laden, wie beim Lesen einer großen Textdatei oder beim Herunterladen eines langen Videos.

Anstatt zu warten, bis alle Daten gelesen oder geschrieben sind, verarbeiten Streams Datenstücke, sobald sie eintreffen – ähnlich wie Sie ein YouTube-Video schon ansehen können, bevor es vollständig geladen ist.

Es gibt vier Haupttypen von Streams in Node.js: lesbare, beschreibbare, duplex und Transformationsstreams:

- Lesbare Streams erlauben es Ihnen, Daten in Stücken zu lesen (zum Beispiel beim Lesen einer großen Datei).
- Beschreibbare Streams erlauben es Ihnen, Daten in Stücken zu schreiben (zum Beispiel beim Speichern einer Datei).
- Duplex-Streams können sowohl lesen als auch schreiben.
- Transformationsstreams sind eine spezielle Art von Duplex-Streams, die die Daten während des Durchflusses verändern oder verarbeiten können.

Sie können die benötigten Stream-Klassen importieren, indem Sie sie aus dem Stream-Modul destrukturieren:

```js
const { Readable, Writable, Transform } = require("stream");
```

Meistens müssen Sie keine eigenen Stream-Klassen erstellen. Für alltägliche Dateioperationen reichen eingebaute Methoden wie `fs.createReadStream()` und `fs.createWriteStream()` normalerweise aus.

Diese beiden Methoden nehmen den Pfad der Datei, die gelesen oder geschrieben werden soll. Das bedeutet, dass Sie in vielen Fällen auch die `fs` und `path` Module benötigen, um Streaming zu implementieren.

So können Sie Daten aus einer Datei lesen, zum Beispiel einer `input.txt` Datei:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

Dies bewirkt noch nichts, da Sie die Ereignisse des Streams nutzen müssen, um die Daten zu lesen. Zum Beispiel können Sie so auf das `data` Ereignis hören:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

Sie können auch das Datenstück in der Konsole ausgeben:

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

Da es einen Puffer zurückgibt, können Sie die `toString()` Methode aufrufen, um ihn in lesbaren Text umzuwandeln:

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

Um einen beschreibbaren Stream zu implementieren, besonders wenn Sie von einer Datei lesen und in eine andere schreiben, müssen Sie zuerst den lesbaren Stream erstellen, gefolgt vom beschreibbaren Stream:

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

Verwenden Sie dann die `.pipe()` Methode, um den lesbaren Stream mit dem beschreibbaren Stream zu verbinden. So liest Node.js automatisch Daten von der Quelle und schreibt sie Stück für Stück ins Ziel:

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

Anschließend können Sie auf die `finish` und `error` Ereignisse des beschreibbaren Streams hören, um zu wissen, wann das Streaming abgeschlossen ist oder ob ein Fehler aufgetreten ist:

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

Das `finish` Ereignis zeigt an, dass der Stream abgeschlossen ist und keine Daten mehr geschrieben werden, während das Fehler-Ereignis Ihnen hilft, Probleme während des Schreibens zu erkennen, wie Berechtigungsfehler oder fehlende Verzeichnisse.

# --questions--

## --text--

Welche der folgenden sind die vier Haupttypen von Streams?

## --answers--

Request, Response, Event und Error Streams.

### --feedback--

Denken Sie daran, wie Node.js Daten liest, schreibt und transformiert.

---

Readable, Editable, Duplex und Transform Streams.

### --feedback--

Denken Sie daran, wie Node.js Daten liest, schreibt und transformiert.

---

Data, File, HTTP und Buffer Streams.

### --feedback--

Denken Sie daran, wie Node.js Daten liest, schreibt und transformiert.

---

Readable, Writable, Duplex und Transform Streams.

## --video-solution--

4

## --text--

Was ermöglicht es Ihnen, einen benutzerdefinierten lesbaren und beschreibbaren Stream zu implementieren?

## --answers--

Das `stream` Modul mit den Klassen Readable und Writable.

---

Das `http` Modul.

### --feedback--

Denken Sie an das Modul, das Basisklassen für benutzerdefinierte Streams bereitstellt.

---

Das `fs` Modul mit `createReadStream()` und `createWriteStream()`.

### --feedback--

Denken Sie daran, wie Node.js Daten liest, schreibt und transformiert.

---

Das events-Modul.

### --feedback--

Denken Sie daran, wie Node.js Daten liest, schreibt und transformiert.

## --video-solution--

1

## --text--

Welche Ereignisse können Sie bei einem beschreibbaren Stream verwenden, um zu wissen, wann das Streaming abgeschlossen ist oder ein Fehler auftritt?

## --answers--

`end` und `close`.

### --feedback--

Denken Sie an die Ereignisse des beschreibbaren Streams, die Abschluss und Fehler signalisieren.

---

`finish` und `error`.

---

`start` und `stop`.

### --feedback--

Denken Sie an die Ereignisse des beschreibbaren Streams, die Abschluss und Fehler signalisieren.

---

`done` und `fail`.

### --feedback--

Denken Sie an die Ereignisse des beschreibbaren Streams, die Abschluss und Fehler signalisieren.

## --video-solution--

2
