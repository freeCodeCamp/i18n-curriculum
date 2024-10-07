---
id: 587d7789367417b2b2512aa4
title: تحسين إمكانية الوصول إلى محتوى الصوت باستخدام عنصر الصوت
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

تدعم علامة `audio` سمة `controls`  . و هذا يظهر عناصر التحكم الافتراضية لدي المتصفحك كزر التشغيل و الإيقاف و غيرها, و يدعم وظائف لوحة المفاتيح. هذه سمة منطقية , يعنى أنها لا تحتج إلى قيمة , فوجودها داخل العلامة كفيل لتهيئتها .

إليك مثال:

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**ملاحظة:** المحتوى متعدد الوسائط Multimedia يحتوي عادة على مكونات بصرية وسمعية على حد سواء. تحتاج إلى ترجمات متزامنة و ملف نصي حتى يتمكن المستخدمون الذين يعانون من مشاكل بصرية و/أو سمعية من الوصول إليها. وعموما، فإن مطور الويب ليس مسؤولا عن إنشاء التسميات التوضيحية أو ملف نصي، ولكنه يحتاج إلى معرفة كيفية إدراجها.

# --instructions--

حان الوقت لأخذ استراحة من Camper Cat و مقابلة الزميل camper Zersiax (@zersiax), بطل ال accessibility و مستخدم لتقنية قارئ الشاشة (screen reader). لسماع مقطعاً من قارئه للشاشة فى أثناء العمل , أضف عنصر `audio` بعد عنصر `p` . ضَمّن سمة `controls` . Then place a `source` element inside the `audio` tags with the `src` attribute set to `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` and `type` attribute set to `"audio/mpeg"`.

**ملاحظة:** قد يبدو مقطع الصوت سريعا ويصعب فهمه، ولكن هذه سرعة عادية لمستخدمي قارئ الشاشة (screen reader).

# --hints--

يجب أن يحتوي الكود الخاص بك على tag واحد فقط من نوع `audio`.

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

لا بد ان يحتوي عنصر ال `audio` علي وسم إغلاق (closing tag).

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

وسم ال `audio` يجب ان يحتوي علي ال attribute من نوع `controls`.

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

يجب أن يحتوي الكود الخاص بك على وسم (tag) واحد فقط من نوع `source`.

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

يجب أن يكون الوسم (tag) `source` داخل وسم (tag) ال`audio`.

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

قيمة ال `src` للوسم `source` يجب أن تتطابق مع الرابط الموجود في التعليمات بالضبط.

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

يجب أن يحتوي الكود الخاص بك علي attribute من نوع `type` في وسم ال `source` و تعين قيمته ل audio/mpeg.

```js
assert.equal(document.querySelector('source')?.getAttribute('type'), 'audio/mpeg');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>



  </main>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>
    <audio controls>
      <source src="https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3" type="audio/mpeg"/>
    </audio>
  </main>
</body>
```
