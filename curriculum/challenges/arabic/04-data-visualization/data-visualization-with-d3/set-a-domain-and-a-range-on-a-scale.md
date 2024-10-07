---
id: 587d7fac367417b2b2512bdb
title: تعيين مجال ونطاق على مقياس
challengeType: 6
forumTopicId: 301491
dashedName: set-a-domain-and-a-range-on-a-scale
---

# --description--

By default, scales use the identity relationship. This means the input value maps to the output value. However, scales can be much more flexible and interesting.

فلنقول أن مجموعة البيانات لها قيم تتراوح بين 50 و 480. هذه هي معلومات الإدخال لمقياس ما، والمعروفة أيضًا باسم المجال <dfn>domain</dfn>.

You want to map those points along the `x` axis on the SVG, between 10 units and 500 units. هذه هي المعلومات المخرجة، والمعروفة أيضًا باسم النطاق <dfn>range</dfn>.

الطرق `domain()` و `range()` تحدد هذه القيم للمقياس. وكلا الطريقتين تأخذ قائمة مكوَّنة من عنصرين على الأقل كمعطى. على سبيل المثال:

```js
scale.domain([50, 480]);
scale.range([10, 500]);
scale(50)
scale(480)
scale(325)
scale(750)
d3.scaleLinear()
```

بالترتيب، سيتم عرض القيم التالية في الكونسول: `10` و `500` و `323.37` و `807.67`.

لاحظ أن المقياس يستخدم العلاقة الخطية بين المجال وقيم النطاق لمعرفة ما يجب أن يكون الإخراج لعدد معين. قيمة الحد الأدنى في المجال (50) ستؤدي إلى الحد الأدنى للقيمة (10) في النطاق.

# --instructions--

قم بإنشاء مقياس وتعيين مجاله إلى `[250, 500]` ونطاقه إلى `[10, 150]`.

**ملاحظة:** يمكنك سلسلة طرق `domain()` و `range()` على متغير المقياس `scale`.

# --hints--

يجب أن يستخدم الكود الخاص بك طريقة `domain()`.

```js
assert(code.match(/\.domain/g));
```

يجب تعيين `domain()` من `scale` إلى `[250, 500]`.

```js
assert(JSON.stringify(scale.domain()) == JSON.stringify([250, 500]));
```

يجب أن يستخدم الكود الخاص بك طريقة `range()`.

```js
assert(code.match(/\.range/g));
```

يجب تعيين `range()` من `scale` إلى `[10, 150]`.

```js
assert(JSON.stringify(scale.range()) == JSON.stringify([10, 150]));
```

يجب أن يكون النص في `h2` بقيمة `-102`.

```js
assert($('h2').text() == '-102');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    // Add your code below this line
    const scale = d3.scaleLinear();



    // Add your code above this line
    const output = scale(50);
    d3.select("body")
      .append("h2")
      .text(output);
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const scale = d3.scaleLinear();
    scale.domain([250, 500])
    scale.range([10, 150])
    const output = scale(50);
    d3.select("body")
      .append("h2")
      .text(output);
  </script>
</body>
```
