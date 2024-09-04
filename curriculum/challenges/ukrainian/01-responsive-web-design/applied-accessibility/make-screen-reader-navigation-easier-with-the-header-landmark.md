---
id: 587d7787367417b2b2512aa1
title: Полегшіть навігацію сторінки за допомогою нижньої орієнтації екрану
challengeType: 0
videoUrl: 'https://scrimba.com/c/cB76vtv'
forumTopicId: 301023
dashedName: make-screen-reader-navigation-easier-with-the-header-landmark
---

# --description--

Наступний елемент HTML5, що має змогу додавати семантичне значення і покращує доступ, є тегом `header`. Це використовується для зберігання вступної інформації або навігаційних посилань для батьківського тегу і добре працює з інформацією, яка з'являється повторно зверху на кожній сторінці.

`header` використовує функцію зі збереженою закладкою, яку ви бачили з `main`, дозволяючи допоміжним функціям швидко орієнтуватися у цьому контенті.

**Note:** `header` призначений для використання в тегу `body` вашого HTML документа. Це відрізняється від елемента `head`, який містить заголовок сторінки, метаінформацію і так далі.

# --instructions--

Camper Cat пише декілька захоплюючих статей про навчання ніндзя, і хоче додати для них сторінку на своєму сайті. Змініть верхній `div`, який містить `h1`, на тег `header`.

# --hints--

Ваш код повинен містити один тег `header`.

```js
assert.lengthOf(document.querySelectorAll('header'),1);
```

Ваш `header`повинен охоплювати `h1`.

```js
const header = document.querySelector('header');
const children = header?.querySelectorAll(`:scope ${'h1'}`);
assert.lengthOf(children , 1);
```

Ваш код не повинен містити жодних тегів `div`.

```js
assert.lengthOf(document.querySelectorAll('div') , 0);
```

Елемент `header` повинен мати кінцевий тег.

```js
assert.isTrue(code.match(/<\/header>/g)?.length === code.match(/<header>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>

  <div>
    <h1>Training with Camper Cat</h1>
  </div>


  <main>
    <section id="stealth">
      <h2>Stealth &amp; Agility Training</h2>
      <article><h3>Climb foliage quickly using a minimum spanning tree approach</h3></article>
      <article><h3>No training is NP-complete without parkour</h3></article>
    </section>
    <section id="combat">
      <h2>Combat Training</h2>
      <article><h3>Dispatch multiple enemies with multithreaded tactics</h3></article>
      <article><h3>Goodbye world: 5 proven ways to knock out an opponent</h3></article>
    </section>
    <section id="weapons">
      <h2>Weapons Training</h2>
      <article><h3>Swords: the best tool to literally divide and conquer</h3></article>
      <article><h3>Breadth-first or depth-first in multi-weapon training?</h3></article>
    </section>
  </main>
</body>
```

# --solutions--

```html
<body>

  <header>
    <h1>Training with Camper Cat</h1>
  </header>


  <main>
    <section id="stealth">
      <h2>Stealth &amp; Agility Training</h2>
      <article><h3>Climb foliage quickly using a minimum spanning tree approach</h3></article>
      <article><h3>No training is NP-complete without parkour</h3></article>
    </section>
    <section id="combat">
      <h2>Combat Training</h2>
      <article><h3>Dispatch multiple enemies with multithreaded tactics</h3></article>
      <article><h3>Goodbye world: 5 proven ways to knock out an opponent</h3></article>
    </section>
    <section id="weapons">
      <h2>Weapons Training</h2>
      <article><h3>Swords: the best tool to literally divide and conquer</h3></article>
      <article><h3>Breadth-first or depth-first in multi-weapon training?</h3></article>
    </section>
  </main>
</body>
```
