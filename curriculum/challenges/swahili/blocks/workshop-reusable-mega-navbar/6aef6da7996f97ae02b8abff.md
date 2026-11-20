---
id: 6aef6da7996f97ae02b8abff
title: Hatua 13
challengeType: 0
dashedName: step-13
---

# --description--

Sasa unaweza kutumia hali ya `isOpen` katika JSX yako. Anza na kipengele cha `button`.

Sifa ya `aria-expanded` inawaambia teknolojia za kusaidia, kama vile kisomaji cha skrini, kama maudhui yanayodhibitiwa na kitufe yanaonyeshwa (`"true"`) au yamefichwa (`"false"`). Hivi sasa, thamani yake daima ni `"false"`.

Kumbuka kwamba mabano ya mviringo hukuruhusu kuingiza usemi wa kihesabu wa JavaScript katika JSX. Hii pia hufanya kazi kwa thamani za sifa, kwa hivyo unaweza kutumia opereta ya ternary kuchagua thamani kulingana na hali:

```jsx
<p title={isDarkMode ? "Dark theme" : "Light theme"}>Theme</p>
```

Sahihisha sifa ya `aria-expanded` ya `button` ili thamani yake iwe `"true"` wakati `isOpen` ni `true`, na `"false"` wakati `isOpen` ni `false`.

# --hints--

Sifa ya `aria-expanded` ya kipengele cha `button` inapaswa kuwa `"false"` wakati `isOpen` ni `false`.

```js
const originalUseState = React.useState;
try {
  React.useState = () => [false, () => {}];
  const script = [...document.querySelectorAll("script")].find((s) => s.dataset.src === "index.jsx").innerText;
  const exports = {};
  const _a = eval(script);
  const div = await __helpers.prepTestComponent(exports.Navbar);
  assert.equal(div.querySelector("button")?.getAttribute("aria-expanded"), "false");
} finally {
  React.useState = originalUseState;
}
```

Sifa ya `aria-expanded` ya kipengele cha `button` inapaswa kuwa `"true"` wakati `isOpen` ni `true`.

```js
const originalUseState = React.useState;
try {
  React.useState = () => [true, () => {}];
  const script = [...document.querySelectorAll("script")].find((s) => s.dataset.src === "index.jsx").innerText;
  const exports = {};
  const _a = eval(script);
  const div = await __helpers.prepTestComponent(exports.Navbar);
  assert.equal(div.querySelector("button")?.getAttribute("aria-expanded"), "true");
} finally {
  React.useState = originalUseState;
}
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Reusable Navbar</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/18.3.1/umd/react.development.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react-dom/18.3.1/umd/react-dom.development.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/7.26.3/babel.min.js"></script>
    <script
      data-plugins="transform-modules-umd"
      type="text/babel"
      src="index.jsx"
    ></script>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <div id="root"></div>
    <script
      data-plugins="transform-modules-umd"
      type="text/babel"
      data-presets="react"
      data-type="module"
    >
      import { Navbar } from "./index.jsx";
      ReactDOM.createRoot(document.getElementById("root")).render(
        <Navbar />
      );
    </script>
  </body>
</html>
```

```css
*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

:root {
  --white: #fff;
  --light-grey: #e1e0e0;
  --dark-purple: #7c0e7c;
  --black: #000;
}

body {
  background-color: var(--light-grey);
}

.navbar {
  background-color: var(--white);
}

.navbar ul {
  display: flex;
  justify-content: space-around;
}

.navbar ul li {
  list-style: none;
  border-radius: 4px;
}

.navbar ul li a {
  text-decoration: none;
  color: var(--black);
  padding: 10px;
  display: inline-block;
  width: 100%;
}

button {
  background: transparent;
  border: none;
  font-family: "Times New Roman", Times, serif;
  padding: 10px;
  font-size: 1rem;
}

.navbar ul .nav-item a:hover {
  background-color: var(--dark-purple);
  color: var(--white);
}

button:hover {
  background-color: var(--dark-purple);
  color: var(--white);
}

.navbar ul .nav-item .sub-menu {
  visibility: hidden;
  opacity: 0;
  position: absolute;
  right: 5%;
  transition: opacity 0.5s ease;
  display: block;
  background-color: var(--white);
}

@media (min-width: 768px) {
  .navbar ul .nav-item .sub-menu {
    right: 15%;
  }
}

@media (min-width: 1024px) {
  .navbar ul .nav-item .sub-menu {
    right: 13%;
  }
}

.navbar ul .nav-item .sub-menu.sub-menu--open {
  visibility: visible;
  opacity: 1;
}
```

```jsx
export const Navbar = () => {
  const [isOpen, setIsOpen] = React.useState(false);

  return (
    <nav className="navbar">
      <ul>
        <li className="nav-item">
          <a href="#">Dashboard</a>
        </li>
        <li className="nav-item">
          <a href="#">Widgets</a>
        </li>
        <li className="nav-item">
          --fcc-editable-region--
          <button aria-expanded="false">Apps</button>
          --fcc-editable-region--
          <ul className="sub-menu" aria-label="Apps">
            <li><a href="#">Calendar</a></li>
            <li><a href="#">Chat</a></li>
            <li><a href="#">Email</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  );
};
```
