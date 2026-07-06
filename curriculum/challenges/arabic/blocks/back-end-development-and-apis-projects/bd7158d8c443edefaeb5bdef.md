---
id: bd7158d8c443edefaeb5bdef
title: خدمة الطابع الزمني الدقيقة
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

ابنِ تطبيق جافاسكريبت متكامل يشبه وظيفيًا هذا: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. يتطلب العمل على هذا المشروع كتابة شفرتك باستخدام إحدى الطرق التالية:

- استنسخ <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">مستودع GitHub هذا</a> وأكمل مشروعك محليًا.
- استخدم منشئ مواقع من اختيارك لإكمال المشروع. تأكد من دمج جميع الملفات من مستودع GitHub الخاص بنا.

**ملاحظة:** تحويل المناطق الزمنية ليس هدفًا من هذا المشروع، لذا افترض أن جميع التواريخ الصالحة المرسلة ستُحلل باستخدام `new Date()` كتاريخ GMT.

# --hints--

يجب أن تقدم مشروعك الخاص، وليس عنوان URL المثال.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

يجب أن يعيد الطلب إلى `/api/:date?` مع تاريخ صالح كائن JSON يحتوي على مفتاح `unix` وهو طابع زمني يونكس للتاريخ المُدخل بوحدة المللي ثانية (من نوع Number).

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.unix,
    1482624000000,
    'Should be a valid unix timestamp'
  );
```

يجب أن يعيد الطلب إلى `/api/:date?` مع تاريخ صالح كائن JSON يحتوي على مفتاح `utc` وهو سلسلة نصية للتاريخ المُدخل بالتنسيق: `Thu, 01 Jan 1970 00:00:00 GMT`

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.utc,
    'Sun, 25 Dec 2016 00:00:00 GMT',
    'Should be a valid UTC date string'
  );
```

يجب أن يعيد الطلب إلى `/api/1451001600000` `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

```js
  const response = await fetch(code + '/api/1451001600000');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1451001600000 &&
      data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
  );
```

يمكن لمشروعك التعامل مع التواريخ التي يمكن تحليلها بنجاح بواسطة `new Date(date_string)`

```js
  const response = await fetch(code + '/api/05 October 2011, GMT');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1317772800000 &&
      data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
  );
```

إذا كانت سلسلة التاريخ المُدخلة غير صالحة، يعيد API كائنًا بالهيكل `{ error : "Invalid Date" }`

```js
  const response = await fetch(code + '/api/this-is-not-a-date');
  if (response.ok) {
    const data = await response.json();
    assert.equal(data.error.toLowerCase(), 'invalid date');
  } else {
    const errorData = await response.json();
    assert(errorData.error.toLowerCase() === 'invalid date');
  }
```

يجب أن يعيد معامل التاريخ الفارغ الوقت الحالي في كائن JSON يحتوي على مفتاح `unix`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

يجب أن يعيد معامل التاريخ الفارغ الوقت الحالي في كائن JSON يحتوي على مفتاح `utc`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  var serverTime = new Date(data.utc).getTime();
  assert.approximately(serverTime, now, 20000);
```

