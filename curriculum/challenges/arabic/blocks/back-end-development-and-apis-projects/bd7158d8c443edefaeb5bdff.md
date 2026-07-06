---
id: bd7158d8c443edefaeb5bdff
title: خدمة مصغرة لتحليل القسم العلوي للطلب
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

ابنِ تطبيق جافاسكريبت متكامل يشبه وظيفيًا هذا: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. يتطلب العمل على هذا المشروع كتابة شفرتك باستخدام إحدى الطرق التالية:

- استنسخ <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">مستودع GitHub هذا</a> وأكمل مشروعك محليًا.
- استخدم منشئ مواقع من اختيارك لإكمال المشروع. تأكد من دمج جميع الملفات من مستودع GitHub الخاص بنا.

# --hints--

يجب أن تقدم مشروعك الخاص، وليس عنوان URL المثال.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

يجب أن يُرجع الطلب إلى `/api/whoami` كائن JSON يحتوي على عنوان IP الخاص بك في المفتاح `ipaddress`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

يجب أن يُرجع الطلب إلى `/api/whoami` كائن JSON يحتوي على لغتك المفضلة في المفتاح `language`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

يجب أن يُرجع الطلب إلى `/api/whoami` كائن JSON يحتوي على برنامجك في المفتاح `software`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```

