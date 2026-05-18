---
id: bd7158d8c242eddfaeb5bd13
title: Jenga ukurasa wa mtandao wa portfolio binafsi
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301143
dashedName: build-a-personal-portfolio-webpage
---

# --description--

**Lengo:** Jenga programu inayofanana kiutendaji na <a href="https://personal-portfolio.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://personal-portfolio.freecodecamp.rocks</a>. **Usikopi mradi huu wa maonyesho**.

**Hadithi za mtumizi:**

1. Portfolio yako inapaswa kuwa na sehemu ya kukaribisha yenye `id` ya `welcome-section`
1. Sehemu ya kukaribisha inapaswa kuwa na kipengele cha `h1` chenye maandishi
1. Portfolio yako inapaswa kuwa na sehemu ya miradi yenye `id` ya `projects`
1. Sehemu ya miradi inapaswa kuwa na angalau kipengele kimoja chenye `class` ya `project-tile` kushikilia mradi
1. Sehemu ya miradi inapaswa kuwa na angalau kiungo kimoja cha mradi
1. Portfolio yako inapaswa kuwa na navbar yenye kitambulisho cha `navbar`
1. Navbar inapaswa kuwa na angalau kiungo kimoja ambacho unaweza kubofya kuunganisha na sehemu tofauti za ukurasa
1. Portfolio yako inapaswa kuwa na kiungo chenye kitambulisho cha `profile-link`, ambacho hufungua wasifu wako wa GitHub au freeCodeCamp kwenye kichupo kipya
1. Portfolio yako inapaswa kuwa na angalau media query moja
1. Urefu wa sehemu ya kukaribisha unapaswa kuwa sawa na urefu wa eneo la kuona
1. Navbar inapaswa kuwa kila wakati juu ya eneo la kuona

Kamilisha hadithi za mtumizi na pita vipimo vyote hapa chini ili kumaliza mradi huu. Toa mtindo wako binafsi. Furahia kuandika msimbo!

**Kumbuka:** Hakikisha unaongeza `<link rel="stylesheet" href="styles.css">` katika HTML yako kuunganisha na karatasi yako ya mtindo na kutumia CSS yako

# --hints--

Portfolio yako inapaswa kuwa na sehemu ya "Karibu" yenye `id` ya `welcome-section`.

```js
const el = document.getElementById('welcome-section');
assert.isNotNull(el);
```

Kipengele chako cha `#welcome-section` kinapaswa kuwa na kipengele cha `h1` ndani yake.

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1').length,
  0,
  'Welcome section should contain an h1 element '
);
```

Hupaswi kuwa na vipengele vya `h1` vilivyo tupu ndani ya kipengele cha `#welcome-section`.

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1')?.[0]?.innerText?.length,
  0,
  'h1 element in welcome section should contain your name or camper ' + 'name '
);
```

Unapaswa kuwa na sehemu ya "Miradi" yenye `id` ya `projects`.

```js
const el = document.getElementById('projects');
assert.isNotNull(el);
```

Portfolio yako inapaswa kuwa na angalau kipengele kimoja chenye darasa la `project-tile`.

```js
assert.isAbove(document.querySelectorAll('#projects .project-tile').length, 0);
```

Kipengele chako cha `#projects` kinapaswa kuwa na angalau kipengele kimoja cha `a` ndani yake.

```js
assert.isAbove(document.querySelectorAll('#projects a').length, 0);
```

Portfolio yako inapaswa kuwa na navbar yenye `id` ya `navbar`.

```js
const el = document.getElementById('navbar');
assert.isNotNull(el);
```

Kipengele chako cha `#navbar` kinapaswa kuwa na angalau kipengele kimoja cha `a` ambacho sifa ya kipengele `href` inaanza na `#`.

```js
const links = [...document.querySelectorAll('#navbar a')].filter(
  nav => (nav?.getAttribute('href') || '').substring(0, 1) === '#'
);

assert.isAbove(links.length, 0, 'Navbar should contain an anchor link ');
```

Portfolio yako inapaswa kuwa na kipengele cha `a` chenye `id` ya `profile-link`.

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

Kipengele chako cha `#profile-link` kinapaswa kuwa na sifa ya kipengele `target` yenye thamani ya `_blank`.

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

Portfolio yako inapaswa kutumia angalau media query moja.

```js
const htmlSourceAttr = Array.from(document.querySelectorAll('source')).map(el => el.getAttribute('media'))
const cssCheck = new __helpers.CSSHelp(document).getCSSRules('media')
assert.isTrue(cssCheck.length > 0 || htmlSourceAttr.length > 0);
```

Kipengele chako cha `#navbar` kinapaswa kuwa kila wakati juu ya eneo la kuona.

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
