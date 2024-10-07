---
id: 587d778d367417b2b2512aaa
title: جعل العناصر مرئية فقط لقارئ الشاشة باستخدام CSS مخصص
challengeType: 0
videoUrl: 'https://scrimba.com/c/cJ8QGkhJ'
forumTopicId: 301020
dashedName: make-elements-only-visible-to-a-screen-reader-by-using-custom-css
---

# --description--

Have you noticed that all of the applied accessibility challenges so far haven't used any CSS? This shows the importance of using a logical document outline and semantically meaningful tags around your content before introducing the visual design aspect.

ومع ذلك، فإن سحر CSS يمكن أيضا أن يحسن إمكانية الوصول إلى الصفحة الخاصة بك عندما تريد إخفاء محتوى بصري مخصص فقط لقراء الشاشة. يحدث هذا عندما تكون المعلومات في شكل مرئي (مثل الرسم البياني)، لكن مستخدمي قارئ الشاشة يحتاجون إلى عرض تجريبي بديل (مثل الجدول) للوصول إلى البيانات. يستخدم CSS لوضع عناصر قارئ الشاشة فقط خارج المنطقة البصرية لنافذة المتصفح.

إليك مثال على قواعد CSS التي تحقق ذلك:

```css
.sr-only {
  position: absolute;
  left: -10000px;
  width: 1px;
  height: 1px;
  top: auto;
  overflow: hidden;
}
```

**ملاحظة:** طرق و أساليب CSS التالية لن تفعل الشيء نفسه:

<ul>
<li><code>display: none;</code> or <code>visibility: hidden;</code> hides content for everyone, including screen reader users</li>
<li>قيم الصفر لحجم البكسل، مثل width <code>: 0px؛ height: 0px؛</code> يزيل هذا العنصر من تدفق المستند الخاص بك، مما يعني أن قراء الشاشة سيتجاهلون ذلك</li>
</ul>

# --instructions--

أنشأ Camper Cat مخطط أعمدة مكدسة رائع جدا لصفحة التدريب، و وضع البيانات في جدول لمستخدميه ذوي الإعاقة البصرية. الجدول يحتوي فعلًا على فصل `sr-only` ولكن قواعد CSS لم تملأ بعد. إعطاء `position` قيمة `absolute` ثم إعطاء `left` قيمة `-10000px` ، و إعطاء كلاً من`width` و `height` قيمة `1px`.

# --hints--

يجب على تعليماتك البرمجية تعيين خاصية `position` من صف `sr-only` إلى قيمة `absolute`.

```js
const srOnly = document.querySelector('.sr-only');
const position = window.getComputedStyle(srOnly).position; 
assert.equal(position, 'absolute');
```

يجب على تعليماتك البرمجية تعيين خاصية `left` من صف `sr-only` إلى قيمة `-10000px`.

```js
const srOnly = document.querySelector('.sr-only');
const left = window.getComputedStyle(srOnly).left;
assert.equal(left, '-10000px');
```

يجب على تعليماتك البرمجية تعيين خاصية `width` من صف `sr-only` إلى قيمة `-1px`.

```js
assert.match(code , /width:\s*?1px/gi);
```

يجب على تعليماتك البرمجية تعيين خاصية `height` من صف `sr-only` إلى قيمة `-1px`.

```js
assert.match(code , /height:\s*?1px/gi);
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
  .sr-only {
    position: ;
    left: ;
    width: ;
    height: ;
    top: auto;
    overflow: hidden;
  }
  </style>
</head>
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
  <section>
    <h2>Master Camper Cat's Beginner Three Week Training Program</h2>
    <figure>
      <!-- Stacked bar chart of weekly training -->
      <p>[Stacked bar chart]</p>
      <br />
      <figcaption>Breakdown per week of time to spend training in stealth, combat, and weapons.</figcaption>
    </figure>
    <table class="sr-only">
      <caption>Hours of Weekly Training in Stealth, Combat, and Weapons</caption>
      <thead>
        <tr>
          <th></th>
          <th scope="col">Stealth &amp; Agility</th>
          <th scope="col">Combat</th>
          <th scope="col">Weapons</th>
          <th scope="col">Total</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">Week One</th>
          <td>3</td>
          <td>5</td>
          <td>2</td>
          <td>10</td>
        </tr>
        <tr>
          <th scope="row">Week Two</th>
          <td>4</td>
          <td>5</td>
          <td>3</td>
          <td>12</td>
        </tr>
        <tr>
          <th scope="row">Week Three</th>
          <td>4</td>
          <td>6</td>
          <td>3</td>
          <td>13</td>
        </tr>
      </tbody>
    </table>
  </section>
  <section id="stealth">
    <h2>Stealth &amp; Agility Training</h2>
    <article><h3>Climb foliage quickly using a minimum spanning tree approach</h3></article>
    <article><h3>No training is NP-complete without parkour</h3></article>
  </section>
  <section id="combat">
    <h2>Combat Training</h2>
    <article><h3>Dispatch multiple enemies with multithreaded tactics</h3></article>
    <article><h3>Goodbye, world: 5 proven ways to knock out an opponent</h3></article>
  </section>
  <section id="weapons">
    <h2>Weapons Training</h2>
    <article><h3>Swords: the best tool to literally divide and conquer</h3></article>
    <article><h3>Breadth-first or depth-first in multi-weapon training?</h3></article>
  </section>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<head>
  <style>
  .sr-only {
    position: absolute;
    left: -10000px;
    width: 1px;
    height: 1px;
    top: auto;
    overflow: hidden;
  }
  </style>
</head>
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
  <section>
    <h2>Master Camper Cat's Beginner Three Week Training Program</h2>
    <figure>
      <!-- Stacked bar chart of weekly training -->
      <p>[Stacked bar chart]</p>
      <br />
      <figcaption>Breakdown per week of time to spend training in stealth, combat, and weapons.</figcaption>
    </figure>
    <table class="sr-only">
      <caption>Hours of Weekly Training in Stealth, Combat, and Weapons</caption>
      <thead>
        <tr>
          <th></th>
          <th scope="col">Stealth &amp; Agility</th>
          <th scope="col">Combat</th>
          <th scope="col">Weapons</th>
          <th scope="col">Total</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">Week One</th>
          <td>3</td>
          <td>5</td>
          <td>2</td>
          <td>10</td>
        </tr>
        <tr>
          <th scope="row">Week Two</th>
          <td>4</td>
          <td>5</td>
          <td>3</td>
          <td>12</td>
        </tr>
        <tr>
          <th scope="row">Week Three</th>
          <td>4</td>
          <td>6</td>
          <td>3</td>
          <td>13</td>
        </tr>
      </tbody>
    </table>
  </section>
  <section id="stealth">
    <h2>Stealth &amp; Agility Training</h2>
    <article><h3>Climb foliage quickly using a minimum spanning tree approach</h3></article>
    <article><h3>No training is NP-complete without parkour</h3></article>
  </section>
  <section id="combat">
    <h2>Combat Training</h2>
    <article><h3>Dispatch multiple enemies with multithreaded tactics</h3></article>
    <article><h3>Goodbye, world: 5 proven ways to knock out an opponent</h3></article>
  </section>
  <section id="weapons">
    <h2>Weapons Training</h2>
    <article><h3>Swords: the best tool to literally divide and conquer</h3></article>
    <article><h3>Breadth-first or depth-first in multi-weapon training?</h3></article>
  </section>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
