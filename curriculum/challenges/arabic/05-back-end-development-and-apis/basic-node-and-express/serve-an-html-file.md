---
id: 587d7fb0367417b2b2512bef
title: خدمة ملف HTML
challengeType: 2
forumTopicId: 301516
dashedName: serve-an-html-file
---

# --description--

You can respond to requests with a file using the `res.sendFile(path)` method. You can put it inside the `app.get('/', ...)` route handler. Behind the scenes, this method will set the appropriate headers to instruct your browser on how to handle the file you want to send, according to its type. Then it will read and send the file. This method needs an absolute file path. We recommend you to use the Node global variable `__dirname` to calculate the path like this:

```js
absolutePath = __dirname + '/relativePath/file.ext'
```

# --instructions--

أرسل ملف `/views/index.html` كرد على طلبات GET في المسار `/`. إذا عرضت التطبيق المباشر الخاص بك، يجب أن ترى عنوان HTML كبير (ونموذج سوف نستخدمه لاحقاً…)، يبدو دون أي تصميم معين.

**ملاحظة:** يمكنك تعديل حل التحدي السابق أو إنشاء حل جديد. إذا قمت بإنشاء حل جديد، تفهم أن Express تقيّم المسارات من الأعلى إلى الأسفل، وتقوم بتنفيذ المعالج للمطابقة الأولى. يجب عليك إضافة علامات التعليق حول الحل السابق، أو فأن الخادم سيستمر في الرد بنص مقطعي.

# --hints--

يجب أن يُقدّم تطبيقك ملف views/index.html

```js
(getUserInput) =>
  $.get(getUserInput('url')).then(
    (data) => {
      assert.match(
        data,
        /<h1>.*<\/h1>/,
        'Your app does not serve the expected HTML'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

