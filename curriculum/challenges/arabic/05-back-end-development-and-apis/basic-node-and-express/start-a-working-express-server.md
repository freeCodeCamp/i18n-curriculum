---
id: 587d7fb0367417b2b2512bee
title: بدء سيرفر Express مُفعل
challengeType: 2
forumTopicId: 301519
dashedName: start-a-working-express-server
---

# --description--

In the first two lines of the file `myApp.js`, you can see how easy it is to create an Express app object. This object has several methods, and you will learn many of them in these challenges. One fundamental method is `app.listen(port)`. It tells your server to listen on a given port, putting it in running state. For testing reasons, we need the app to be running in the background so we added this method in the `server.js` file for you.

هيا نمدد المقطع النصي الأول! في Express، تأخذ المسارات البنية التالية: `app.METHOD(PATH, HANDLER)`. إن METHOD طريقة http مكتوبة بحروف صغيرة. إن PATH المنفذ نسبي في السيرفر (يمكن أن يكون مقطع نصي أو حتى عبارة (expression) عادية). إن HANDLER وظيفة معالجة ينفذها Express عند مطابقة ال route. تكتب تلك الوظائف المعالجة مثل `function(req, res) {...}`، حيث req هو كائن الطلب، و res هو كائن الاستجابة. على سبيل المثال المعالج

```js
function(req, res) {
  res.send('Response String');
}
```

سوف يمدد المقطع النصي 'Response String'.

# --instructions--

استخدم طريقة `app.get()` لتمديد المقطع "Hello Express" إلى طلبات GET المطابقة للمسار `/` (منفذ المصدر). Be sure that your code works by looking at the logs, then see the results in the preview if you are using Gitpod.

**ملاحظة:** يجب إضافة كل الكود لهذه الدروس بين سطور الكود التي بدأنا بها.

# --hints--

يجب أن يخدم تطبيقك المقطع النصي 'Hello Express'

```js
(getUserInput) =>
  $.get(getUserInput('url')).then(
    (data) => {
      assert.equal(
        data,
        'Hello Express',
        'Your app does not serve the text "Hello Express"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

