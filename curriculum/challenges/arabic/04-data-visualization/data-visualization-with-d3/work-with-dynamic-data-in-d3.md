---
id: 587d7fa7367417b2b2512bc5
title: العمل مع البيانات الديناميكية في D3
challengeType: 6
forumTopicId: 301498
dashedName: work-with-dynamic-data-in-d3
---

# --description--

The last two challenges cover the basics of displaying data dynamically with D3 using the `data()` and `enter()` methods. These methods take a data set and, together with the `append()` method, create a new DOM element for each entry in the data set.

في التحدي السابق، قمت بإنشاء عنصر `h2` جديد لكل عنصر في `dataset`، ولكن كلها تضمنت نفس النص، `New Title`. هذا لأنك لم تستخدم البيانات المرتبطة بكل عنصر من عناصر `h2`.

طريقة D3 `text()` يمكن أن تأخذ مقطع نصي (string) أو وظيفة لإعادة التفاعل (callback function) كمعطى:

```js
selection.text((d) => d)
```

في المثال أعلاه يشير الوسيط `d` إلى إدخال واحد في مجموعة البيانات التي يجب أن يكون الاختيار ملزماً بها.

باستخدام المثال الحالي كسياق ، العنصر `h2` الأول مرتبط بـ 12، العنصر الثاني `h2` مرتبط بـ 31 العنصر الثالث `h2` مرتبط بـ 22، وما إلى ذلك.

# --instructions--

قم بتغيير طريقة `text()` بحيث يعرض كل عنصر `h2` القيمة المقابلة من القائمة `dataset` مع مساحة واحدة والنص `USD`. على سبيل المثال، العنوان الأول يجب أن يكون `12 USD`.

# --hints--

يجب أن يحتوي أول `h2` على النص `12 USD`.

```js
assert($('h2').eq(0).text() == '12 USD');
```

يجب أن يحتوي ثاني `h2` على النص `31 USD`.

```js
assert($('h2').eq(1).text() == '31 USD');
```

يجب أن يحتوي ثالث `h2` على النص `22 USD`.

```js
assert($('h2').eq(2).text() == '22 USD');
```

يجب أن يحتوي رابع `h2` على النص `17 USD`.

```js
assert($('h2').eq(3).text() == '17 USD');
```

يجب أن يحتوي خامس `h2` على النص `25 USD`.

```js
assert($('h2').eq(4).text() == '25 USD');
```

يجب أن يحتوي سادس `h2` على النص `18 USD`.

```js
assert($('h2').eq(5).text() == '18 USD');
```

يجب أن يحتوي سابع `h2` على النص `29 USD`.

```js
assert($('h2').eq(6).text() == '29 USD');
```

يجب أن يحتوي ثامن `h2` على النص `14 USD`.

```js
assert($('h2').eq(7).text() == '14 USD');
```

يجب أن يحتوي تاسع `h2` على النص `9 USD`.

```js
assert($('h2').eq(8).text() == '9 USD');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      // Add your code below this line

      .text("New Title");

      // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => `${d} USD`);

  </script>
</body>
```
