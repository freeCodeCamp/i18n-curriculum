---
id: 587d7787367417b2b2512aa1
title: 화면 낭독기 탐색을 더욱 쉽게 만들어주는 헤더 랜드마크
challengeType: 0
videoUrl: 'https://scrimba.com/c/cB76vtv'
forumTopicId: 301023
dashedName: make-screen-reader-navigation-easier-with-the-header-landmark
---

# --description--

The next HTML5 element that adds semantic meaning and improves accessibility is the `header` tag. It's used to wrap introductory information or navigation links for its parent tag and works well around content that's repeated at the top on multiple pages.

`header`는 `main`에서 보았던 내장 랜드마크 기능을 공유하여 접근성 기기가 해당 콘텐츠로 빠르게 이동할 수 있게 합니다.

**참고:** `header`는 HTML 문서의 `body` 태그 안에서 사용하도록 의도된 태그입니다. 이 요소는 페이지 제목, 메타 정보 등을 포함하는 `head` 요소와는 다릅니다.

# --instructions--

캠퍼 캣은 닌자 트레이닝에 관한 멋진 기사들을 쓰고, 그를 위한 페이지를 자신의 사이트에 추가하고 싶어합니다. 현재 맨 위에 있는 `h1`을 포함하고 있는 `div`를 `header` 태그로 변경하세요.

# --hints--

코드에는 `header` 태그가 하나만 있어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('header'),1);
```

`header` 태그는 `h1`을 감싸야 합니다.

```js
const header = document.querySelector('header');
const children = header?.querySelectorAll(`:scope ${'h1'}`);
assert.lengthOf(children , 1);
```

`div` 태그는 하나도 없어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('div') , 0);
```

`header` 요소는 닫는 태그가 있어야 합니다.

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
