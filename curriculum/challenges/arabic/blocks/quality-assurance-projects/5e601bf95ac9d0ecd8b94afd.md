---
id: 5e601bf95ac9d0ecd8b94afd
title: محلل سودوكو
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

ابنِ تطبيق جافاسكريبت متكامل الوظائف مشابه لهذا: <a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>. يتطلب العمل على هذا المشروع كتابة شفرتك باستخدام إحدى الطرق التالية:

- استنسخ <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">مستودع GitHub هذا</a> وأكمل مشروعك محليًا.
- استخدم منشئ مواقع من اختيارك لإكمال المشروع. تأكد من دمج جميع الملفات من مستودع GitHub الخاص بنا.

# --instructions--

- يمكن وضع كل منطق اللغز في `/controllers/sudoku-solver.js`
  - يجب أن تأخذ الدالة `validate` سلسلة اللغز المعطاة وتتحقق مما إذا كانت تحتوي على 81 حرفًا صالحًا للمدخل.
  - يجب أن تتحقق دوال `check` من صحة الحالة *الحالية* للوحة.
  - يجب أن تتعامل دالة `solve` مع حل أي سلسلة لغز صالحة، وليس فقط مدخلات الاختبار والحلول. من المتوقع أن تكتب المنطق اللازم للحل.
- يمكن وضع كل منطق التوجيه في `/routes/api.js`
- اطلع على ملف `puzzle-strings.js` في `/controllers` لبعض الألغاز النموذجية التي يجب أن يحلها تطبيقك
- لتشغيل اختبارات التحدي على هذه الصفحة، اضبط `NODE_ENV` على `test` بدون علامات اقتباس في ملف `.env`
- لتشغيل الاختبارات في وحدة التحكم، استخدم الأمر `npm run test`.

اكتب الاختبارات التالية في `tests/1_unit-tests.js`:

- يتعامل المنطق مع سلسلة لغز صالحة مكونة من 81 حرفًا
- يتعامل المنطق مع سلسلة لغز تحتوي على أحرف غير صالحة (ليست من 1-9 أو `.`)
- يتعامل المنطق مع سلسلة لغز ليست بطول 81 حرفًا
- يتعامل المنطق مع وضع صف صحيح
- يتعامل المنطق مع وضع صف غير صحيح
- يتعامل المنطق مع وضع عمود صحيح
- يتعامل المنطق مع وضع عمود غير صحيح
- يتعامل المنطق مع وضع منطقة صحيحة (شبكة 3x3)
- يتعامل المنطق مع وضع منطقة غير صحيحة (شبكة 3x3)
- تمر سلاسل الألغاز الصالحة عبر المحلل
- تفشل سلاسل الألغاز غير الصالحة في المحلل
- يعيد المحلل الحل المتوقع للغز غير مكتمل

اكتب الاختبارات التالية في `tests/2_functional-tests.js`

- حل لغز بسلسلة لغز صالحة: طلب POST إلى `/api/solve`
- حل لغز بسلسلة لغز مفقودة: طلب POST إلى `/api/solve`
- حل لغز بأحرف غير صالحة: طلب POST إلى `/api/solve`
- حل لغز بطول غير صحيح: طلب POST إلى `/api/solve`
- حل لغز لا يمكن حله: طلب POST إلى `/api/solve`
- التحقق من وضع لغز مع كل الحقول: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع تعارض وضع واحد: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع تعارضات وضع متعددة: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع كل تعارضات الوضع: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع الحقول المطلوبة المفقودة: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع أحرف غير صالحة: طلب POST إلى `/api/check`
- التحقق من وضع لغز بطول غير صحيح: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع إحداثيات وضع غير صالحة: طلب POST إلى `/api/check`
- التحقق من وضع لغز مع قيمة وضع غير صالحة: طلب POST إلى `/api/check`

# --hints--

يجب أن تقدم مشروعك الخاص، وليس عنوان URL المثال.

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

يمكنك `POST` إلى `/api/solve` مع بيانات نموذج تحتوي على `puzzle` وهي سلسلة تحتوي على مزيج من الأرقام (1-9) والنقاط `.` لتمثيل الفراغات الفارغة. ستحتوي الكائن المعاد على خاصية `solution` التي تحتوي على اللغز المحلول.

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output =
    '769235418851496372432178956174569283395842761628713549283657194516924837947381625';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'solution');
  assert.equal(parsed.solution, output);
```

إذا كان الكائن المرسل إلى `/api/solve` يفتقد `puzzle`، ستكون القيمة المعادة `{ error: 'Required field missing' }`

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Required field missing';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ notpuzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

إذا احتوى اللغز المرسل إلى `/api/solve` على قيم ليست أرقامًا أو نقاطًا، ستكون القيمة المعادة `{ error: 'Invalid characters in puzzle' }`

```js
  const input =
    'AA9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid characters in puzzle';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

إذا كان طول اللغز المرسل إلى `/api/solve` أكبر أو أقل من 81 حرفًا، ستكون القيمة المعادة `{ error: 'Expected puzzle to be 81 characters long' }`

```js
  const inputs = [
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6.',
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6...'
  ];
  const output = 'Expected puzzle to be 81 characters long';
  for (const input of inputs) {
    const data = await fetch(code + '/api/solve', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

إذا كان اللغز المرسل إلى `/api/solve` غير صالح أو لا يمكن حله، ستكون القيمة المعادة `{ error: 'Puzzle cannot be solved' }`

```js
  const input =
    '9.9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Puzzle cannot be solved';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

يمكنك `POST` إلى `/api/check` كائن يحتوي على `puzzle` و`coordinate` و`value` حيث تمثل `coordinate` الحرف من A إلى I للدلالة على الصف، يليه رقم من 1 إلى 9 للدلالة على العمود، و`value` هو رقم من 1 إلى 9.

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '7';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isTrue(parsed.valid);
```

ستكون القيمة المُعادة من `POST` إلى `/api/check` كائنًا يحتوي على خاصية `valid`، تكون `true` إذا كان يمكن وضع الرقم عند الإحداثي المُقدَّم و`false` إذا لم يكن ذلك ممكنًا. وإذا كانت false، فسيحتوي الكائن المُعاد أيضًا على خاصية `conflict` وهي مصفوفة تحتوي على السلاسل `"row"` و`"column"` و/أو `"region"` حسب ما يجعل الوضع غير صالح.

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '1';
  const conflict = ['row', 'column'];
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isFalse(parsed.valid);
  assert.property(parsed, 'conflict');
  assert.include(parsed.conflict, 'row');
  assert.include(parsed.conflict, 'column');
```

إذا كان `value` المرسل إلى `/api/check` موجودًا بالفعل في `puzzle` على ذلك `coordinate`، ستكون القيمة المعادة كائنًا يحتوي على خاصية `valid` بقيمة `true` إذا لم يكن هناك تعارض مع `value`.

```js
  const input =
  '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'C3';
  const value = '2';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isTrue(parsed.valid);
```

إذا احتوى اللغز المرسل إلى `/api/check` على قيم ليست أرقامًا أو نقاطًا، ستكون القيمة المعادة `{ error: 'Invalid characters in puzzle' }`

```js
  const input =
    'AA9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '1';
  const output = 'Invalid characters in puzzle';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

إذا كان طول اللغز المرسل إلى `/api/check` أكبر أو أقل من 81 حرفًا، ستكون القيمة المعادة `{ error: 'Expected puzzle to be 81 characters long' }`

```js
  const inputs = [
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6.',
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6...'
  ];
  const coordinate = 'A1';
  const value = '1';
  const output = 'Expected puzzle to be 81 characters long';
  for (const input of inputs) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

إذا كان الكائن المرسل إلى `/api/check` يفتقد `puzzle` أو `coordinate` أو `value`، ستكون القيمة المعادة `{ error: 'Required field(s) missing' }`

```js
  const inputs = [
    {
      puzzle: '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..',
      value: '1',
    },
    {
      puzzle: '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..',
      coordinate: 'A1',
    },
    {
      coordinate: 'A1',
      value: '1'
    }
  ];
  for (const input of inputs) {
    const output = 'Required field(s) missing';
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(input)
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

إذا لم تشير الإحداثيات المرسلة إلى `api/check` إلى خلية شبكة موجودة، ستكون القيمة المعادة `{ error: 'Invalid coordinate'}`

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid coordinate';
  const coordinates = ['A0', 'A10', 'J1', 'A', '1', 'XZ18'];
  const value = '7';
  for (const coordinate of coordinates) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

إذا لم يكن `value` المرسل إلى `/api/check` رقمًا بين 1 و9، ستكون القيمة المعادة `{ error: 'Invalid value' }`

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid value';
  const coordinate = 'A1';
  const values = ['0', '10', 'A'];
  for (const value of values) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

اكتملت جميع اختبارات الوحدة الـ 12 ونجحت.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const unitTests = getTests.filter((test) => {
      return !!test.context.match(/Unit\s*Tests/gi);
    });
    assert.isAtLeast(unitTests.length, 12, 'At least 12 tests passed');
    unitTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
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

اكتملت جميع الاختبارات الوظيفية الـ 14 ونجحت.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const functTests = getTests.filter((test) => {
      return !!test.context.match(/Functional\s*Tests/gi);
    });
    assert.isAtLeast(functTests.length, 14, 'At least 14 tests passed');
    functTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
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
