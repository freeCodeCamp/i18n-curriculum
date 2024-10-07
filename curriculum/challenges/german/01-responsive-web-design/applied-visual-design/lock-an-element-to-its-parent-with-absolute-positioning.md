---
id: 587d781e367417b2b2512acb
title: Fixiere ein Element mittels absoluter Positionierung an seinem Elternteil
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLJ7c3'
forumTopicId: 301060
dashedName: lock-an-element-to-its-parent-with-absolute-positioning
---

# --description--

The next option for the CSS `position` property is `absolute`, which locks the element in place relative to its parent container. Unlike the `relative` position, this removes the element from the normal flow of the document, so surrounding items ignore it. The CSS offset properties (top or bottom and left or right) are used to adjust the position.

Ein bemerkenswertes Detail von absoluter Positionierung ist, dass das platzierte Element relativ seinem nächstgelegenen, übergeordneten Element *mit Position-Eigenschaft* gesperrt wird. Solltest du vergessen eine Positionsregel zum übergeordneten Element hinzuzufügen (dies geschieht normalerweise mit `position: relative;`), sucht der Browser nach oben hin weiter und wird notfalls auf das `body`-Tag zurückgreifen.

# --instructions--

Sperre das `#searchbar`-Element oben rechts in seinem Elternteil `section`, indem du seine `position` als `absolute` deklarierst. Gib ihm `top` und `right`-Offsets von jeweils 50 Pixel.

# --hints--

Das `#searchbar`-Element sollte eine `position`-Eigenschaft mit Wert `absolute` haben.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.position, 'absolute');
```

Dein Code sollte einen `top`-Offset von 50 Pixel auf dem `#searchbar`-Element verwenden.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.top, '50px');
```

Dein Code sollte einen `right`-Offset von 50 Pixel auf dem `#searchbar`-Element verwenden.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.right, '50px');
```

# --seed--

## --seed-contents--

```html
<style>
  #searchbar {



  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```

# --solutions--

```html
<style>
  #searchbar {
    position: absolute;
    top: 50px;
    right: 50px;
  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```
