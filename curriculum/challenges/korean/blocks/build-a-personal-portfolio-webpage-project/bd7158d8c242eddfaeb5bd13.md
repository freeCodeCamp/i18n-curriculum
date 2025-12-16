---
id: bd7158d8c242eddfaeb5bd13
title: 개인 포트폴리오 웹페이지 만들기
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301143
dashedName: build-a-personal-portfolio-webpage
---

# --description--

**목표:** <a href="https://personal-portfolio.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://personal-portfolio.freecodecamp.rocks</a> 와 기능적으로 유사한 웹페이지를 만드세요. **이 데모 프로젝트를 복사하지 마세요.**.

**유저 스토리:**

1. 당신의 포트폴리오에는 `welcome-section`이라는 `id`를 가진 환영 섹션이 있어야 합니다.
1. 환영 섹션에는 텍스트가 포함된 `h1` 요소가 있어야 합니다.
1. 당신의 포트폴리오에는 `id`가 `projects`인 프로젝트 섹션이 있어야 합니다.
1. 프로젝트 섹션에는 프로젝트를 담을 수 있는 `class`가 `project-tile`인 요소가 최소 하나 이상 포함되어야 합니다.
1. 프로젝트 섹션에는 최소 하나 이상의 프로젝트 링크가 포함되어야 합니다.
1. 당신의 포트폴리오에는 id가 `navbar`인 네비게이션 바가 있어야 합니다.
1. 네비게이션 바에는 클릭하여 페이지의 다른 섹션으로 이동할 수 있는 링크가 최소 하나 이상 포함되어야 합니다.
1. 포트폴리오에는 `profile-link` 아이디를 가진 링크가 있어야 하며, 이 링크를 클릭하면 깃헙 또는 프리코드캠프 프로필이 새 탭에서 열려야 합니다.
1. 포트폴리오에는 최소 하나 이상의 미디어 쿼리가 포함되어야 합니다.
1. 환영 섹션의 높이는 뷰포트의 높이와 같아야 합니다.
1. 네비게이션 바는 항상 뷰포트의 상단에 위치해야 합니다.

아래의 사용자 스토리를 충족시키고 모든 테스트를 통과하여 이 프로젝트를 완료하세요. 자신만의 개성을 담아 디자인을 꾸며보세요. 즐거운 코딩 하세요!

**참고:** 스타일시트를 연결하고 CSS를 적용하려면 HTML에 `<link rel="stylesheet" href="styles.css">`를 추가하세요.

# --hints--

당신의 포트폴리오에는 `welcome-section`이라는 `id`를 가진 "Welcome" 섹션이 있어야 합니다.

```js
const el = document.getElementById('welcome-section');
assert.isNotNull(el);
```

당신의 `#welcome-section` 요소에는 `h1` 요소가 포함되어 있어야 합니다.

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1').length,
  0,
  'Welcome section should contain an h1 element '
);
```

`#welcome-section` 요소 내에는 빈 `h1` 요소가 있어서는 안 됩니다.

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1')?.[0]?.innerText?.length,
  0,
  'h1 element in welcome section should contain your name or camper ' + 'name '
);
```

"Projects" 섹션에는 `projects`라는 `id`가 있어야 합니다.

```js
const el = document.getElementById('projects');
assert.isNotNull(el);
```

당신의 포트폴리오에는 최소한 하나의 `project-tile` 클래스가 있는 요소가 포함되어야 합니다.

```js
assert.isAbove(document.querySelectorAll('#projects .project-tile').length, 0);
```

`#projects` 요소에는 최소한 하나의 `a` 요소가 포함되어야 합니다.

```js
assert.isAbove(document.querySelectorAll('#projects a').length, 0);
```

당신의 포트폴리오에는 navbar라는 `id`를 가진 `내비게이션 바(navbar)`가 있어야 합니다.

```js
const el = document.getElementById('navbar');
assert.isNotNull(el);
```

`#navbar` 요소에는 `href` 속성이 `#`로 시작하는 최소한 하나의 `a` 요소가 포함되어야 합니다.

```js
const links = [...document.querySelectorAll('#navbar a')].filter(
  nav => (nav?.getAttribute('href') || '').substring(0, 1) === '#'
);

assert.isAbove(links.length, 0, 'Navbar should contain an anchor link ');
```

당신의 포트폴리오에는 `profile-link`라는 `id`를 가진 `a` 요소가 있어야 합니다.

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

`#profile-link` 요소는 `target` 속성으로 `_blank`를 가져야 합니다.

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

당신의 포트폴리오에는 최소한 하나의 미디어 쿼리를 사용해야 합니다.

```js
const htmlSourceAttr = Array.from(document.querySelectorAll('source')).map(el => el.getAttribute('media'))
const cssCheck = new __helpers.CSSHelp(document).getCSSRules('media')
assert.isTrue(cssCheck.length > 0 || htmlSourceAttr.length > 0);
```

`#navbar` 요소는 항상 뷰포트의 상단에 위치해야 합니다.

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
