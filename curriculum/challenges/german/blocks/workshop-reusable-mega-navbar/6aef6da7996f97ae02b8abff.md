---
id: 6aef6da7996f97ae02b8abff
title: Schritt 13
challengeType: 0
dashedName: step-13
---

# --description--

Jetzt können Sie den `isOpen`-Status in Ihrem JSX verwenden. Beginnen Sie mit dem `button`-Element.

Das `aria-expanded`-Attribut teilt unterstützenden Technologien wie Screenreadern mit, ob der von einem Button gesteuerte Inhalt angezeigt (`"true"`) oder verborgen (`"false"`) ist. Im Moment ist sein Wert immer `"false"`.

Denken Sie daran, dass geschweifte Klammern es Ihnen erlauben, JavaScript-Ausdrücke in JSX einzubetten. Das funktioniert auch für Attributwerte, sodass Sie den ternären Operator verwenden können, um einen Wert basierend auf einer Bedingung auszuwählen:

```jsx
<p title={isDarkMode ? "Dark theme" : "Light theme"}>Theme</p>
```

Aktualisieren Sie das `aria-expanded`-Attribut des `button` so, dass sein Wert `"true"` ist, wenn `isOpen` `true` ist, und `"false"`, wenn `isOpen` `false` ist.

# --hints--

Das `aria-expanded`-Attribut des `button`-Elements sollte `"false"` sein, wenn `isOpen` `false` ist.

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

Das `aria-expanded`-Attribut des `button`-Elements sollte `"true"` sein, wenn `isOpen` `true` ist.

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
