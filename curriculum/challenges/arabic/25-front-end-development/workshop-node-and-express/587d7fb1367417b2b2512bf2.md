---
id: 587d7fb1367417b2b2512bf2
title: استخدام ملف "env."
challengeType: 2
forumTopicId: 301521
dashedName: use-the--env-file
---

# --description--

The `.env` file is a hidden file that is used to pass environment variables to your application. This file is secret, no one but you can access it, and it can be used to store data that you want to keep private or hidden. For example, you can store API keys from external services or your database URI. You can also use it to store configuration options. By setting configuration options, you can change the behavior of your application, without the need to rewrite some code.

استخدم `process.env.VAR_NAME` للوصول إلى متغيرات البيئة من التطبيق. `process.env` هو كائن Node متاح للوصول إليه من أي مكان. و المتغيرات تكتب كنص مقطعي. حسب التقاليد، فإن أسماء المتغيرات كلها أحرف كبيرة، و يفصل بين كل كلمة شَرطة سفلية (_). `.env` هو ملف shell، لذلك لا تحتاج الأسماء أو القيم إلى علامة الاقتباس. من المهم أيضا ملاحظة أنه لا يمكن أن تكون هناك مسافة حول علامة المساواة عندما تقوم بتعيين القيم للمتغيرات الخاصة بك، على سبيل المثال `VAR_NAME=value`. عادةً، ستضع كل تعريف متغير على خط منفصل.

# --instructions--

دعونا نضيف متغير البيئة كخيار من خيارات الإعداد.

قم بإنشاء ملف `.env` في جذر دليل المشروع الخاص بك، و قم بتخزين المتغير `MESSAGE_STYLE=uppercase` فيه.

ثم ، في معالج مسار `/json` الذي قمت بإنشائه في آخر تحدي، تَوَصَّل إلى `process.env.MESSAGE_STYLE` وحوِّل رسالة كائن response في `message` إلى حروف كبيره إذا كان المتغير يساوي `uppercase`. يجب أن يكون عنصر الاستجابة إما `{"message": "Hello json"}` أو `{"message": "HELLO JSON"}`، اعتماداً على قيمة `MESSAGE_STYLE`. لاحظ أنه يجب أن تقرأ قيمة `process.env.MESSAGE_STYLE` في **داخل** معالج الطريق، ليس خارجه، بسبب الطريقة التي تعمل بها اختباراتنا.

You will need to use the `dotenv` package. It loads environment variables from your `.env` file into `process.env`. The `dotenv` package has already been installed, and is in your project's `package.json` file. At the top of your `myApp.js` file, add `require('dotenv').config()` to load the environment variables.

# --hints--

The response of the endpoint `/json` should change according to the environment variable `MESSAGE_STYLE`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/use-env-vars').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'The response of "/json" does not change according to MESSAGE_STYLE'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

