---
id: 587d778a367417b2b2512aa6
title: تحسين إمكانية الوصول إلى حقل النموذج مع عنصر label
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJMMAN'
forumTopicId: 301016
dashedName: improve-form-field-accessibility-with-the-label-element
---

# --description--

Improving accessibility with semantic HTML markup applies to using both appropriate tag names and attributes. The next several challenges cover some important scenarios using attributes in forms.

وسم `label` تغلف النص لعنصر تحكم استمارة محددة، عادة الاسم أو التسمية لاختيار. هذه الروابط تعني العنصر وتجعل الشكل أكثر قابلية للقراءة. السمة `for` على علامة `label` تربط بشكل صريح أن `label` مع عنصر التحكم في الاستمارة ويستخدمها قارئ الشاشة.

لقد تعلمت عن radio buttons وتسميتها في درس في قسم HTML Basic. في ذلك الدرس، قمنا بتغليف عنصر radio button داخل عنصر `label` جنبا إلى جنب مع نص label لجعل النص قابل للنقر. طريقة أخرى لتحقيق هذا هو استخدام السمة `for` كما هو موضح في هذا الدرس.

قيمة `for` السمة يجب أن تكون نفس قيمة `id` سمة التحكم في الشكل. على سبيل المثال:

```html
<form>
  <label for="name">Name:</label>
  <input type="text" id="name" name="name">
</form>
```

# --instructions--

تنتظر Camper Cat الكثير من الاهتمام في مشاركاته المدونة المدروسة وترغب في تضمين نموذج تسجيل البريد الإلكتروني. أضف `for` سمة على البريد الإلكتروني `label` التي تطابق `id` على `input`.

# --hints--

يجب أن يحتوي الكود الخاص بك علي attribute من نوع `for` في وسم ال `label` و تعين قيمه فارغه.

```js
assert.isNotEmpty(document.querySelector('label')?.getAttribute('for'));
```

يجب أن تتطابق قيمة الرمز ` for ` مع قيمة ` id ` في ` إدخال البريد الإلكتروني </ code>.</p>

<pre><code class="js">assert.equal(document.querySelector('label')?.getAttribute('for'), 'email');
`</pre>

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <section>
    <form>
      <p>Sign up to receive Camper Cat's blog posts by email here!</p>


      <label>Email:</label>
      <input type="text" id="email" name="email">


      <input type="submit" name="submit" value="Submit">
    </form>
  </section>
  <article>
    <h2>The Garfield Files: Lasagna as Training Fuel?</h2>
    <p>The internet is littered with varying opinions on nutritional paradigms, from catnip paleo to hairball cleanses. But let's turn our attention to an often overlooked fitness fuel, and examine the protein-carb-NOM trifecta that is lasagna...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Is Chuck Norris a Cat Person?</h2>
    <p>Chuck Norris is widely regarded as the premier martial artist on the planet, and it's a complete coincidence that anyone who disagrees with this fact mysteriously disappears soon after. But the real question is, is he a cat person?...</p>
  </article>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <section>
    <form>
      <p>Sign up to receive Camper Cat's blog posts by email here!</p>


      <label for="email">Email:</label>
      <input type="text" id="email" name="email">


      <input type="submit" name="submit" value="Submit">
    </form>
  </section>
  <article>
    <h2>The Garfield Files: Lasagna as Training Fuel?</h2>
    <p>The internet is littered with varying opinions on nutritional paradigms, from catnip paleo to hairball cleanses. But let's turn our attention to an often overlooked fitness fuel, and examine the protein-carb-NOM trifecta that is lasagna...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Is Chuck Norris a Cat Person?</h2>
    <p>Chuck Norris is widely regarded as the premier martial artist on the planet, and it's a complete coincidence that anyone who disagrees with this fact mysteriously disappears soon after. But the real question is, is he a cat person?...</p>
  </article>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
