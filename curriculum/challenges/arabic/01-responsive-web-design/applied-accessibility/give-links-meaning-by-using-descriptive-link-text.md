---
id: 587d778f367417b2b2512aae
title: إعطاء الروابط معنى باستخدام النص الوصفي الخاص بالرابط
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437DcV'
forumTopicId: 301013
dashedName: give-links-meaning-by-using-descriptive-link-text
---

# --description--

Screen reader users have various options for what type of content their device reads. These options include skipping to (or over) landmark elements, jumping to the main content, or getting a page summary from the headings. Another option is to only hear the links available on a page.

قارئ الشاشة يفعل ذلك بقراءة نص الرابط، أو ما بين علامات الرابط (`a`). وجود قائمة من روابط "click here" أو "read more" ليس مفيداً . بدلاً من ذلك، استخدم نصًا موجزًا ولكن وصفيًا داخل العلامات ` a ` لتوفير المزيد من المعنى لهؤلاء المستخدمين.

# --instructions--

نص الرابط الذي يستخدمه Camper Cat ليس وصفياً جداً بدون السياق المحيط. انقل علامات الرابط (`a`) بحيث تلتف حول النص `information about batteries` بدلاً من `Click here`.

# --hints--

يجب أن تحرك علامات الرابط `a` من حول `Click here` لتلتف حول الكلمات `information about batteries` .

```js
assert.match(document.querySelector('a')?.textContent, /^(information about batteries)$/g);
```

يجب أن يحتوي عنصر `a` على سمة `href` بقيمة سلسلة فارغة `""`.

```js
assert.isEmpty(document.querySelector('a')?.getAttribute('href'));
```

يجب أن يحتوي عنصر `a` الخاص بك على علامة إغلاق.

```js
assert.isTrue(code.match(/<\/a>/g)?.length === code.match(/<a href=(''|"")>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. <a href="">Click here</a> for information about batteries</p>
  </article>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. Click here for <a href="">information about batteries</a></p>
  </article>
</body>
```
