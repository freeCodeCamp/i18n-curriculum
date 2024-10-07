---
id: 587d778e367417b2b2512aab
title: تحسين القدرة على القراءة مع نص شديد التباين
challengeType: 0
videoUrl: 'https://scrimba.com/c/cKb3nCq'
forumTopicId: 301017
dashedName: improve-readability-with-high-contrast-text
---

# --description--

Low contrast between the foreground and background colors can make text difficult to read. Sufficient contrast improves your content's readability, but what exactly does "sufficient" mean?

توصي المبادئ التوجيهية للوصول إلى محتوى الويب (WCAG) بنسبة تناقض قدرها 4.5 إلى 1 على الأقل بالنسبة للنص العادي. وتحسب النسبة بمقارنة قيم المساحة النسبية للونين. ويتراوح هذا بين 1:1 لنفس اللون، أو بدون تناقض، إلى 21:1 للأبيض ضد السود، وهو أكثر التباين أهمية. هناك العديد من أدوات التحقق المتباينة المتاحة عبر الإنترنت والتي تقوم بحساب هذه النسبة لك.

# --instructions--

اختيار Camper Cat للنص الرمادي الخفيف على خلفية بيضاء لمشاركته الأخيرة يحتوي على 1.5:1 نسبة التباين، مما يجعل من الصعب قراءتها. تغيير `color` النص من الرمادي الحالي (`#D3D3D3`) إلى رمادي داكن (`#636363`) لتحسين نسبة التباين إلى 6:1.

# --hints--

يجب أن يغير الكود الخاص بك لون نص `color` لل `body` إلى اللون الرمادي الداكن.

```js
const body = document.querySelector('body');
const bodyColor = window.getComputedStyle(body).color; 
assert(bodyColor == 'rgb(99, 99, 99)');
```

لا ينبغي أن يغير `background-color` `` `body`.

```js
const body = document.querySelector('body');
const backgroundColor = window.getComputedStyle(body).backgroundColor; 
assert.equal(backgroundColor , 'rgb(255, 255, 255)');
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
  body {
    color: #D3D3D3;
    background-color: #FFF;
  }
  </style>
</head>
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>A Word on the Recent Catnip Doping Scandal</h2>
    <p>The influence that catnip has on feline behavior is well-documented, and its use as an herbal supplement in competitive ninja circles remains controversial. Once again, the debate to ban the substance is brought to the public's attention after the high-profile win of Kittytron, a long-time proponent and user of the green stuff, at the Claw of Fury tournament.</p>
    <p>As I've stated in the past, I firmly believe a true ninja's skills must come from within, with no external influences. My own catnip use shall continue as purely recreational.</p>
  </article>
</body>
```

# --solutions--

```html
<head>
  <style>
  body {
    color: #636363;
    background-color: #FFF;
  }
  </style>
</head>
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>A Word on the Recent Catnip Doping Scandal</h2>
    <p>The influence that catnip has on feline behavior is well-documented, and its use as an herbal supplement in competitive ninja circles remains controversial. Once again, the debate to ban the substance is brought to the public's attention after the high-profile win of Kittytron, a long-time proponent and user of the green stuff, at the Claw of Fury tournament.</p>
    <p>As I've stated in the past, I firmly believe a true ninja's skills must come from within, with no external influences. My own catnip use shall continue as purely recreational.</p>
  </article>
</body>
```
