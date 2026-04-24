---
id: bd7158d8c242eddfaeb5bd13
title: パーソナルポートフォリオウェブページを作成する
challengeType: 14
saveSubmissionToDB: true
forumTopicId: 301143
dashedName: build-a-personal-portfolio-webpage
---

# --description--

**目的:** <a href="https://personal-portfolio.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://personal-portfolio.freecodecamp.rocks</a> と機能的に似たアプリを作成してください。**このデモプロジェクトをコピーしないでください**。

**ユーザーストーリー:**

1. ポートフォリオには `id` が `welcome-section` のウェルカムセクションが必要です
1. ウェルカムセクションにはテキストを含む `h1` 要素が必要です
1. ポートフォリオには `id` が `projects` のプロジェクトセクションが必要です
1. プロジェクトセクションにはプロジェクトを格納するための `class` が `project-tile` の要素が少なくとも1つ必要です
1. プロジェクトセクションには少なくとも1つのプロジェクトへのリンクが必要です
1. ポートフォリオには `navbar` の id を持つナビゲーションバーが必要です
1. ナビゲーションバーにはページの異なるセクションに移動できる少なくとも1つのリンクが必要です
1. ポートフォリオには `profile-link` の id を持つリンクがあり、新しいタブで GitHub または freeCodeCamp のプロフィールを開く必要があります
1. ポートフォリオには少なくとも1つのメディアクエリが必要です
1. ウェルカムセクションの高さはビューポートの高さと同じである必要があります
1. ナビゲーションバーは常にビューポートの上部に表示されている必要があります

ユーザーストーリーを満たし、以下のすべてのテストに合格してこのプロジェクトを完成させてください。自分の個性を出して楽しんでコーディングしましょう！

**注意:** CSSを適用するために、HTMLに `<link rel="stylesheet" href="styles.css">` を追加してスタイルシートをリンクしてください。

# --hints--

ポートフォリオには `id` の `welcome-section` を持つ「Welcome」セクションが必要です。

```js
const el = document.getElementById('welcome-section');
assert.isNotNull(el);
```

`#welcome-section` 要素には `h1` 要素を含めてください。

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1').length,
  0,
  'Welcome section should contain an h1 element '
);
```

`h1` 要素内に空の `#welcome-section` 要素があってはいけません。

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1')?.[0]?.innerText?.length,
  0,
  'h1 element in welcome section should contain your name or camper ' + 'name '
);
```

「Projects」セクションには `id` の `projects` が必要です。

```js
const el = document.getElementById('projects');
assert.isNotNull(el);
```

ポートフォリオには `project-tile` クラスを持つ要素が少なくとも1つ必要です。

```js
assert.isAbove(document.querySelectorAll('#projects .project-tile').length, 0);
```

`#projects` 要素には少なくとも1つの `a` 要素を含めてください。

```js
assert.isAbove(document.querySelectorAll('#projects a').length, 0);
```

ポートフォリオには `id` の `navbar` を持つナビゲーションバーが必要です。

```js
const el = document.getElementById('navbar');
assert.isNotNull(el);
```

`#navbar` 要素には `a` 属性が `href` で始まる少なくとも1つの `#` 要素を含めてください。

```js
const links = [...document.querySelectorAll('#navbar a')].filter(
  nav => (nav?.getAttribute('href') || '').substring(0, 1) === '#'
);

assert.isAbove(links.length, 0, 'Navbar should contain an anchor link ');
```

ポートフォリオには `a` の `id` を持つ `profile-link` 要素が必要です。

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

`#profile-link` 要素には `target` 属性が `_blank` である必要があります。

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

ポートフォリオには少なくとも1つのメディアクエリを使用してください。

```js
const htmlSourceAttr = Array.from(document.querySelectorAll('source')).map(el => el.getAttribute('media'))
const cssCheck = new __helpers.CSSHelp(document).getCSSRules('media')
assert.isTrue(cssCheck.length > 0 || htmlSourceAttr.length > 0);
```

`#navbar` 要素は常にビューポートの上部に表示されている必要があります。

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
