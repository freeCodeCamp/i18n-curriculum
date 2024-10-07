---
id: 587d778a367417b2b2512aa5
title: Boresha Ufikivu wa Chati kwa Kipengele cha takwimu
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJMqtE'
forumTopicId: 301015
dashedName: improve-chart-accessibility-with-the-figure-element
---

# --description--

HTML5 introduced the `figure` element and the related `figcaption`. Used together, these items wrap a visual representation (like an image, diagram, or chart) along with its caption. Wrapping these elements together gives a two-fold accessibility boost by semantically grouping related content and providing a text alternative explaining the `figure`.

Kwa taswira za data kama vile chati, manukuu yanaweza kutumika kubainisha kwa ufupi mitindo au hitimisho kwa watumiaji walio na matatizo ya kuona. Changamoto nyingine inahusu jinsi ya kuhamisha toleo la jedwali la data ya chati nje ya skrini (kwa kutumia CSS) kwa watumiaji wa kisoma skrini.

Huu hapa ni mfano - kumbuka kuwa `figcaption` huenda ndani ya lebo ya `figure` na inaweza kuunganishwa na vipengele vingine:

```html
<figure>
  <img src="roundhouseDestruction.jpeg" alt="Photo of Camper Cat executing a roundhouse kick">
  <br>
  <figcaption>
    Master Camper Cat demonstrates proper form of a roundhouse kick.
  </figcaption>
</figure>
```

# --instructions--

Camper Cat ana kazi ngumu kuunda chati ya miraba iliyopangwa kuonyesha kiasi cha muda kwa wiki kutumia mafunzo ya siri, mapigano na silaha. Msaidie kupanga ukurasa wake vyema zaidi kwa kubadilisha lebo ya `div` aliyokuwa akitumia iwe lebo ya `figure`, na lebo ya `p` inayozunguka manukuu ikuwe lebo ya `figcaption`.

# --hints--

Msimbo wako unapaswa kuwa na lebo moja ya `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure') , 1);
```

Msimbo wako unapaswa kuwa na lebo moja ya `figcaption`.

```js
assert.lengthOf(document.querySelectorAll('figcaption') , 1);
```

Code yako haipaswi kuwa na lebo zozote za `div`.

```js
assert.lengthOf(document.querySelectorAll('div'), 0);
```

Msimbo wako haupaswi kuwa na lebo zozote za `p`.

```js
assert.lengthOf(document.querySelectorAll('p') , 0);
```

`figcaption` inapaswa kuwa imetoka kwa lebo ya `figure`.

```js
const figure = document.querySelector('figure');
const children = figure?.querySelectorAll(`:scope ${'figcaption'}`);
assert.lengthOf(children, 1);
```

Kipengele chako cha `figure` kinapaswa kuwa na lebo ya kufunga.

```js
assert.isTrue(
    code.match(/<\/figure>/g)?.length === code.match(/<figure>/g)?.length
);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Training</h1>
    <nav>
      <ul>
        <li><a href="#stealth">Stealth &amp; Agility</a></li>
        <li><a href="#combat">Combat</a></li>
        <li><a href="#weapons">Weapons</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section>

      <!-- Only change code below this line -->
      <div>
        <!-- Stacked bar chart will go here -->
        <br>
        <p>Breakdown per week of time to spend training in stealth, combat, and weapons.</p>
      </div>
      <!-- Only change code above this line -->

    </section>
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
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Training</h1>
    <nav>
      <ul>
        <li><a href="#stealth">Stealth &amp; Agility</a></li>
        <li><a href="#combat">Combat</a></li>
        <li><a href="#weapons">Weapons</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section>
      <figure>
        <!-- Stacked bar chart will go here -->
        <br>
        <figcaption>Breakdown per week of time to spend training in stealth, combat, and weapons.</figcaption>
      </figure>
    </section>
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
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
