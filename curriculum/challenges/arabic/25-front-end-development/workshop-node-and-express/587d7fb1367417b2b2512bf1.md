---
id: 587d7fb1367417b2b2512bf1
title: خدمة JSON على طريق محدد
challengeType: 2
forumTopicId: 301517
dashedName: serve-json-on-a-specific-route
---

# --description--

While an HTML server serves HTML, an API serves data. A <dfn>REST</dfn> (REpresentational State Transfer) API allows data exchange in a simple way, without the need for clients to know any detail about the server. The client only needs to know where the resource is (the URL), and the action it wants to perform on it (the verb). The GET verb is used when you are fetching some information, without modifying anything. These days, the preferred data format for moving information around the web is JSON. Simply put, JSON is a convenient way to represent a JavaScript object as a string, so it can be easily transmitted.

دعونا ننشئ API (واجهة برمجة التطبيقات) بسيطة عن طريق إنشاء مسار يستجيب مع JSON على المسار `/json`. يمكنك القيام بذلك كالمعتاد، باستخدام طريقة `app.get()`. داخل معالج الطريق، استخدم الطريقة `res.json()`، و مرر لها كائن كمعطى. هذه الطريقة تغلق حلقة الطلب والاستجابة، وتعيد البيانات. خلف الكواليس، يتحوّل كائن جافا سكريبت صالح إلى مقطع نصي، ثم تعيين الرؤوس المناسبة لإخبار المتصفح الخاص بك أنك تقدم خدمة JSON، و تقوم بإرسال البيانات مرة أخرى. الكائن الصالح له التركيب المعتاد `{key: data}`. `data` يمكن أن تكون رقما، أو مقطع نصي، أو كائن متداخل أو قائمة. `data` يمكن أن تكون أيضا متغير أو نتيجة تفعيل وظيفة، وفي هذه الحالة سيتم تقييمه قبل تحويله إلى مقطع نصي.

# --instructions--

قم بخدمة الكائن `{"message": "Hello json"}` كرد بتركيب JSON على طلبات الحصول على `/json`. ثم حدد المتصفح الخاص بك إلى `your-app-url/json`، يجب أن ترى الرسالة على الشاشة.

# --hints--

النقطة النهائية `/json` يجب أن تخدم كائن JSON `{"message": "Hello json"}`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/json').then(
    (data) => {
      assert.equal(
        data.message,
        'Hello json',
        "The '/json' endpoint does not serve the right data"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

