---
id: 587d7fa8367417b2b2512bcb
title: تعلم عن SVG في D3
challengeType: 6
forumTopicId: 301489
dashedName: learn-about-svg-in-d3
---

# --description--

<dfn>SVG</dfn> stands for <dfn>Scalable Vector Graphics</dfn>.

هنا يعني مصطلح "scalable" أنه إذا قمت بتكبير أو تصغير كائن ما، فلن يبدو ذلك pixelated أو منقط. إنه يغير المقياس حسب نظام العرض، سواء كان على شاشة محمول صغيرة أو شاشة تلفزيون كبيرة.

يستخدم SVG لصنع أشكال هندسية عادية. وبما أن خرائط D3 تحوي بيانات في صورة بصرية، فإنها تستخدم SVG لإنشاء أشكال للتصور. أشكال SVG لصفحة ويب يجب أن تذهب ضمن علامة HTML المسمَّية `svg`.

يمكن تغيير مقياس CSS عندما تستخدم التصميمات وحدات نسبية (مثل `vh` و `vw` أو النسب المئوية)، ولكن استخدام SVG أكثر مرونة لبناء تصورات البيانات.

# --instructions--

أضف node (عقدة) `svg` إلى `body` باستخدام `append()`. أعطيه سمة `width` بقيمة الثابت المقدمة `w` و سمة `height` بقيمة الثابت المقدمة `h` باستخدام طرق `attr()` أو `style()` لكل منهما. سترى ذلك في الإنتاج لأنه يوجد `background-color` من اللون الوردي المطبق عليه في علامة `style`.

**ملاحظة:** عند استخدام `attr()`، سمات العرض والارتفاع لا تحتوي على وحدات. هذه هي كتلة بناء التحجيم - سيكون للعنصر دائما نسبة عرض إلى ارتفاع 5:1، بغض النظر عن مستوى التكبير.

# --hints--

يجب أن تحتوي وثيقتك على عنصر `svg` واحد.

```js
assert($('svg').length == 1);
```

يجب أن يحتوي عنصر `svg` على سمة `width` تم تعيينها إلى `500` أو تم تصميمها ليكون عرضها `500px`.

```js
assert($('svg').attr('width') == '500' || $('svg').css('width') == '500px');
```

يجب أن يحتوي عنصر `svg` على سمة `height` تم تعيينها إلى `100` أو تم تصميمها ليكون عرضها `100px`.

```js
assert($('svg').attr('height') == '100' || $('svg').css('height') == '100px');
```

# --seed--

## --seed-contents--

```html
<style>
  svg {
    background-color: pink;
  }
</style>
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3.select("body")
                  // Add your code below this line



                  // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<style>
  svg {
    background-color: pink;
  }
</style>
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h)
  </script>
</body>
```
