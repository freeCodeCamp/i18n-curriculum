---
id: 587d7fb2367417b2b2512bf7
title: Use body-parser to Parse POST Requests
challengeType: 2
forumTopicId: 301520
dashedName: use-body-parser-to-parse-post-requests
---

# --description--

Besides GET, there is another common HTTP verb, it is POST. POST is the default method used to send client data with HTML forms. In REST convention, POST is used to send data to create new items in the database (a new user, or a new blog post). You don’t have a database in this project, but you are going to learn how to handle POST requests anyway.

In these kind of requests, the data doesn’t appear in the URL, it is hidden in the request body. The body is a part of the HTTP request, also called the payload. وعلى الرغم من أن البيانات غير مرئية في العنوان URL، فإن هذا لا يعني أنها خاصة أو مخفي. لمعرفة السبب ، انظر إلى المحتوى الخام لطلب HTTP POST:

```http
POST /path/subpath HTTP/1.0
From: john@example.com
User-Agent: someBrowser/1.0
Content-Type: application/x-www-form-urlencoded
Content-Length: 20

name=John+Doe&age=25
```

As you can see, the body is encoded like the query string. هذا هو التنسيق الافتراضي المستخدم في نماذج HTML. مع Ajax، يمكنك أيضًا استخدام JSON للتعامل مع البيانات ذات البنية الأكثر تعقيدا. There is also another type of encoding: multipart/form-data. يستخدم هذا لتحميل الملفات الثنائية. In this exercise, you will use a URL encoded body. لتحليل البيانات الواردة من طلبات POST ، يجب عليك استخدام حزمة `body-parser`. This package allows you to use a series of middleware, which can decode data in different formats.

# --instructions--

تم تثبيت `body-parser` وهو في ملف مشروعك `package.json`. إستخدم `require` لطلبها في الجزء العلوي من `ملف myApp.js` وخزنها في متغير يسمى `bodyParser `. The middleware to handle URL encoded data is returned by `bodyParser.urlencoded({extended: false})`. أعطي الوظيفة التي تم إرجاعها عن طريق تفعيل الطريقة السابقة إلى `app.use()`. As usual, the middleware must be mounted before all the routes that depend on it.

**Note:** `extended` is a configuration option that tells `body-parser` which parsing needs to be used. When `extended=false` it uses the classic encoding `querystring` library. عندما `extended=true` تستخدم مكتبة `qs` للتحليل.

عند استخدام `extended=false`، يمكن أن تكون القيم فقط عناصر نصية أو قائمات. The object returned when using `querystring` does not prototypically inherit from the default JavaScript `Object`, which means functions like `hasOwnProperty`, `toString` will not be available. The extended version allows more data flexibility, but it is outmatched by JSON.

# --hints--

The 'body-parser' middleware should be mounted

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/add-body-parser').then(
    (data) => {
      assert.isAbove(
        data.mountedAt,
        0,
        '"body-parser" is not mounted correctly'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

