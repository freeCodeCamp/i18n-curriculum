---
id: 587d78ab367417b2b2512af1
title: Agrega superpoderes flex al tweet incrustado
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/c9W7MhM'
forumTopicId: 301100
dashedName: add-flex-superpowers-to-the-tweet-embed
---

# --description--

A la derecha está el tweet incrustado que se utilizará como ejemplo práctico. Algunos de los elementos lucirían mejor con una disposición diferente. El último desafío demostró `display: flex`. Aquí la agregaras a varios componentes en el tweet incrustado para empezar a ajustar su posición.

# --instructions--

Agrega la propiedad CSS `display: flex` a todos los siguientes elementos (ten en cuenta que los selectores ya están configurados en el CSS):

El encabezado `header`, el `.profile-name` del encabezado, el `.follow-btn` del encabezado, el `h3` y `h4` del encabezado, el `footer`, y el `.stats` del pie de página (footer).

# --hints--

Tu `.follow-btn` debe mostrarse en la página. Asegúrate de desactivar las extensiones, como los bloqueadores de anuncios.

```js
const followButton = document.querySelector('.follow-btn');
const displayStyle = window.getComputedStyle(followButton)['display'];
assert.isNotNull(followButton);
assert.notStrictEqual(displayStyle, 'none');
```

Tu `header` debe tener una propiedad `display` establecida en `flex`.

```js
const header = document.querySelector('header');
const displayStyle = window.getComputedStyle(header)['display'];
assert.strictEqual(displayStyle, 'flex');
```

Tu `footer` debe tener una propiedad `display` establecida en `flex`.

```js
const footer = document.querySelector('footer');
const displayStyle = window.getComputedStyle(footer)['display'];
assert.strictEqual(displayStyle, 'flex');
```

Tu `h3` debe tener una propiedad `display` establecida en `flex`.

```js
const h3Element = document.querySelector('h3');
const displayStyle = window.getComputedStyle(h3Element)['display'];
assert.strictEqual(displayStyle, 'flex');
```

Tu `h4` debe tener una propiedad `display` establecida en `flex`.

```js
const h4Element = document.querySelector('h4');
const displayStyle = window.getComputedStyle(h4Element)['display'];
assert.strictEqual(displayStyle, 'flex');
```

Tu `.profile-name` debe tener una propiedad `display` establecida en `flex`.

```js
const profileName = document.querySelector('.profile-name');
const displayStyle = window.getComputedStyle(profileName)['display'];
assert.strictEqual(displayStyle, 'flex');
```

Tu `.follow-btn` debe tener una propiedad `display` establecida en `flex`.

```js
const followButton = document.querySelector('.follow-btn');
const displayStyle = window.getComputedStyle(followButton)['display'];
assert.strictEqual(displayStyle, 'flex');
```

Tu `.stats` debe tener una propiedad `display` establecida en `flex`.

```js
const stats = document.querySelector('.stats');
const displayStyle = window.getComputedStyle(stats)['display'];
assert.strictEqual(displayStyle, 'flex');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    font-family: Arial, sans-serif;
  }
  header {

  }
  header .profile-thumbnail {
    width: 50px;
    height: 50px;
    border-radius: 4px;
  }
  header .profile-name {

    margin-left: 10px;
  }
  header .follow-btn {

    margin: 0 0 0 auto;
  }
  header .follow-btn button {
    border: 0;
    border-radius: 3px;
    padding: 5px;
  }
  header h3, header h4 {

    margin: 0;
  }
  #inner p {
    margin-bottom: 10px;
    font-size: 20px;
  }
  #inner hr {
    margin: 20px 0;
    border-style: solid;
    opacity: 0.1;
  }
  footer {

  }
  footer .stats {

    font-size: 15px;
  }
  footer .stats strong {
    font-size: 18px;
  }
  footer .stats .likes {
    margin-left: 10px;
  }
  footer .cta {
    margin-left: auto;
  }
  footer .cta button {
    border: 0;
    background: transparent;
  }
</style>
<header>
  <img src="https://cdn.freecodecamp.org/curriculum/legacy-css-flexbox/quincy-twitter-photo.jpg" alt="Quincy Larson's profile picture" class="profile-thumbnail">
  <div class="profile-name">
    <h3>Quincy Larson</h3>
    <h4>@ossia</h4>
  </div>
  <div class="follow-btn">
    <button>Follow</button>
  </div>
</header>
<div id="inner">
  <p>
    I meet so many people who are in search of that one trick that will help
    them work smart. Even if you work smart, you still have to work hard.
  </p>
  <span class="date">1:32 PM - 12 Jan 2018</span>
  <hr />
</div>
<footer>
  <div class="stats">
    <div class="Retweets"><strong>107</strong> Retweets</div>
    <div class="likes"><strong>431</strong> Likes</div>
  </div>
  <div class="cta">
    <button class="share-btn">Share</button>
    <button class="retweet-btn">Retweet</button>
    <button class="like-btn">Like</button>
  </div>
</footer>
```

# --solutions--

```html
<style>
  body {
    font-family: Arial, sans-serif;
  }
  header {
    display: flex;
  }
  header .profile-thumbnail {
    width: 50px;
    height: 50px;
    border-radius: 4px;
  }
  header .profile-name {
    display: flex;
    margin-left: 10px;
  }
  header .follow-btn {
    display: flex;
    margin: 0 0 0 auto;
  }
  header .follow-btn button {
    border: 0;
    border-radius: 3px;
    padding: 5px;
  }
  header h3,
  header h4 {
    display: flex;
    margin: 0;
  }
  #inner p {
    margin-bottom: 10px;
    font-size: 20px;
  }
  #inner hr {
    margin: 20px 0;
    border-style: solid;
    opacity: 0.1;
  }
  footer {
    display: flex;
  }
  footer .stats {
    display: flex;
    font-size: 15px;
  }
  footer .stats strong {
    font-size: 18px;
  }
  footer .stats .likes {
    margin-left: 10px;
  }
  footer .cta {
    margin-left: auto;
  }
  footer .cta button {
    border: 0;
    background: transparent;
  }
</style>
<header>
  <img
    src="https://cdn.freecodecamp.org/curriculum/legacy-css-flexbox/quincy-twitter-photo.jpg"
    alt="Quincy Larson's profile picture"
    class="profile-thumbnail"
  />
  <div class="profile-name">
    <h3>Quincy Larson</h3>
    <h4>@ossia</h4>
  </div>
  <div class="follow-btn">
    <button>Follow</button>
  </div>
</header>
<div id="inner">
  <p>
    I meet so many people who are in search of that one trick that will help
    them work smart. Even if you work smart, you still have to work hard.
  </p>
  <span class="date">1:32 PM - 12 Jan 2018</span>
  <hr />
</div>
<footer>
  <div class="stats">
    <div class="Retweets"><strong>107</strong> Retweets</div>
    <div class="likes"><strong>431</strong> Likes</div>
  </div>
  <div class="cta">
    <button class="share-btn">Share</button>
    <button class="retweet-btn">Retweet</button>
    <button class="like-btn">Like</button>
  </div>
</footer>
```
