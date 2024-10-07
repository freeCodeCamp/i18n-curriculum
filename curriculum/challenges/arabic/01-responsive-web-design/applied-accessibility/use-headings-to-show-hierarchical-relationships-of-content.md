---
id: 587d774d367417b2b2512a9e
title: استخدم العناوين لعرض علاقات تسلسل المحتوى
challengeType: 0
videoUrl: 'https://scrimba.com/c/cqVEktm'
forumTopicId: 301026
dashedName: use-headings-to-show-hierarchical-relationships-of-content
---

# --description--

Headings (`h1` through `h6` elements) are workhorse tags that help provide structure and labeling to your content. Screen readers can be set to read only the headings on a page so the user gets a summary. This means it is important for the heading tags in your markup to have semantic meaning and relate to each other, not be picked merely for their size values.

نقصد بمصطلح المعنى التوضيحي *Semantic meaning*، بأن الوسم المُستخدم في المحتوى يجب أن يدل على نوع المعلومات التي يحتويها.

على سبيل المثال، إن كنت تكتب مقالةً تحتوي على مقدمة ومحتوى واستنتاج، لن يكون من المنطقي وضع الاستنتاج كقسم فرعي من المحتوى في مخطط المقال. فمن المفروض أن يكون موجودًا في قسمه الخاص. يجب أن تكون وسوم العناوين في صفحة الويب بالترتيب بالمثل، بحيث تدلّ على علاقات التسلسل الهرمي للمحتوى.

نحصل على أقسام جديدة عند استخدام عناوين برتبة متساوية (أو أكبر) للعنوان الذي يسبقها، ونحصل على أقسام فرعية باستخدام عناوين برتبة أصغر من العنوان الذي يسبقها.

على سبيل المثال، ستشوّش صفحة تحتوي على عنصر `h2` متبوعًا بعدّة بعدّة أقسام فرعية بعنوان `h4` تركيز مستخدم قارئ الشاشة. لربّما يكون استخدام هذا النوع من الوسوم جذابًا نظرًا إلى الخيارات الستّ الواسعة وأن شكلها جيّد عند استعراضها باستخدام المتصفح، إلا أنه بإمكانك استخدام CSS للتعديل على أحجام العناوين النسبية.

أخيرًا، يجب على كلّ صفحة أن تحتوي دائمًا على عنصر `h1` واحد فقط، الذي يدل على الموضوع الرئيس لمحتوى هذه الصفحة. يُستخدم هذا العنوان -بالإضافة إلى العناوين الأخرى- من قبل محركات البحث حتى تستطيع فهم موضوع الصفحة.

# --instructions--

يريد Camper Cat صفحة مخصصة على موقعه الإلكتروني لتعليم النينجا. ساعده في تصحيح العناوين حتى يصبح هيكل الصفحة ذو معنى دلالي للمحتوى، وأن يحتوي على العلاقات الصحيحة بين الأب والإبن ضمن أقسام الصفحة. عدّل جميع وسوم `h5` إلى رتبة العنوان الصحيحة للدلالة على أن الفقرات أقسام فرعية من العناوين `h2`. واستخدم وسوم `h3` لتحقيق ذلك.

# --hints--

يجب أن تحتوي شيفرتك البرمجية على 6 عناصر `h3`.

```js
assert.lengthOf(document.querySelectorAll('h3') , 6);
```

يجب أن تحتوي شيفرتك البرمجية على 6 وسوم إغلاق للعنوان `h3`.

```js
assert.lengthOf((code.match(/\/h3/g) || []) ,6);
```

يجب ألّا تحتوي شيفرتك البرمجية على أي عناصر `h5`.

```js
assert.isEmpty(document.querySelectorAll('h5'));
```

يجب ألّا تحتوي شيفرتك البرمجية على أي وسوم إغلاق للعنوان `h5`.

```js
assert.notMatch(code, /\/h5/);
```

# --seed--

## --seed-contents--

```html
<h1>How to Become a Ninja</h1>
<main>
  <h2>Learn the Art of Moving Stealthily</h2>
  <h5>How to Hide in Plain Sight</h5>
  <h5>How to Climb a Wall</h5>

  <h2>Learn the Art of Battle</h2>
  <h5>How to Strengthen your Body</h5>
  <h5>How to Fight like a Ninja</h5>

  <h2>Learn the Art of Living with Honor</h2>
  <h5>How to Breathe Properly</h5>
  <h5>How to Simplify your Life</h5>
</main>
```

# --solutions--

```html
<h1>How to Become a Ninja</h1>
<main>
  <h2>Learn the Art of Moving Stealthily</h2>
  <h3>How to Hide in Plain Sight</h3>
  <h3>How to Climb a Wall</h3>

  <h2>Learn the Art of Battle</h2>
  <h3>How to Strengthen your Body</h3>
  <h3>How to Fight like a Ninja</h3>

  <h2>Learn the Art of Living with Honor</h2>
  <h3>How to Breathe Properly</h3>
  <h3>How to Simplify your Life</h3>
</main>
```
