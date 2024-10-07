---
id: 587d7fb0367417b2b2512bf0
title: خدمة الأصول الثابتة
challengeType: 2
forumTopicId: 301518
dashedName: serve-static-assets
---

# --description--

An HTML server usually has one or more directories that are accessible by the user. You can place there the static assets needed by your application (stylesheets, scripts, images).

في Express، يمكنك إنشاء هذه الوظيفة باستخدام middleware `express.static(path)`، حيث `path` هو المسار المطلق (absolute path) للمجلد الذي يحتوي على الأصول.

إذا كنت لا تعرف ما هو middleware... لا تقلق، سوف نناقش بالتفصيل لاحقاً. في الأساس، middleware هو التطبيقات الوسطى أو الوظائف التي تعترض route handlers، مضيفة نوعا من المعلومات. يحتاج برنامج وسيط (middleware) إلى أن يتم تحميله باستخدام الطريقة `app.use(path, middlewareFunction)`. المعطى الأول `path` اختياري. إذا لم تعطيه، سيتم تفعيل middleware لجميع الطلبات.

# --instructions--

اوصل (أو mount) البرنامج الوسيطي (middleware) باستخدام `express.static()` كوسيط إلى المسار `/public` مع `app.use()`. The absolute path to the assets folder is `__dirname + /public`.

الآن يجب أن يكون تطبيقك قادراً على تقديم stylesheet CSS. لاحظ أن مِلَفّ `/public/style.css` مشار إليه في مِلَفّ `/views/index.html` في متداول مشروع (boilerplate). تبدو ألآن صفحتك الأولى أفضل قليلاً!

# --hints--

Your app should serve asset files from the `/public` directory to the `/public` path

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/public/style.css').then(
    (data) => {
      assert.match(
        data,
        /body\s*\{[^\}]*\}/,
        'Your app does not serve static assets'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Your app should not serve files from any other folders except from `/public` directory

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/server.js').then(
    (data) => {
       assert.equal(
        data?.status + '',
        404 + '',
        'Your app must serve files only from "public" directory'
      );
    },
    (xhr) => {
      assert.equal(
        xhr?.status + '',
        404 + '',
        'Your app must serve files only from "public" directory'
      );
    }
  );
```

