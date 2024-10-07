---
id: 587d7fb2367417b2b2512bf6
title: الحصول على باراميتر Query المُدخل من المستخدم
challengeType: 2
forumTopicId: 301512
dashedName: get-query-parameter-input-from-the-client
---

# --description--

Another common way to get input from the client is by encoding the data after the route path, using a query string. The query string is delimited by a question mark (?), and includes field=value couples. Each couple is separated by an ampersand (&). Express can parse the data from the query string, and populate the object `req.query`. Some characters, like the percent (%), cannot be in URLs and have to be encoded in a different format before you can send them. If you use the API from JavaScript, you can use specific methods to encode/decode these characters.

<blockquote>route_path: '/library'<br>actual_request_URL: '/library?userId=546&#x26;bookId=6754' <br>req.query: {userId: '546', bookId: '6754'}</blockquote>

# --instructions--

بناء نقطة نهاية API، محمولة على `GET /name`. الرد بمستند JSON، يأخذ البنية `{ name: 'firstname lastname'}`. يجب تشفير معلمات الاسم الأول والأخير في نص query على سبيل المثال `?first=firstname&last=lastname`.

**ملاحظة:** في التمرين التالي سوف تتلقى البيانات من طلب POST على نفس المسار `/name`. إذا أردت ، يمكنك استخدام الطريقة `app.route(path).get(handler).post(handler)`. هذه الصيغة تسمح لك بسلسلة متعاملين مع الأفعال المختلفة على نفس المسار. يمكنك حفظ القليل من الكتابة، والحصول على كود أنظف.

# --hints--

Test 1 : Your API endpoint should respond with `{ "name": "Mick Jagger" }` when the `/name` endpoint is called with `?first=Mick&last=Jagger`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?first=Mick&last=Jagger').then(
    (data) => {
      assert.equal(
        data.name,
        'Mick Jagger',
        'Test 1: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Test 2 : Your API endpoint should respond with `{ "name": "Keith Richards" }` when the `/name` endpoint is called with `?first=Keith&last=Richards`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?last=Richards&first=Keith').then(
    (data) => {
      assert.equal(
        data.name,
        'Keith Richards',
        'Test 2: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

