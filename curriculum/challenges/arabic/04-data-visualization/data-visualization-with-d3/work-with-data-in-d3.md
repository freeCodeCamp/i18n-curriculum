---
id: 587d7fa7367417b2b2512bc4
title: العمل مع البيانات في D3
challengeType: 6
forumTopicId: 301497
dashedName: work-with-data-in-d3
---

# --description--

The D3 library focuses on a data-driven approach. When you have a set of data, you can apply D3 methods to display it on the page. Data comes in many formats, but this challenge uses a simple array of numbers.

والخطوة الأولى هي جعل D3 على علم بالبيانات. يتم استخدام طريقة `data()` على اختيار عناصر DOM لإرفاق البيانات بتلك العناصر. وتحال مجموعة البيانات كمعطى إلى الطريقة.

ومن أنماط تدفق العمل الشائعة إنشاء عنصر جديد في الوثيقة لكل جزء من البيانات في المجموعة. D3 لديه طريقة `enter()` لهذا الغرض.

عندما يتم دمج `enter()` مع طريقة `data()`، ينظر D3 إلى العناصر المختارة من الصفحة ويقارنها بعدد عناصر البيانات في المجموعة. وإذا كانت هناك عناصر أقل من بنود البيانات، فإن ذلك يخلق العناصر الناقصة.

فيما يلي مثال يحدد عنصر `ul` وينشئ عنصر قائمة جديد استنادًا إلى عدد المدخلات في القائمة:

```html
<body>
  <ul></ul>
  <script>
    const dataset = ["a", "b", "c"];
    d3.select("ul").selectAll("li")
      .data(dataset)
      .enter()
      .append("li")
      .text("New item");
  </script>
</body>
```

قد يبدو أن اختيار عناصر غير موجودة حتى الآن مربكًا. هذا الكود يخبر D3 أولا بتحديد `ul` في الصفحة. بعد ذلك، حدد جميع عناصر القائمة (li)، وهذا سيرجع تحديد فارغ. ثم تقوم طريقة `data()` بمراجعة مجموعة البيانات وتشغيل الكود التالي ثلاث مرات، أي مرة واحدة لكل عنصر في القائمة. ترى طريقة `enter()` أنه لا توجد عناصر `li` في الصفحة، ولكن تحتاج إلى 3 (واحد لكل جزء من البيانات في `dataset`). تلحق عناصر `li` جديدة في `ul` ولديها نص `New item`.

# --instructions--

حدد node (عقدة) `body` ثم حدد جميع عناصر `h2`. اجعل D3 تنشئ وتلحق علامة `h2` لكل عنصر في قائمة `dataset`. يجب أن النص في `h2` يكون `New Title`. يجب أن يستخدم الكود الخاص بك طرق `data()` و `enter()`.

# --hints--

يجب أن تحتوي وثيقتك على 9 عناصر `h2`.

```js
assert($('h2').length == 9);
```

يجب أن النص في `h2` يكون `New Title`. وينبغي أن تتطابق حالة الحروف والمباعدة بينهما على وجه الدقة.

```js
assert(
  $('h2')
    .text()
    .match(/New Title/g).length == 9
);
```

يجب أن يستخدم الكود الخاص بك طريقة `data()`.

```js
assert(code.match(/\.data/g));
```

يجب أن يستخدم الكود الخاص بك طريقة `enter()`.

```js
assert(code.match(/\.enter/g));
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body")
      .selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text("New Title")

  </script>
</body>
```
