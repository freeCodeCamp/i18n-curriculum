---
id: 587d7fa6367417b2b2512bc2
title: إضافة عناصر وثيقة (Document) بواسطة D3
challengeType: 6
forumTopicId: 301474
dashedName: add-document-elements-with-d3
---

# --description--

D3 has several methods that let you add and change elements in your document.

تختار طريقة (method) `select()` عنصراً واحداً من الوثيقة. إنها تأخذ اسم العنصر الذي تريده كمعطى (argument)، وتنتج HTML node لأول عنصر في المستند يطابق الاسم. وهذا مثال على ذلك:

```js
const anchor = d3.select("a");
```

يجد المثال السابق أول علامة رابط (anchor) في الصفحة ويحفظ HTML node لها في المتغير `anchor`. يمكنك استخدام طريقة الاختيار (selection) مع طرق (methods) أخرى. جزء `d3` من المثال هو إشارة إلى كائن (D3 object reference)، وهو كيف توصل إلى طرق D3.

وهناك طريقتان مفيدتان أخريان هما `append()` و `text()`.

طريقة `append()` تأخذ معطى للعنصر الذي تريد إضافته إلى الوثيقة. يضيف HTML node إلى عنصر محدد، ويعيد إشارة إلى تلك node.

طريقة `text()` إما تعيين نص للعقدة المحددة (selected node)، أو تحصل على النص الحالي. لتعيين القيمة، أعطي مقطع نصي داخل أقواس الطريقة.

هنا مثال يختار قائمة غير منظمة (unordered list)، ثم يضيف عنصر قائمة، ثم يضيف نص:

```js
d3.select("ul")
  .append("li")
  .text("Very important item");
```

يسمح لك D3 بتسلسل عدة طرق مع فترات (periods) لتنفيذ عدد من الإجراءات على التوالي.

# --instructions--

استخدم طريقة `select` لاختيار علامة `body` في الوثيقة. ثم `append` علامة `h1` إليها، وأضف النص `Learning D3` إلى عنصر `h1`.

# --hints--

يجب أن يحتوي عنصر `body` الخاص بك على عنصر `h1` واحد.

```js
assert($('body').children('h1').length == 1);
```

يجب أن يحتوي عنصر `h1` الخاص بك على النص `Learning D3`.

```js
assert($('h1').text() == 'Learning D3');
```

يجب أن يتواصل الكود الخاص بك بكائن `d3`.

```js
assert(code.match(/d3/g));
```

يجب أن يستخدم كودك طريقة `select`.

```js
assert(code.match(/\.select/g));
```

يجب أن يستخدم كودك طريقة `append`.

```js
assert(code.match(/\.append/g));
```

يجب أن يستخدم الكود الخاص بك طريقة `text`.

```js
assert(code.match(/\.text/g));
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    d3.select("body")
      .append("h1")
      .text("Learning D3")
  </script>
</body>
```
