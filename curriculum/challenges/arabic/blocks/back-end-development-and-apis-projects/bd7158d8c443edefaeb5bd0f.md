---
id: bd7158d8c443edefaeb5bd0f
title: خدمة مصغرة لبيانات وصفية للملف
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

ابنِ تطبيق جافاسكريبت متكامل يشبه وظيفيًا هذا: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. يتطلب العمل على هذا المشروع كتابة شفرتك باستخدام إحدى الطرق التالية:

- استنسخ <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">مستودع GitHub هذا</a> وأكمل مشروعك محليًا.
- استخدم منشئ مواقع من اختيارك لإكمال المشروع. تأكد من دمج جميع الملفات من مستودع GitHub الخاص بنا.

# --instructions--

**تلميح:** يمكنك استخدام حزمة npm `multer` لمعالجة رفع الملفات.

# --hints--

يجب أن تقدم مشروعك الخاص، وليس عنوان URL المثال.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

يمكنك إرسال نموذج يتضمن رفع ملف.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

حقل إدخال الملف في النموذج يحتوي على الخاصية `name` مضبوطة على `upfile`.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

عند إرسال ملف، تستلم في استجابة JSON اسم الملف `name`، نوعه `type`، وحجمه `size` بوحدة البايت.

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```

