---
id: 695cc8f280fef0cc3bed02cc
title: Що таке модуль stream і як він працює?
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

## Що таке модуль stream?

Останній основний модуль Node.js, який ми розглянемо, — це `stream`. Цей модуль допомагає ефективно обробляти дані, особливо коли дані занадто великі, щоб завантажити їх одразу, наприклад, читання великого текстового файлу або скачування великого відео.

Замість того, щоб чекати, поки всі дані будуть прочитані або записані, потоки обробляють частини даних по мірі їх надходження, подібно до того, як ви можете почати дивитися відео на YouTube, поки воно ще завантажується.

## Типи потоків

У Node.js є чотири основні типи потоків: readable, writable, duplex і transform:

- Readable потоки дозволяють читати дані частинами (наприклад, читання великого файлу).
- Writable потоки дозволяють записувати дані частинами (наприклад, збереження файлу).
- Duplex потоки можуть і читати, і записувати дані.
- Transform потоки — це особливий тип duplex потоку, який може змінювати або обробляти дані під час їх проходження.

Ви можете імпортувати потрібні класи потоків, деструктуризуючи їх із модуля stream:

```js
const { Readable, Writable, Transform } = require("stream");
```

## Використання вбудованих файлових потоків

Зазвичай вам не потрібно створювати кастомні класи потоків самостійно. Для повсякденних операцій з файлами вбудованих методів, таких як `fs.createReadStream()` і `fs.createWriteStream()`, зазвичай достатньо.

Ці два методи приймають шлях до файлу для читання або запису. Це означає, що вам також потрібні модулі `fs` і `path` для реалізації потокової обробки у багатьох випадках.

## Читання даних за допомогою readable-потоку

Ось як можна прочитати дані з файлу, наприклад, `input.txt` файлу:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

Це поки що нічого не робить, оскільки потрібно використовувати події з потоку, щоб читати дані. Наприклад, можна слухати подію `data` таким чином:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

Також можна виводити частину даних у консоль:

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

## Конвертація буферів у текст

Оскільки повертається буфер, можна викликати метод `toString()`, щоб перетворити його у читабельний текст:

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

## Запис даних за допомогою writable-потоку

Щоб реалізувати writable потік, особливо коли ви читаєте з одного файлу і записуєте в інший, потрібно спочатку створити readable потік, а потім writable потік:

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

## З’єднання потоків за допомогою `pipe()`

Далі використайте метод `.pipe()`, щоб з’єднати readable потік із writable потоком. Це дозволяє Node.js автоматично читати дані з джерела і записувати їх у призначення частинами:

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

## Обробка подій `finish` та `error`

Потім можна слухати події `finish` і `error` на writable потоці, щоб знати, коли потокова передача завершена або якщо сталася помилка:

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

Подія `finish` повідомляє, що потік завершено і більше немає даних для запису, а подія error допомагає відловити проблеми, які можуть виникнути під час запису, наприклад, проблеми з правами доступу або відсутність директорій.

# --questions--

## --text--

Які з цих є чотирма основними типами потоків?

## --answers--

Потоки Request, Response, Event і Error.

### --feedback--

Подумайте, як Node.js обробляє читання, запис і трансформацію даних.

---

Потоки Readable, Editable, Duplex і Transform.

### --feedback--

Подумайте, як Node.js обробляє читання, запис і трансформацію даних.

---

Потоки Data, File, HTTP і Buffer.

### --feedback--

Подумайте, як Node.js обробляє читання, запис і трансформацію даних.

---

Потоки Readable, Writable, Duplex і Transform.

## --video-solution--

4

## --text--

Що дозволяє реалізувати кастомний readable і writable потік?

## --answers--

Модуль `stream` із використанням класів Readable і Writable.

---

Модуль `http`.

### --feedback--

Подумайте про модуль, який надає базові класи для створення кастомних потоків.

---

Модуль `fs` із використанням `createReadStream()` і `createWriteStream()`.

### --feedback--

Подумайте, як Node.js обробляє читання, запис і трансформацію даних.

---

Модуль подій.

### --feedback--

Подумайте, як Node.js обробляє читання, запис і трансформацію даних.

## --video-solution--

1

## --text--

Які події можна використовувати на writable потоці, щоб знати, коли потокова передача завершена або сталася помилка?

## --answers--

`end` і `close`.

### --feedback--

Подумайте про події writable потоку, які сигналізують про завершення та помилки.

---

`finish` і `error`.

---

`start` і `stop`.

### --feedback--

Подумайте про події writable потоку, які сигналізують про завершення та помилки.

---

`done` і `fail`.

### --feedback--

Подумайте про події writable потоку, які сигналізують про завершення та помилки.

## --video-solution--

2
