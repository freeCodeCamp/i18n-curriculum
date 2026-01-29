---
id: 695cc8f280fef0cc3bed02cc
title: ¿Qué es el módulo Stream y cómo funciona?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

El último módulo central de Node.js que veremos es `stream`. Este módulo te ayuda a manejar datos de manera eficiente, especialmente cuando los datos son demasiado grandes para cargarlos de una vez, como al leer un archivo de texto grande o descargar un video pesado.

En lugar de esperar a leer o escribir todos los datos antes de hacer algo, los streams procesan fragmentos de datos a medida que llegan, similar a cómo puedes empezar a ver un video de YouTube antes de que termine de cargarse por completo.

Hay cuatro tipos principales de streams en Node.js: readable, writable, duplex y transform:

- Los streams legibles te permiten leer datos en fragmentos (por ejemplo, leyendo un archivo grande).
- Los streams escribibles te permiten escribir datos en fragmentos (por ejemplo, guardar un archivo).
- Los streams dúplex pueden tanto leer como escribir datos.
- Los transform streams son un tipo especial de duplex stream que pueden cambiar o procesar los datos a medida que fluyen.

Puedes importar las clases de stream que necesitas desestructurándolas del módulo stream:

```js
const { Readable, Writable, Transform } = require("stream");
```

La mayoría de las veces, no necesitas crear clases de flujo personalizadas tú mismo. Para operaciones diarias con archivos, los métodos integrados como `fs.createReadStream()` y `fs.createWriteStream()` suelen ser todo lo que necesitas.

Estos dos métodos toman la ruta del archivo para leer o escribir. Esto significa que también necesitas los módulos `fs` y `path` para implementar streaming en muchas ocasiones.

Aquí tienes cómo puedes leer datos de un archivo, por ejemplo un archivo `input.txt`:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

Esto no hará nada todavía, ya que necesitas usar los eventos del stream para leer los datos. Por ejemplo, puedes escuchar el evento `data` de esta manera:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

También puedes registrar el fragmento de datos en la consola:

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

Como devuelve un buffer, puedes llamar al método `toString()` para convertirlo en texto legible:

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

Para implementar un stream escribible, particularmente cuando estás leyendo de un archivo y escribiendo en otro, necesitas crear primero el read stream, seguido del write stream:

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

A continuación, usa el método `.pipe()` para conectar el stream legible con el stream escribible. Esto permite que Node.js lea automáticamente los datos de la fuente y los escriba en el destino, fragmento por fragmento:

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

Luego puedes escuchar los eventos `finish` y `error` en el stream escribible para saber cuándo la transmisión está completa o si algo sale mal:

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

El evento `finish` te indica que el stream está completo y no hay más datos para escribir, mientras que el evento error te ayuda a detectar problemas que podrían ocurrir durante la escritura, como problemas de permisos o directorios faltantes.

# --questions--

## --text--

¿Cuáles de estos son los cuatro tipos principales de streams?

## --answers--

Flujos de Request, Response, Event y Error.

### --feedback--

Piensa en cómo Node.js maneja la lectura, escritura y transformación de datos.

---

Streams legibles, editables, dúplex y de transformación.

### --feedback--

Piensa en cómo Node.js maneja la lectura, escritura y transformación de datos.

---

Streams de Data, File, HTTP y Buffer.

### --feedback--

Piensa en cómo Node.js maneja la lectura, escritura y transformación de datos.

---

Streams Readable, Writable, Duplex y Transform.

## --video-solution--

4

## --text--

¿Qué te permite implementar un stream personalizado de lectura y escritura?

## --answers--

El módulo `stream` usando las clases Readable y Writable.

---

El módulo `http`.

### --feedback--

Piensa en el módulo que proporciona clases base para crear streams personalizados.

---

El módulo `fs` usando `createReadStream()` y `createWriteStream()`.

### --feedback--

Piensa en cómo Node.js maneja la lectura, escritura y transformación de datos.

---

El módulo de eventos.

### --feedback--

Piensa en cómo Node.js maneja la lectura, escritura y transformación de datos.

## --video-solution--

1

## --text--

¿Qué eventos puedes usar en un stream escribible para saber cuándo se completa la transmisión o ocurre un error?

## --answers--

`end` y `close`.

### --feedback--

Piensa en los eventos del stream escribible que señalan la finalización y el fallo.

---

`finish` y `error`.

---

`start` y `stop`.

### --feedback--

Piensa en los eventos del stream escribible que señalan la finalización y el fallo.

---

`done` y `fail`.

### --feedback--

Piensa en los eventos del stream escribible que señalan la finalización y el fallo.

## --video-solution--

2
