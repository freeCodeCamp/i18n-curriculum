---
id: 5e601c0d5ac9d0ecd8b94afe
title: مترجم أمريكي بريطاني
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

ابنِ تطبيق جافاسكريبت متكامل الوظائف يشبه هذا: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. يتطلب هذا المشروع كتابة شفرتك باستخدام إحدى الطرق التالية:

-   استنسخ <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">مستودع GitHub هذا</a> وأكمل مشروعك محليًا.
-   استخدم منشئ مواقع من اختيارك لإكمال المشروع. تأكد من دمج جميع الملفات من مستودع GitHub الخاص بنا.

# --instructions--

-   يمكن وضع كل المنطق في `/components/translator.js`
-   أكمل مسار `/api/translate` في `/routes/api.js`
-   أنشئ جميع اختبارات الوحدة/الوظيفية في `tests/1_unit-tests.js` و `tests/2_functional-tests.js`
-   اطلع على ملفات جافاسكريبت في `/components` للاطلاع على التهجئة والمصطلحات التي يجب أن يترجمها تطبيقك
-   لتشغيل الاختبارات تلقائيًا، اضبط `NODE_ENV` على `test` بدون علامات اقتباس في ملف `.env`
-   لتشغيل الاختبارات في وحدة التحكم، استخدم الأمر `npm run test`.

اكتب الاختبارات التالية في `tests/1_unit-tests.js`:

-   ترجم `Mangoes are my favorite fruit.` إلى الإنجليزية البريطانية
-   ترجم `I ate yogurt for breakfast.` إلى الإنجليزية البريطانية
-   ترجم `We had a party at my friend's condo.` إلى الإنجليزية البريطانية
-   ترجم `Can you toss this in the trashcan for me?` إلى الإنجليزية البريطانية
-   ترجم `The parking lot was full.` إلى الإنجليزية البريطانية
-   ترجم `Like a high tech Rube Goldberg machine.` إلى الإنجليزية البريطانية
-   ترجم `To play hooky means to skip class or work.` إلى الإنجليزية البريطانية
-   ترجم `No Mr. Bond, I expect you to die.` إلى الإنجليزية البريطانية
-   ترجم `Dr. Grosh will see you now.` إلى الإنجليزية البريطانية
-   ترجم `Lunch is at 12:15 today.` إلى الإنجليزية البريطانية
-   ترجم `We watched the footie match for a while.` إلى الإنجليزية الأمريكية
-   ترجم `Paracetamol takes up to an hour to work.` إلى الإنجليزية الأمريكية
-   ترجم `First, caramelise the onions.` إلى الإنجليزية الأمريكية
-   ترجم `I spent the bank holiday at the funfair.` إلى الإنجليزية الأمريكية
-   ترجم `I had a bicky then went to the chippy.` إلى الإنجليزية الأمريكية
-   ترجم `I've just got bits and bobs in my bum bag.` إلى الإنجليزية الأمريكية
-   ترجم `The car boot sale at Boxted Airfield was called off.` إلى الإنجليزية الأمريكية
-   ترجم `Have you met Mrs Kalyani?` إلى الإنجليزية الأمريكية
-   ترجم `Prof Joyner of King's College, London.` إلى الإنجليزية الأمريكية
-   ترجم `Tea time is usually around 4 or 4.30.` إلى الإنجليزية الأمريكية
-   أبرز الترجمة في `Mangoes are my favorite fruit.`
-   أبرز الترجمة في `I ate yogurt for breakfast.`
-   أبرز الترجمة في `We watched the footie match for a while.`
-   أبرز الترجمة في `Paracetamol takes up to an hour to work.`

اكتب الاختبارات التالية في `tests/2_functional-tests.js`:

-   الترجمة مع حقول النص واللغة: طلب POST إلى `/api/translate`
-   الترجمة مع نص وحقل لغة غير صالح: طلب POST إلى `/api/translate`
-   الترجمة مع فقدان حقل النص: طلب POST إلى `/api/translate`
-   الترجمة مع فقدان حقل اللغة: طلب POST إلى `/api/translate`
-   الترجمة مع نص فارغ: طلب POST إلى `/api/translate`
-   الترجمة مع نص لا يحتاج إلى ترجمة: طلب POST إلى `/api/translate`

# --hints--

يجب أن تقدم مشروعك الخاص، وليس عنوان URL المثال.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

يمكنك `POST` إلى `/api/translate` مع جسم يحتوي على `text` للنص المراد ترجمته و`locale` إما `american-to-british` أو `british-to-american`. يجب أن يحتوي الكائن المرجع على `text` المرسل و`translation` مع النص المترجم.

```js
  try {
    const text = 'Mangoes are my favorite fruit.';
    const locale = 'american-to-british';
    const output = {
      text: 'Mangoes are my favorite fruit.',
      translation:
        'Mangoes are my <span class="highlight">favourite</span> fruit.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

يجب أن يتعامل مسار `/api/translate` مع طريقة كتابة الوقت في الإنجليزية الأمريكية والبريطانية. على سبيل المثال، يُكتب "10.30" في الإنجليزية البريطانية و"10:30" في الإنجليزية الأمريكية. يجب أن يغلف عنصر `span` كامل سلسلة الوقت، أي `<span class="highlight">10:30</span>`.

```js
  try {
    const text = 'Lunch is at 12:15 today.';
    const locale = 'american-to-british';
    const output = {
      text: text,
      translation: 'Lunch is at <span class="highlight">12.15</span> today.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

يجب أن يتعامل مسار `/api/translate` أيضًا مع طريقة اختصار الألقاب/الأوسمة في الإنجليزية الأمريكية والبريطانية. على سبيل المثال، يُختصر "Doctor Wright" إلى "Dr Wright" في الإنجليزية البريطانية و"Dr. Wright" في الإنجليزية الأمريكية. اطلع على `/components/american-to-british-titles.js` للاطلاع على الألقاب المختلفة التي يجب أن يتعامل معها تطبيقك.

```js
  try {
    const text = 'Dr. Grosh will see you now.';
    const locale = 'american-to-british';
    const output = {
      text: text,
      translation: '<span class="highlight">Dr</span> Grosh will see you now.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

غلف أي تهجئة أو مصطلحات مترجمة بعلامات `<span class="highlight">...</span>` لتظهر باللون الأخضر.

```js
  try {
    const text = 'Mangoes are my favorite fruit.';
    const locale = 'american-to-british';
    const output = {
      text: 'Mangoes are my favorite fruit.',
      translation:
        'Mangoes are my <span class="highlight">favourite</span> fruit.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

إذا كان أحد الحقول المطلوبة أو أكثر مفقودًا، أرجع `{ error: 'Required field(s) missing' }`.

```js
  try {
    const locale = 'american-to-british';
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'error');
    assert.equal(parsed.error, 'Required field(s) missing');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

إذا كان `text` فارغًا، أرجع `{ error: 'No text to translate' }`

```js
  try {
    const locale = 'american-to-british';
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text: '', locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'error');
    assert.equal(parsed.error, 'No text to translate');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

إذا لم يتطابق `locale` مع أحد القيمتين المحددتين، أرجع `{ error: 'Invalid value for locale field' }`.

```js
  try {
    const text = "Ceci n'est pas une pipe";
    const locale = 'french-to-american';
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'error');
    assert.equal(parsed.error, 'Invalid value for locale field');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

إذا لم يكن `text` بحاجة إلى ترجمة، أرجع `"Everything looks good to me!"` لقيمة `translation`.

```js
  try {
    const locale = 'british-to-american';
    const output = {
      text: 'SaintPeter and nhcarrigan give their regards!',
      translation: 'Everything looks good to me!'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text: output.text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

اكتملت جميع اختبارات الوحدة الـ 24 ونجحت.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const unitTests = getTests.filter((test) => {
      return !!test.context.match(/Unit Tests/gi);
    });
    assert.isAtLeast(unitTests.length, 24, 'At least 24 tests passed');
    unitTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Tests in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

اكتملت جميع الاختبارات الوظيفية الـ 6 ونجحت.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const functTests = getTests.filter((test) => {
      return !!test.context.match(/Functional Tests/gi);
    });
    assert.isAtLeast(functTests.length, 6, 'At least 6 tests passed');
    functTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Tests in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```
