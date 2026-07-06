---
id: 695cc8f280fef0cc3bed02cc
title: ما هو وحدة التدفق وكيف تعمل؟
challengeType: 19
dashedName: what-is-the-stream-module-and-how-does-it-work
---

# --description--

آخر وحدة أساسية في Node.js سنستعرضها هي `stream`. تساعدك هذه الوحدة على التعامل مع البيانات بكفاءة، خاصة عندما تكون البيانات كبيرة جدًا بحيث لا يمكن تحميلها دفعة واحدة، مثل قراءة ملف نصي كبير أو تحميل فيديو ضخم.

بدلًا من الانتظار لقراءة أو كتابة كل البيانات قبل البدء، تعالج التدفقات أجزاء من البيانات أثناء وصولها، مثلما يمكنك بدء مشاهدة فيديو على YouTube قبل أن ينتهي تحميله بالكامل.

هناك أربعة أنواع رئيسية من التدفقات في Node.js: قابلة للقراءة، قابلة للكتابة، ثنائية الاتجاه، وتحويلية:

- التدفقات القابلة للقراءة تتيح لك قراءة البيانات على أجزاء (مثل قراءة ملف كبير).
- التدفقات القابلة للكتابة تتيح لك كتابة البيانات على أجزاء (مثل حفظ ملف).
- التدفقات الثنائية الاتجاه يمكنها القراءة والكتابة معًا.
- التدفقات التحويلية هي نوع خاص من التدفقات الثنائية الاتجاه التي يمكنها تعديل أو معالجة البيانات أثناء تدفقها.

يمكنك استيراد أصناف التدفق التي تحتاجها عن طريق التفكيك من وحدة التدفق:

```js
const { Readable, Writable, Transform } = require("stream");
```

في معظم الأحيان، لا تحتاج إلى إنشاء أصناف تدفق مخصصة بنفسك. للعمليات اليومية على الملفات، الطرق المدمجة مثل `fs.createReadStream()` و`fs.createWriteStream()` عادةً ما تكون كافية.

هاتان الطريقتان تأخذان مسار الملف للقراءة أو الكتابة. هذا يعني أنك تحتاج أيضًا إلى وحدتي `fs` و`path` لتنفيذ التدفق في كثير من الحالات.

إليك كيف يمكنك قراءة البيانات من ملف، مثل ملف `input.txt`:

```js
const fs = require("fs");
const path = require("path");

const inputFilePath = path.join(__dirname, "input.txt");

// Readable stream
const readInputFileStream = fs.createReadStream(inputFilePath);
console.log(readInputFileStream);
```

هذا لن يفعل شيئًا بعد، إذ تحتاج إلى استخدام الأحداث من التدفق لقراءة البيانات. على سبيل المثال، يمكنك الاستماع إلى حدث `data` بهذه الطريقة:

```js
readInputFileStream.on("data", (chunk) => {
  console.log(`Received ${chunk.length} bytes of data`);
}); // Received 622 bytes of data
```

يمكنك أيضًا تسجيل جزء البيانات في وحدة التحكم:

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

بما أنه يعيد مخزنًا مؤقتًا، يمكنك استدعاء الطريقة `toString()` لتحويله إلى نص قابل للقراءة:

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

لتنفيذ تدفق قابل للكتابة، خصوصًا عندما تقرأ من ملف وتكتب إلى آخر، تحتاج إلى إنشاء تدفق القراءة أولًا، ثم تدفق الكتابة:

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

بعد ذلك، استخدم الطريقة `.pipe()` لربط التدفق القابل للقراءة بالتدفق القابل للكتابة. هذا يسمح لـ Node.js بقراءة البيانات تلقائيًا من المصدر وكتابتها إلى الوجهة، جزءًا جزءًا:

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

ثم يمكنك الاستماع إلى أحداث `finish` و`error` على التدفق القابل للكتابة لتعرف متى يكتمل التدفق أو إذا حدث خطأ:

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

حدث `finish` يخبرك أن التدفق اكتمل ولا توجد بيانات أخرى للكتابة، بينما يساعدك حدث الخطأ على التقاط المشاكل التي قد تحدث أثناء الكتابة، مثل مشاكل الأذونات أو فقدان المجلدات.

# --questions--

## --text--

ما هي الأنواع الأربعة الرئيسية للتدفقات؟

## --answers--

تدفقات الطلب، الاستجابة، الحدث، والخطأ.

### --feedback--

فكر في كيفية تعامل Node.js مع القراءة والكتابة وتحويل البيانات.

---

تدفقات قابلة للقراءة، قابلة للتحرير، ثنائية الاتجاه، وتحويلية.

### --feedback--

فكر في كيفية تعامل Node.js مع القراءة والكتابة وتحويل البيانات.

---

تدفقات البيانات، الملف، HTTP، والمخزن المؤقت.

### --feedback--

فكر في كيفية تعامل Node.js مع القراءة والكتابة وتحويل البيانات.

---

تدفقات قابلة للقراءة، قابلة للكتابة، ثنائية الاتجاه، وتحويلية.

## --video-solution--

4

## --text--

ما الذي يتيح لك تنفيذ تدفق قابل للقراءة والكتابة مخصص؟

## --answers--

وحدة `stream` باستخدام أصناف Readable وWritable.

---

وحدة `http`.

### --feedback--

فكر في الوحدة التي توفر أصنافًا أساسية لإنشاء تدفقات مخصصة.

---

وحدة `fs` باستخدام `createReadStream()` و`createWriteStream()`.

### --feedback--

فكر في كيفية تعامل Node.js مع القراءة والكتابة وتحويل البيانات.

---

وحدة الأحداث.

### --feedback--

فكر في كيفية تعامل Node.js مع القراءة والكتابة وتحويل البيانات.

## --video-solution--

1

## --text--

ما الأحداث التي يمكنك استخدامها على تدفق قابل للكتابة لمعرفة متى يكتمل التدفق أو يحدث خطأ؟

## --answers--

`end` و `close`.

### --feedback--

فكر في أحداث التدفق القابل للكتابة التي تشير إلى الاكتمال والفشل.

---

`finish` و `error`.

---

`start` و `stop`.

### --feedback--

فكر في أحداث التدفق القابل للكتابة التي تشير إلى الاكتمال والفشل.

---

`done` و `fail`.

### --feedback--

فكر في أحداث التدفق القابل للكتابة التي تشير إلى الاكتمال والفشل.

## --video-solution--

2
