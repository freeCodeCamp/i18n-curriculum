---
id: 587d781e367417b2b2512acc
title: Bloccare un elemento sulla finestra del browser con il posizionamento Fixed
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MDNUR'
forumTopicId: 301061
dashedName: lock-an-element-to-the-browser-window-with-fixed-positioning
---

# --description--

The next layout scheme that CSS offers is the `fixed` position, which is a type of absolute positioning that locks an element relative to the browser window. Similar to absolute positioning, it's used with the CSS offset properties and also removes the element from the normal flow of the document. Other items no longer "realize" where it is positioned, which may require some layout adjustments elsewhere.

Un'altra differenza chiave tra le posizioni `fixed` e `absolute` è che un elemento con una posizione fixed non si muove quando l'utente scrolla la pagina.

# --instructions--

La barra di navigazione nel codice è etichettata con un id `navbar`. Cambia la sua `position` a `fixed`, e dalle un offset `top` di 0 pixel e un offset `left` di 0 pixel. Dopo aver aggiunto il codice, scorri la finestra di preview per vedere come la barra di navigazione rimane in posizione.

# --hints--

L'elemento `#navbar` deve avere una `position` impostata su `fixed`.

```js
const navbarElement = document.querySelector('#navbar');
const navbarStyle = window.getComputedStyle(navbarElement);
 assert.equal(navbarStyle?.position, 'fixed');
```

Il tuo codice deve avere un offset `top` di 0 pixel sull'elemento `#navbar`.

```js
const navbarElement = document.querySelector('#navbar');
 const navbarStyle = window.getComputedStyle(navbarElement);
assert.equal(navbarStyle?.top, '0px');
```

Il tuo codice deve usare un offset `left` di 0 pixel sull'elemento `#navbar`.

```js
const navbarElement = document.querySelector('#navbar');
 const navbarStyle = window.getComputedStyle(navbarElement);
 assert.equal(navbarStyle?.left, '0px');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    min-height: 150vh;
  }
  #navbar {



    width: 100%;
    background-color: #767676;
  }
  nav ul {
    margin: 0px;
    padding: 5px 0px 5px 30px;
  }
  nav li {
    display: inline;
    margin-right: 20px;
  }
  a {
    text-decoration: none;
  }
</style>
<body>
  <header>
    <h1>Welcome!</h1>
    <nav id="navbar">
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>
  <p>I shift up when the #navbar is fixed to the browser window.</p>
</body>
```

# --solutions--

```html
<style>
  body {
    min-height: 150vh;
  }
  #navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: #767676;
  }
  nav ul {
    margin: 0px;
    padding: 5px 0px 5px 30px;
  }
  nav li {
    display: inline;
    margin-right: 20px;
  }
  a {
    text-decoration: none;
  }
</style>
<body>
  <header>
    <h1>Welcome!</h1>
    <nav id="navbar">
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>
  <p>I shift up when the #navbar is fixed to the browser window.</p>
</body>
```
