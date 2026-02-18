---
id: bd7158d8c242eddfaeb5bd13
title: 建置個人作品集
challengeType: 25
dashedName: build-a-personal-portfolio
demoType: onClick
saveSubmissionToDB: true
---

# --description--

**目標：** 完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你的作品集應該有一個歡迎區段，其 `id` 為 `welcome-section`。
2. 歡迎區段應該有一個包含文字的 `h1` 元素。
3. 你的作品集應該有一個 `id` 為 `project-section` 的專案區段。
4. 專案區段應至少包含一個具有 `class` 為 `project-tile` 的元素來容納專案。
5. 專案區段應該至少包含一個指向專案的聯結。
6. 你的作品集應該有一個 id 為 `navbar` 的導覽列。
7. 導覽列應至少包含一個你可以點擊以導覽至頁面不同區段的聯結。
8. 你的作品集應該有一個 id 為 `profile-link` 的聯結，該聯結會在新分頁中開啟你的 GitHub 或 freeCodeCamp 評測。
9. 你的作品集應該至少有一個媒體查詢。
10. 歡迎區段的高度應該與視窗高度相等。
11. 導覽列應該始終位於視窗頂部。

**注意：** 請務必在你的 HTML 中聯結你的樣式表並套用你的 CSS。

# --hints--

你的作品集應該有一個「歡迎」區段，其 `id` 為 `welcome-section`。

```js
const el = document.getElementById('welcome-section');
assert.isNotNull(el);
```

你的 `#welcome-section` 元素應該包含一個 `h1` 元素。

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1').length,
  0,
  'Welcome section should contain an h1 element '
);
```

你不應該在 `#welcome-section` 元素內有任何空的 `h1` 元素。

```js
assert.isAbove(
  document.querySelectorAll('#welcome-section h1')?.[0]?.innerText?.length,
  0,
  'h1 element in welcome section should contain your name or camper ' + 'name '
);
```

你應該有一個「專案」區段，其 `id` 為 `project-section`。

```js
const el = document.getElementById('project-section');
assert.isNotNull(el);
```

你的作品集應該至少包含一個具有 `project-tile` 類別的元素。

```js
assert.isAbove(
  document.querySelectorAll('#project-section .project-tile').length,
  0
);
```

你的 `#project-section` 元素應該至少包含一個 `a` 元素。

```js
assert.isAbove(document.querySelectorAll('#project-section a').length, 0);
```

你的作品集應該有一個 `id` 為 `navbar` 的導覽列。

```js
const el = document.getElementById('navbar');
assert.isNotNull(el);
```

你的 `#navbar` 元素應該至少包含一個 `a` 元素，其 `href` 屬性以 `#` 開頭。

```js
const links = [...document.querySelectorAll('#navbar a')].filter(
  nav => (nav?.getAttribute('href') || '').substring(0, 1) === '#'
);

assert.isAbove(links.length, 0, 'Navbar should contain an anchor link ');
```

你的作品集應該有一個 `a` 元素，其 `id` 為 `profile-link`。

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'A');
```

你的 `#profile-link` 元素應該有一個 `target` 屬性，值為 `_blank`。

```js
const el = document.getElementById('profile-link');
assert.isNotNull(el);
assert.strictEqual(el.target, '_blank');
```

你的作品集應該至少使用一個媒體查詢。

```js
const htmlSourceAttr = Array.from(document.querySelectorAll('source')).map(el => el.getAttribute('media'))
const cssCheck = new __helpers.CSSHelp(document).getCSSRules('media')
assert.isTrue(cssCheck.length > 0 || htmlSourceAttr.length > 0);
```

你的 `#navbar` 元素應該始終位於視窗頂部。

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
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Personal Portfolio</title>
  </head>
  <body></body>
</html>
```

```css

```

# --solutions--

```html
<!doctype html>
<html>
  <head>
    <link rel="stylesheet" href="styles.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Raleway:700&display=swap"
      rel="stylesheet"
    />
  </head>

  <body>
    <!-- START NAV -->

    <nav id="navbar" class="nav">
      <ul class="nav-list">
        <li>
          <a href="#welcome-section">About</a>
        </li>
        <li>
          <a href="#project-section">Work</a>
        </li>
        <li>
          <a href="#contact">Contact</a>
        </li>
      </ul>
    </nav>

    <!-- END NAV -->

    <!-- START WELCOME SECTION -->

    <section id="welcome-section" class="welcome-section">
      <h1>Hey I am Mimic</h1>
      <p>a web developer</p>
    </section>

    <!-- END WELCOME SECTION -->

    <!-- START PROJECTS SECTION -->

    <section id="project-section" class="projects-section">
      <h2 class="projects-section-header">These are some of my projects</h2>

      <div class="projects-grid">
        <a
          href="https://codepen.io/freeCodeCamp/full/zNqgVx"
          target="_blank"
          class="project project-tile"
        >
          <img
            class="project-image"
            src="https://cdn.freecodecamp.org/testable-projects-fcc/images/tribute.jpg"
            alt="project"
          />
          <p class="project-title">
            <span class="code">&lt;</span>
            Tribute Page
            <span class="code">&#47;&gt;</span>
          </p>
        </a>
        <a
          href="https://codepen.io/freeCodeCamp/full/qRZeGZ"
          target="_blank"
          class="project project-tile"
        >
          <img
            class="project-image"
            src="https://cdn.freecodecamp.org/testable-projects-fcc/images/random-quote-machine.png"
            alt="project"
          />
          <p class="project-title">
            <span class="code">&lt;</span>
            Random Quote Machine
            <span class="code">&#47;&gt;</span>
          </p>
        </a>
        <a
          href="https://codepen.io/freeCodeCamp/full/wgGVVX"
          target="_blank"
          class="project project-tile"
        >
          <img
            class="project-image"
            src="https://cdn.freecodecamp.org/testable-projects-fcc/images/calc.png"
            alt="project"
          />
          <p class="project-title">
            <span class="code">&lt;</span>
            JavaScript Calculator
            <span class="code">&#47;&gt;</span>
          </p>
        </a>
        <a
          href="https://codepen.io/freeCodeCamp/full/mVEJag"
          target="_blank"
          class="project project-tile"
        >
          <img
            class="project-image"
            src="https://cdn.freecodecamp.org/testable-projects-fcc/images/map.jpg"
            alt="project"
          />
          <p class="project-title">
            <span class="code">&lt;</span>
            Map Data Across the Globe
            <span class="code">&#47;&gt;</span>
          </p>
        </a>
        <a
          href="https://codepen.io/freeCodeCamp/full/wGqEga"
          target="_blank"
          class="project project-tile"
        >
          <img
            class="project-image"
            src="https://cdn.freecodecamp.org/testable-projects-fcc/images/wiki.png"
            alt="project"
          />
          <p class="project-title">
            <span class="code">&lt;</span>
            Wikipedia Viewer
            <span class="code">&#47;&gt;</span>
          </p>
        </a>
        <a
          href="https://codepen.io/freeCodeCamp/full/KzXQgy"
          target="_blank"
          class="project project-tile"
        >
          <img
            class="project-image"
            src="https://cdn.freecodecamp.org/testable-projects-fcc/images/tic-tac-toe.png"
            alt="project"
          />
          <p class="project-title">
            <span class="code">&lt;</span>
            Tic Tac Toe Game
            <span class="code">&#47;&gt;</span>
          </p>
        </a>
      </div>

      <a
        href="https://codepen.io/FreeCodeCamp/"
        class="btn btn-show-all"
        target="_blank"
        >Show all<i class="fas fa-chevron-right"></i
      ></a>
    </section>

    <!-- END PROJECTS SECTION -->

    <!-- START CONTACT SECTION -->

    <section id="contact" class="contact-section">
      <div class="contact-section-header">
        <h2>Let's work together...</h2>
        <p>How do you take your coffee?</p>
      </div>
      <div class="contact-links">
        <a
          href="https://facebook.com/freecodecamp"
          target="_blank"
          class="btn contact-details"
          ><i class="fab fa-facebook-square"></i> Facebook</a
        >
        <a
          id="profile-link"
          href="https://github.com/freecodecamp"
          target="_blank"
          class="btn contact-details"
          ><i class="fab fa-github"></i> GitHub</a
        >
        <a
          href="https://twitter.com/freecodecamp"
          target="_blank"
          class="btn contact-details"
          ><i class="fab fa-twitter"></i> Twitter</a
        >
        <a href="mailto:example@example.com" class="btn contact-details"
          ><i class="fas fa-at"></i> Send a mail</a
        >
        <a href="tel:555-555-5555" class="btn contact-details"
          ><i class="fas fa-mobile-alt"></i> Call me</a
        >
      </div>
    </section>

    <!-- END CONTACT SECTION -->

    <!-- START FOOTER SECTION -->

    <footer>
      <p>
        **This is just a fake portfolio. All the projects and contact details
        given are not real.
      </p>
      <p>
        &copy; Created for
        <a href="https://www.freecodecamp.org/" target="_blank"
          >freeCodeCamp <i class="fab fa-free-code-camp"></i
        ></a>
      </p>
    </footer>

    <!-- END FOOTER SECTION -->
</body>
</body>

  </body>

</html>
```

```css
/* Custom properties/variables  */
:root {
  --main-white: #f0f0f0;
  --main-red: #be3144;
  --main-blue: #45567d;
  --main-gray: #303841;
}

/* Base reset */
* {
  margin: 0;
  padding: 0;
}

/* box-sizing and font sizing */
*,
*::before,
*::after {
  box-sizing: inherit;
}

html {
  box-sizing: border-box;

  /* Set font size for easy rem calculations
   * default document font size = 16px, 1rem = 16px, 100% = 16px
   * (100% / 16px) * 10 = 62.5%, 1rem = 10px, 62.5% = 10px
  */
  font-size: 62.5%;
  scroll-behavior: smooth;
}

/* A few media query to set some font sizes at different screen sizes.
 * This helps automate a bit of responsiveness.
 * The trick is to use the rem unit for size values, margin and padding.
 * Because rem is relative to the document font size
 * when we scale up or down the font size on the document
 * it will affect all properties using rem units for the values.
*/

/* I am using the em unit for breakpoints
 * The calculation is the following
 * screen size divided by browser base font size
 * As an example: a breakpoint at 980px
 * 980px / 16px = 61.25em
*/

/* 1200px / 16px = 75em */
@media (max-width: 75em) {
  html {
    font-size: 60%;
  }
}

/* 980px / 16px = 61.25em */
@media (max-width: 61.25em) {
  html {
    font-size: 58%;
  }
}

/* 460px / 16px = 28.75em */
@media (max-width: 28.75em) {
  html {
    font-size: 55%;
  }
}

/* Base styles */

body {
  font-family: 'Poppins', sans-serif;
  font-size: 1.8rem;
  /* 18px */
  font-weight: 400;
  line-height: 1.4;
  color: var(--main-white);
}

h1,
h2 {
  font-family: 'Raleway', sans-serif;
  font-weight: 700;
  text-align: center;
}

h1 {
  font-size: 6rem;
}

h2 {
  font-size: 4.2rem;
}

ul {
  list-style: none;
}

a {
  text-decoration: none;
  color: var(--main-white);
}

img {
  display: block;
  width: 100%;
}

/* nav */

.nav {
  display: flex;
  justify-content: flex-end;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background: var(--main-red);
  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.4);
  z-index: 10;
}

.nav-list {
  display: flex;
  margin-right: 2rem;
}

@media (max-width: 28.75em) {
  .nav {
    justify-content: center;
  }

  .nav-list {
    margin: 0 1rem;
  }
}

.nav-list a {
  display: block;
  font-size: 2.2rem;
  padding: 2rem;
}

.nav-list a:hover {
  background: var(--main-blue);
}

/* Welcome section */

.welcome-section {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100vh;
  background-color: #000;
  background-image: linear-gradient(62deg, #3a3d40 0%, #181719 100%);
}

.welcome-section > p {
  font-size: 3rem;
  font-weight: 200;
  font-style: italic;
  color: var(--main-red);
}

/* Projects section */

.projects-section {
  text-align: center;
  padding: 10rem 2rem;
  background: var(--main-blue);
}

.projects-section-header {
  max-width: 640px;
  margin: 0 auto 6rem auto;
  border-bottom: 0.2rem solid var(--main-white);
}

@media (max-width: 28.75em) {
  .projects-section-header {
    font-size: 4rem;
  }
}

/* "Automagic" image grid using no media queries */
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  grid-gap: 4rem;
  width: 100%;
  max-width: 1280px;
  margin: 0 auto;
  margin-bottom: 6rem;
}

@media (max-width: 30.625em) {
  .projects-section {
    padding: 6rem 1rem;
  }

  .projects-grid {
    grid-template-columns: 1fr;
  }
}

.project {
  background: var(--main-gray);
  box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
  border-radius: 2px;
}

.code {
  color: var(--main-gray);
  transition: color 0.3s ease-out;
}

.project:hover .code {
  color: #ff7f50;
}

.project-image {
  height: calc(100% - 6.8rem);
  width: 100%;
  object-fit: cover;
}

.project-title {
  font-size: 2rem;
  padding: 2rem 0.5rem;
}

.btn {
  display: inline-block;
  padding: 1rem 2rem;
  border-radius: 2px;
}

.btn-show-all {
  font-size: 2rem;
  background: var(--main-gray);
  transition: background 0.3s ease-out;
}

.btn-show-all:hover {
  background: var(--main-red);
}

.btn-show-all:hover > i {
  transform: translateX(2px);
}

.btn-show-all > i {
  margin-left: 10px;
  transform: translateX(0);
  transition: transform 0.3s ease-out;
}

/* Contact section */

.contact-section {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  width: 100%;
  height: 80vh;
  padding: 0 2rem;
  background: var(--main-gray);
}

.contact-section-header > h2 {
  font-size: 6rem;
}

@media (max-width: 28.75em) {
  .contact-section-header > h2 {
    font-size: 4rem;
  }
}

.contact-section-header > p {
  font-style: italic;
}

.contact-links {
  display: flex;
  justify-content: center;
  width: 100%;
  max-width: 980px;
  margin-top: 4rem;
  flex-wrap: wrap;
}

.contact-details {
  font-size: 2.4rem;
  text-shadow: 2px 2px 1px #1f1f1f;
  transition: transform 0.3s ease-out;
}

.contact-details:hover {
  transform: translateY(8px);
}

/* Footer */

footer {
  font-weight: 300;
  display: flex;
  justify-content: space-evenly;
  padding: 2rem;
  background: var(--main-gray);
  border-top: 4px solid var(--main-red);
}

footer > p {
  margin: 2rem;
}

footer i {
  vertical-align: middle;
}

@media (max-width: 28.75em) {
  footer {
    flex-direction: column;
    text-align: center;
  }
}
```
