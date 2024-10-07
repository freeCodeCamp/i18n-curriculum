---
id: 587d7fb1367417b2b2512bf4
title: سلسلة البرامج الوسيطة (middleware) لإنشاء خادم زمني (time server)
challengeType: 2
forumTopicId: 301510
dashedName: chain-middleware-to-create-a-time-server
---

# --description--

Middleware can be mounted at a specific route using `app.METHOD(path, middlewareFunction)`. Middleware can also be chained within a route definition.

انظر إلى المثال التالي:

```js
app.get('/user', function(req, res, next) {
  req.user = getTheUserSync();  // Hypothetical synchronous operation
  next();
}, function(req, res) {
  res.send(req.user);
});
```

وهذه الطريقة مفيدة في تقسيم عمليات السيرفر (server) إلى وحدات أصغر. وهذا يؤدي إلى بنية تطبيق أفضل، وإمكانية إعادة استخدام الكود في أماكن مختلفة. ويمكن استخدام هذه الطريقة أيضا لإجراء بعض التحقق من صحة البيانات. في كل نقطة من ال( middleware stack) يمكنك منع تنفيذ السلسلة الحالية ونقل التحكم إلى الدوال (functions) المصممة خصيصاً للتعامل مع الأخطاء. أو للتعامل مع الحالات الخاصة، يمكنك تمرير التحكم إلى المسار المطابق التالي. سوف نرى كيف يمكننا فعل ذلك في قسم Express المتقدم.

# --instructions--

في المسار `app.get('/now', ...)` ركب وظيفة وسيطة (middleware) والمعالج النهائي (final handler). في وظيفة الmiddleware يجب عليك إضافة الوقت الحالي إلى كائن الطلب (request) في المفتاح `req.time`. يمكنك استخدام `new Date().toString()`. في معالج الطلب قم بإنشاء رد مع كائن JSON، يأخذ البنية `{time: req.time}`.

**ملاحظة:**لن يُجتاز الاختبار إذا لم تُنشئ وظيفة middleware. إذا قمت بتركيب الوظيفة في مكان آخر، فسيفشل الاختبار، حتى إذا كانت نتيجة الإخراج صحيحة.

# --hints--

نقطة النهاية ل now/ يجب أن تكون مرُكبة على ال(middleware)

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/chain-middleware-time').then(
    (data) => {
      assert.equal(
        data.stackLength,
        2,
        '"/now" route has no mounted middleware'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

النقطة النهائية `/now` يجب أن تنتج الوقت الحالي.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/chain-middleware-time').then(
    (data) => {
      var now = new Date();
      assert.isAtMost(
        Math.abs(new Date(data.time) - now),
        20000,
        'the returned time is not between +- 20 secs from now'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

