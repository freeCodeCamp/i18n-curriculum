---
id: bd7158d8c443edefaeb5bd0e
title: خدمة مصغرة لتقصير عناوين URL
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

ابنِ تطبيق جافاسكريبت متكامل يشبه وظيفيًا هذا: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. يتطلب العمل على هذا المشروع كتابة شفرتك باستخدام إحدى الطرق التالية:

-   استنسخ <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">مستودع GitHub هذا</a> وأكمل مشروعك محليًا.
-   استخدم منشئ مواقع من اختيارك لإكمال المشروع. تأكد من دمج جميع الملفات من مستودع GitHub الخاص بنا.

# --instructions--

**تلميح:** لا تنسَ استخدام برمجيات وسيطة لتحليل جسم الطلبات للتعامل مع طلبات POST. يمكنك أيضًا استخدام الدالة `dns.lookup(host, cb)` من وحدة `dns` الأساسية للتحقق من صحة عنوان URL المقدم.

# --hints--

يجب أن تقدم مشروعك الخاص، وليس عنوان URL المثال.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

يمكنك إرسال طلب POST إلى `/api/shorturl` مع عنوان URL والحصول على استجابة JSON تحتوي على خاصيتي `original_url` و `short_url`. إليك مثالًا: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (res.ok) {
    const { short_url, original_url } = await res.json();
    assert.isNotNull(short_url);
    assert.strictEqual(original_url, `${url}/?v=${urlVariable}`);
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

عند زيارة `/api/shorturl/<short_url>`، سيتم إعادة توجيهك إلى عنوان URL الأصلي.

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  let shortenedUrlVariable;
  const postResponse = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (postResponse.ok) {
    const { short_url } = await postResponse.json();
    shortenedUrlVariable = short_url;
  } else {
    throw new Error(`${postResponse.status} ${postResponse.statusText}`);
  }
  // Ensure a new URL is reached
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable, {redirect:'follow'}
  );
  if (getResponse) {
    const { url } = getResponse; // status is always 200 for some reason
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }

  // No more auto follow
  const getManualResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable, {redirect:'manual'}
  );
  if (getManualResponse) {
    const { status } = getManualResponse; // if a redirect happens, it won't reach the new resource
    assert.strictEqual(status,0);
  } else {
    throw new Error(`${getManualResponse.status} ${getManualResponse.statusText}`);
  }

```

إذا أرسلت عنوان URL غير صالح لا يتبع صيغة `http://www.example.com` الصحيحة، ستحتوي استجابة JSON على `{ error: 'invalid url' }`

```js
  const url = code;
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=ftp:/john-doe.invalidTLD`
  });
  if (res.ok) {
    const { error } = await res.json();
    assert.isNotNull(error);
    assert.strictEqual(error.toLowerCase(), 'invalid url');
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

