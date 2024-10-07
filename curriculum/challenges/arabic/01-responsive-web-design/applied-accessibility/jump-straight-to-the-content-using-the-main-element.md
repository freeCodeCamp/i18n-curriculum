---
id: 587d774e367417b2b2512a9f
title: الانتقال مباشرة إلى المحتوى باستخدام العنصر main
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7zuE'
forumTopicId: 301018
dashedName: jump-straight-to-the-content-using-the-main-element
---

# --description--

HTML5 introduced several new elements that give developers more options while also incorporating accessibility features. These tags include `main`, `header`, `footer`, `nav`, `article`, and `section`, among others.

بشكل افتراضي، يقوم المتصفح بجعل هذه العناصر مشابهة لعناصر `div` المتواضعة. ومع ذلك، فإن استخدامها، حيثما كان ذلك مناسبا، يعطي معنى إضافيا لعلامتك. ويمكن أن يشير اسم الوسم وحده إلى نوع المعلومات التي يتضمنها، مما يضيف معنى دلالي إلى ذلك المحتوى. ويمكن للتكنولوجيات المساعدة الوصول إلى هذه المعلومات لتوفير موجز صفحات أفضل أو خيارات الملاحة لمستخدميها.

يتم استخدام عنصر `main` لإغلاق المحتوى الرئيسي (تخمنته) ويجب أن يكون هناك واحد فقط لكل صفحة. القصد منه أن يحيط بالمعلومات المتعلقة بالموضوع الرئيسي لصفحتك. ليس المقصود به تضمين العناصر التي تتكرر عبر الصفحات، مثل روابط التنقل أو اللافتات.

تحتوي العلامة `main` أيضا على ميزة بارزة مدمجة يمكن للتكنولوجيا المساعدة استخدامها للتنقل إلى المحتوى الرئيسي بسرعة. إذا كنت قد رأيت رابط "الانتقال إلى المحتوى الرئيسي" في الجزء العلوي من الصفحة، باستخدام وسم `main` تعطي تلقائياً الأجهزة المساعدة تلك الوظيفة.

# --instructions--

Camper Cat لديه بعض الأفكار الكبيرة لصفحة أسلحة النينجا. لمساعدته في إعداد العلامه الخاصه به بإضافه وسم `main` بين وسم `header` و وسم `footer`. ابق علامات `main` فارغة الآن.

# --hints--

يجب أن يحتوي الكود الخاص بك على `main` واحد فقط.

```js
assert.lengthOf(document.querySelectorAll('main'),1);
```

يجب أن تكون العلامات `main` بين علامة الإغلاق `header` وعلامة فتح `footer` علامة.

```js
assert.match(code,/<\/header>\s*?<main>\s*?<\/main>/gi);
```

# --seed--

## --seed-contents--

```html
<header>
  <h1>Weapons of the Ninja</h1>
</header>



<footer></footer>
```

# --solutions--

```html
<header>
  <h1>Weapons of the Ninja</h1>
</header>
<main>

</main>
<footer></footer>
```
