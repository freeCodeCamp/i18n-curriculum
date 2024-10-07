---
id: 587d778a367417b2b2512aa5
title: تحسين إمكانية الوصول إلى الرسم البياني مع العنصر figure
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJMqtE'
forumTopicId: 301015
dashedName: improve-chart-accessibility-with-the-figure-element
---

# --description--

HTML5 introduced the `figure` element and the related `figcaption`. Used together, these items wrap a visual representation (like an image, diagram, or chart) along with its caption. Wrapping these elements together gives a two-fold accessibility boost by semantically grouping related content and providing a text alternative explaining the `figure`.

وبالنسبة لأشكال تمثيل البيانات مثل الرسوم البيانية، يمكن استخدام عنوان للشرح بإيجاز عن الاتجاهات أو الاستنتاجات بالنسبة للمستخدمين ذوي العاهات البصرية. وهناك تحد آخر يغطي كيفية نقل نسخة الجدول من بيانات المخطط خارج الشاشة (باستخدام CSS) لمستخدمي قارئ الشاشة.

مثال - لاحظ أن `figcaption` يدخل في `figure` ويمكن الجمع بينه وبين عناصر أخرى:

```html
<figure>
  <img src="roundhouseDestruction.jpeg" alt="Photo of Camper Cat executing a roundhouse kick">
  <br>
  <figcaption>
    Master Camper Cat demonstrates proper form of a roundhouse kick.
  </figcaption>
</figure>
```

# --instructions--

Camper Cat شاق في العمل لإنشاء مخطط أعمدة مكدسة يبين مقدار الوقت في الأسبوع لقضاء التدريب على السرقة، القتال والأسلحة. ساعده على هيكلة صفحته بشكل أفضل عن طريق تغيير علامة `div` التي اعتدها إلى `figure` العلامة، و العلامة `p` التي تحيط بالعبارة التوضيحية لـ `figcaption`.

# --hints--

يجب أن يحتوي الكود الخاص بك على وسم (tag) واحد فقط من نوع `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure') , 1);
```

يجب أن يحتوي الكود الخاص بك على tag واحد فقط من نوع `figcaption`.

```js
assert.lengthOf(document.querySelectorAll('figcaption') , 1);
```

يجب ألا يحتوي الكود الخاص بك على أي وسم `div`.

```js
assert.lengthOf(document.querySelectorAll('div'), 0);
```

يجب ألا يحتوي الكود الخاص بك علي اي وسوم `p`.

```js
assert.lengthOf(document.querySelectorAll('p') , 0);
```

وسم `figcaption` يجب ان child لوسم `figure`.

```js
const figure = document.querySelector('figure');
const children = figure?.querySelectorAll(`:scope ${'figcaption'}`);
assert.lengthOf(children, 1);
```

يجب أن يحتوي العنصر `figure` على وسم إغلاق.

```js
assert.isTrue(
    code.match(/<\/figure>/g)?.length === code.match(/<figure>/g)?.length
);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Training</h1>
    <nav>
      <ul>
        <li><a href="#stealth">Stealth &amp; Agility</a></li>
        <li><a href="#combat">Combat</a></li>
        <li><a href="#weapons">Weapons</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section>

      <!-- Only change code below this line -->
      <div>
        <!-- Stacked bar chart will go here -->
        <br>
        <p>Breakdown per week of time to spend training in stealth, combat, and weapons.</p>
      </div>
      <!-- Only change code above this line -->

    </section>
    <section id="stealth">
      <h2>Stealth &amp; Agility Training</h2>
      <article><h3>Climb foliage quickly using a minimum spanning tree approach</h3></article>
      <article><h3>No training is NP-complete without parkour</h3></article>
    </section>
    <section id="combat">
      <h2>Combat Training</h2>
      <article><h3>Dispatch multiple enemies with multithreaded tactics</h3></article>
      <article><h3>Goodbye world: 5 proven ways to knock out an opponent</h3></article>
    </section>
    <section id="weapons">
      <h2>Weapons Training</h2>
      <article><h3>Swords: the best tool to literally divide and conquer</h3></article>
      <article><h3>Breadth-first or depth-first in multi-weapon training?</h3></article>
    </section>
  </main>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Training</h1>
    <nav>
      <ul>
        <li><a href="#stealth">Stealth &amp; Agility</a></li>
        <li><a href="#combat">Combat</a></li>
        <li><a href="#weapons">Weapons</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section>
      <figure>
        <!-- Stacked bar chart will go here -->
        <br>
        <figcaption>Breakdown per week of time to spend training in stealth, combat, and weapons.</figcaption>
      </figure>
    </section>
    <section id="stealth">
      <h2>Stealth &amp; Agility Training</h2>
      <article><h3>Climb foliage quickly using a minimum spanning tree approach</h3></article>
      <article><h3>No training is NP-complete without parkour</h3></article>
    </section>
    <section id="combat">
      <h2>Combat Training</h2>
      <article><h3>Dispatch multiple enemies with multithreaded tactics</h3></article>
      <article><h3>Goodbye world: 5 proven ways to knock out an opponent</h3></article>
    </section>
    <section id="weapons">
      <h2>Weapons Training</h2>
      <article><h3>Swords: the best tool to literally divide and conquer</h3></article>
      <article><h3>Breadth-first or depth-first in multi-weapon training?</h3></article>
    </section>
  </main>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
