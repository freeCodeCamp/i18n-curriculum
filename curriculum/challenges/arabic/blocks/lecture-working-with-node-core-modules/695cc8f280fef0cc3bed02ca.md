---
id: 695cc8f280fef0cc3bed02ca
title: ما هي وحدة Path وكيف تعمل؟
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

تتيح لك وحدة `path` في Node.js العمل مع مسارات الملفات والمجلدات. توفر عدة طرق مفيدة للتعامل مع المجلدات وتحويلها، بما في ذلك الدمج، والتطبيع، وحل المسارات عبر منصات وأنظمة تشغيل مختلفة.

لاستخدام وحدة `path`، يمكنك استيرادها بهذه الطريقة:

```js
const path = require("path");
```

لنلقِ نظرة على بعض الطرق التي توفرها وحدة `path` وكيف تعمل.

أولًا، يجب أن تعرف المتغيرات العامة في Node.js وهي `__filename` و`__dirname`، المعروفة أيضًا بمتغيرات "common JS". لا تحتاج إلى وحدة `path` للوصول إليها، ولهذا تُسمى متغيرات عامة.

`__filename` هو المسار المطلق للملف الحالي و`__dirname` هو المسار المطلق للمجلد الذي يحتوي الملف الحالي.

على سبيل المثال، لدي ملف `script.js` أعمل عليه حاليًا. هذا ما تُرجعه الطريقتان:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

يجب أن تكون أيضًا على دراية بالمسارات النسبية والمطلقة.

المسار النسبي يشير إلى ملف أو مجلد بناءً على مجلد العمل الحالي. على سبيل المثال، `./assets/src/text-files`.

أما المسار المطلق، فيعطي العنوان الكامل لملف أو مجلد من جذر النظام، مثل `/Users/johndoe/projects/app/assets/src/text-files.`

تعرض طريقة `basename()` الجزء الأخير من الملف، أي اسم الملف:

```js
console.log(path.basename(__filename)); // script.js
```

ترجع `dirname()` اسم المجلد لمسار معين:

```js
console.log(path.dirname(__dirname)); // node-path
```

ترجع `extname()` امتداد الملف الحالي:

```js
console.log(path.extname(__filename)); // .js
```

يمكنك أيضًا تحديد ملف مختلف لإرجاع امتداده:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

تأخذ طريقة `join()` كل مقاطع المسار التي تمررها وتدمجها في مسار واحد نظيف ومطبع.

قد يكون هذا مفيدًا إذا أردت دمج ملفات مرتبطة في مجلدات مختلفة لتعمل معها معًا:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

يستخدم ويندوز الشرطة المائلة العكسية لفصل المجلدات، لذا ستكون النتيجة `src\assets\text-files`.

بالإضافة إلى ذلك، تصلح طريقة `join()` الشرطات الخاطئة تلقائيًا وتزيل الزائدة منها:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

تحول طريقة `resolve()` متتالية من مقاطع المسار إلى مسار مطلق. تبدأ من مجلد العمل الحالي وتنتج مسارًا كاملاً يشير إلى الموقع الدقيق على الجهاز:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

الفرق بين `join()` و`resolve()` هو أن `join()` ينشئ مسارًا نسبيًا، بينما `resolve()` يرجع مسارًا مطلقًا.

أخيرًا، هناك طريقتا `parse()` و`format()`.

تأخذ `parse()` مجلدًا أو ملفًا وتُرجع كائنًا يحتوي على تفصيل أجزائه، مثل جذر النظام، المجلد، الامتداد، واسم الملف:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

أما `format()`، فتبني مسارًا من كائن يحتوي على المجلد، الاسم، والامتداد:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

ما الفرق بين `path.dirname()` و`path.extname()` في Node.js؟

## --answers--

تزيل `dirname()` امتداد الملف، بينما تزيل `extname()` اسم المجلد.

### --feedback--

ركز على أيهما يتعامل مع المجلدات وأيهما يتعامل مع امتدادات الملفات.

---

ترجع `dirname()` المسار الكامل للملف، بينما ترجع `extname()` اسم المجلد.

### --feedback--

ركز على أيهما يتعامل مع المجلدات وأيهما يتعامل مع امتدادات الملفات.

---

ترجع `dirname()` اسم المجلد لمسار، بينما ترجع `extname()` امتداد الملف.

---

ترجع كل من `dirname()` و`extname()` نفس القيمة لكن بصيغ مختلفة.

### --feedback--

ركز على أيهما يتعامل مع المجلدات وأيهما يتعامل مع امتدادات الملفات.

## --video-solution--

3

## --text--

أي طريقة من طرق `path` تبني مسار ملف كامل من كائن يحتوي على خصائص المجلد، الاسم، والامتداد؟

## --answers--

`path.parse()`

### --feedback--

فكر في ما هو عكس `parse()`.

---

`path.format()`

---

`path.resolve()`

### --feedback--

فكر في ما هو عكس `parse()`.

---

`path.join()`

### --feedback--

فكر في ما هو عكس `parse()`.

## --video-solution--

2

## --text--

ما الذي توفره المتغيرات العامة في Node.js `__filename` و`__dirname` من وصول؟

## --answers--

المسار المطلق للملف الحالي والمجلد الذي يحتويه.

---

اسم الوحدة الحالية واعتمادياتها.

### --feedback--

فكر في المتغيرات التي تعطيك تلقائيًا مسارات كاملة للملفات والمجلدات دون استخدام وحدة path.

---

المسار النسبي إلى مجلد تثبيت Node.js.

### --feedback--

فكر في المتغيرات التي تعطيك تلقائيًا مسارات كاملة للملفات والمجلدات دون استخدام وحدة path.

---

عنوان URL لخادم الويب الجاري واسم المضيف الخاص به.

### --feedback--

فكر في المتغيرات التي تعطيك تلقائيًا مسارات كاملة للملفات والمجلدات دون استخدام وحدة path.

## --video-solution--

1
