---
id: bd7158d8c242eddfaeb5bd13
title: بناء صفحة ويب معرض أعمال شخصية
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301143
dashedName: build-a-personal-portfolio-webpage
---

# --description--

**الهدف:** بناء تطبيق يشبه وظيفيًا <a href="https://personal-portfolio.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://personal-portfolio.freecodecamp.rocks</a>. **لا تنسخ هذا المشروع التجريبي**.

**قصص المستخدم:**

1. يجب أن يحتوي معرض الأعمال على قسم ترحيب يحمل `id` بقيمة `welcome-section`
1. يجب أن يحتوي قسم الترحيب على عنصر `h1` يتضمّن نصًّا
1. يجب أن يحتوي معرض الأعمال على قسم مشاريع يحمل `id` بقيمة `projects`
1. يجب أن يحتوي قسم المشاريع على عنصر واحد على الأقل يحمل `class` بقيمة `project-tile` لاستيعاب مشروع
1. يجب أن يحتوي قسم المشاريع على رابط واحد على الأقل يؤدي إلى مشروع
1. يجب أن يحتوي معرض الأعمال على شريط تنقل يحمل id بقيمة `navbar`
1. يجب أن يحتوي شريط التنقل على رابط واحد على الأقل يمكنك النقر عليه للانتقال إلى أقسام مختلفة من الصفحة
1. يجب أن يحتوي معرض الأعمال على رابط يحمل id بقيمة `profile-link`، يفتح ملفك الشخصي على GitHub أو freeCodeCamp في علامة تبويب جديدة
1. يجب أن يحتوي معرض الأعمال على استعلام وسائط واحد على الأقل
1. يجب أن يساوي ارتفاع قسم الترحيب ارتفاع إطار العرض
1. يجب أن يبقى شريط التنقل دائمًا في أعلى إطار العرض

نفذ قصص المستخدم واجتز جميع الاختبارات أدناه لإكمال هذا المشروع. أضف لمستك الشخصية. برمجة سعيدة!

**ملاحظة:** تأكد من إضافة `<link rel="stylesheet" href="styles.css">` في ملف HTML لربط ورقة الأنماط وتطبيق CSS الخاص بك

# --hints--

يجب أن يحتوي معرض أعمالك على قسم "ترحيب" بـ `id` يساوي `welcome-section`.

```js
const el = document.getElementById('welcome-section');
assert.isNotNull(el);
```

يجب أن يحتوي عنصر `#welcome-section` على عنصر `h1`.

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1').length,
  0,
  'Welcome section should contain an h1 element '
);
```

يجب ألا يحتوي عنصر `#welcome-section` على أي عناصر `h1` فارغة.

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1')?.[0]?.innerText?.length,
  0,
  'h1 element in welcome section should contain your name or camper ' + 'name '
);
```

يجب أن يحتوي معرض أعمالك على قسم "مشاريع" بـ `id` يساوي `projects`.

```js
const el = document.getElementById('projects');
assert.isNotNull(el);
```

يجب أن يحتوي معرض الأعمال على عنصر واحد على الأقل يحمل الصنف `project-tile`.

```js
assert.isAbove(document.querySelectorAll('#projects .project-tile').length, 0);
```

يجب أن يحتوي عنصر `#projects` على عنصر `a` واحد على الأقل.

```js
assert.isAbove(document.querySelectorAll('#projects a').length, 0);
```

يجب أن يحتوي معرض أعمالك على شريط تنقل بـ `id` يساوي `navbar`.

```js
const el = document.getElementById('navbar');
assert.isNotNull(el);
```

يجب أن يحتوي عنصر `#navbar` على عنصر `a` واحد على الأقل خاصية `href` تبدأ بـ `#`.

```js
const links = [...document.querySelectorAll('#navbar a')].filter(
  nav => (nav?.getAttribute('href') || '').substring(0, 1) === '#'
);

assert.isAbove(links.length, 0, 'Navbar should contain an anchor link ');
```

يجب أن يحتوي معرض أعمالك على عنصر `a` بـ `id` يساوي `profile-link`.

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

يجب أن يحتوي عنصر `#profile-link` على خاصية `target` بقيمة `_blank`.

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

يجب أن يستخدم معرض أعمالك استعلام وسائط واحد على الأقل.

```js
const htmlSourceAttr = Array.from(document.querySelectorAll('source')).map(el => el.getAttribute('media'))
const cssCheck = new __helpers.CSSHelp(document).getCSSRules('media')
assert.isTrue(cssCheck.length > 0 || htmlSourceAttr.length > 0);
```

يجب أن يكون عنصر `#navbar` دائمًا في أعلى إطار العرض.

```js
  const timeout = milliseconds =>
    new Promise(resolve => setTimeout(resolve, milliseconds));

  const navbar = document.getElementById('navbar');
  assert.approximately(
    navbar?.getBoundingClientRect().top,
    0,
    15,
    "Navbar's parent should be body and it should be at the top of " +
      'the viewport '
  );

  window.scroll(0, 500);

  await timeout(1);

  assert.approximately(
    navbar?.getBoundingClientRect().top,
    0,
    15,
    'Navbar should be at the top of the viewport even after ' + 'scrolling '
  );
  window.scroll(0, 0);
```

# --seed--

## --seed-contents--

```html

```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css">
    <title>Personal Portfolio</title>
</head>
<body>
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<!--Font Reference-->
<nav id="navbar">
  <a href="#projects">Projects</a> |
  <a href="#contact">Contact me</a>
</nav>
<main>
  <section id="welcome-section">
    <br>
    <h1>It's me!</h1>
    <img src="https://s.cdpn.io/profiles/user/4369153/512.jpg?1587151780" height=100px>
    <h2>Naomi Carrigan</h2>
    <p>Welcome to my portfolio page!</p>
  </section><hr>
  <section id="projects">
    <h1>Projects</h1>
    <h2><a href="https://codepen.io/nhcarrigan">Here's what I've worked on!</a></h2>
    <p class="project-tile">
<iframe height="265" style="width: 25;" scrolling="no" title="Algebraic Concepts" src="https://codepen.io/nhcarrigan/embed/preview/NWGrWBR?height=265&theme-id=dark&default-tab=result" frameborder="no" allowtransparency="true" allowfullscreen="true" loading="lazy">
  See the Pen <a href='https://codepen.io/nhcarrigan/pen/NWGrWBR'>Algebraic Concepts</a> by Naomi Carrigan
  (<a href='https://codepen.io/nhcarrigan'>@nhcarrigan</a>) on <a href='https://codepen.io'>CodePen</a>.
</iframe>
<iframe height="265" style="width: 25;" scrolling="no" title="Pokemon Daycare Service" src="https://codepen.io/nhcarrigan/embed/preview/mdeEbeq?height=265&theme-id=dark&default-tab=result" frameborder="no" allowtransparency="true" allowfullscreen="true" loading="lazy">
  See the Pen <a href='https://codepen.io/nhcarrigan/pen/mdeEbeq'>Pokemon Daycare Service</a> by Naomi Carrigan
  (<a href='https://codepen.io/nhcarrigan'>@nhcarrigan</a>) on <a href='https://codepen.io'>CodePen</a>.
</iframe>
<iframe height="265" style="width: 25;" scrolling="no" title="Togepi Fan Club" src="https://codepen.io/nhcarrigan/embed/preview/vYNGoBE?height=265&theme-id=dark&default-tab=result" frameborder="no" allowtransparency="true" allowfullscreen="true" loading="lazy">
  See the Pen <a href='https://codepen.io/nhcarrigan/pen/vYNGoBE'>Togepi Fan Club</a> by Naomi Carrigan
  (<a href='https://codepen.io/nhcarrigan'>@nhcarrigan</a>) on <a href='https://codepen.io'>CodePen</a>.
</iframe>
<iframe height="265" style="width: 25;" scrolling="no" title="Togepi" src="https://codepen.io/nhcarrigan/embed/preview/yLYOWEN?height=265&theme-id=dark&default-tab=result" frameborder="no" allowtransparency="true" allowfullscreen="true" loading="lazy">
  See the Pen <a href='https://codepen.io/nhcarrigan/pen/yLYOWEN'>Togepi</a> by Naomi Carrigan
  (<a href='https://codepen.io/nhcarrigan'>@nhcarrigan</a>) on <a href='https://codepen.io'>CodePen</a>.
</iframe>
    </p></section><hr>
  <section id="contact">
    <h1>Contact me!</h1>
    <h2>Use the links below to get in touch.</h2>
    <p><a href="https://www.freecodecamp.org/nhcarrigan" id="profile-link" target="_blank" rel="noopener noreferrer">FreeCodeCamp.org</a> | <a href="https://github.com/nhcarrigan" id="github-link" target="_blank" rel="noopener noreferrer">GitHub</a> | <a href="https://www.facebook.com/nhcarrigan" id="facebook-link" target="_blank" rel="noopener noreferrer">Facebook</a> | <a href="https://www.linkedin.com/in/Naomi-l-carrigan/" id="linkedin-link" target="_blank" rel="noopener noreferrer">LinkedIn</a>
  </section>
<footer><a href="../">Return to Project List</a> | <a href="https://www.nhcarrigan.com">Return to HomePage</a></footer>
</body>
</html>
```

```css
nav {
  position: fixed;
  width: 100%;
  text-align: right;
  font-size: 24pt;
  top: 0%;
  right: 5px;
  background-color: #000000;
  color: #ffffff;
}
@media (max-width: 500px) {
  nav {
    display: none;
  }
}
a {
  color: #ffffff;
}
main {
  text-align: center;
  background-color: black;
  font-family: Pacifico;
}
h1 {
  font-size: 48pt;
}
h2 {
  font-size: 24pt;
}
p {
  font-size: 12pt;
}
#welcome-section {
  background-color: #251a4a;
  color: #ffffff;
  display: table-cell;
  vertical-align: middle;
  width: 100vw;
  height: 100vh;
}
#projects {
  background-color: #060a9c;
  color: #ffffff;
  display: table-cell;
  vertical-align: middle;
  width: 100vw;
  height: 100vh;
}
#contact {
  background-color: #03300b;
  color: #ffffff;
  display: table-cell;
  vertical-align: middle;
  width: 100vw;
  height: 100vh;
}
```

---

```html
<head><style>@media (max-width: 500px){nav{display: none;}}</style></head><body><nav id="navbar"><a href="#projects">text</a> | </nav><main><section id="welcome-section"><h1>text</h1></section><hr><section id="projects"><h1>Projects</h1><h2 class="project-tile"><a id="profile-link" target="_blank" href="https://freecodecamp.org">text</a></h2></section><hr></body></html>
```

```css

```
