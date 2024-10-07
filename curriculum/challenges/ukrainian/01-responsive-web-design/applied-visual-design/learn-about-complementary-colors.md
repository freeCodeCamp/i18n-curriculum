---
id: 587d78a3367417b2b2512ad1
title: Дізнайтеся більше про доповнюючі кольори
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MD3Tr'
forumTopicId: 301056
dashedName: learn-about-complementary-colors
---

# --description--

Color theory and its impact on design is a deep topic and only the basics are covered in the following challenges. On a website, color can draw attention to content, evoke emotions, or create visual harmony. Using different combinations of colors can really change the look of a website, and a lot of thought can go into picking a color palette that works with your content.

Колірне коло - це корисний інструмент, що показує, як співвідносяться кольори; тут схожі відтінки знаходяться поруч, і чим більше вони відрізняються, тим далі один від одного знаходяться. Якщо у колірному колі два кольори розташовані навпроти, вони називаються доповнюючими. Їхньою особливістю є те, що при комбінуванні, такі кольори "спростовують" один одного і утворюють сірий колір. Однак, розташовані поруч, вони стають яскравішими і створюють сильний візуальний контраст.

Ось декілька прикладів доповнюючих кольорів з їхніми hex-кодами:

<blockquote>червоний (#FF0000) та блакитний (#00FFFF)<br>зелений (#00FF00) та пурпуровий (#FF00FF)<br>синій (#0000FF) та жовтий (#FFFF00)</blockquote>

Ця модель має різні основні й доповнюючі кольори та відрізняється від застарілої колірної моделі RYB, якої багатьох з нас навчали у школі. Новітня колірна теорія використовує додаткову модель RGB (як показано на екрані комп'ютера) та субтрактивну колірну модель CMY(K) (використовується у поліграфії).

Існує безліч онлайн-інструментів для підбору кольору, у яких є опція вибору додаткового кольору.

**Примітка:** Використання кольору може бути потужним способом у створенні візуально цікавої сторінки. Проте колір - не єдиний спосіб передачі важливої інформації, адже користувачі із вадами зору можуть її не зрозуміти. Це питання буде розглядатися більш детально у завданні Застосування Спеціальних можливостей.

# --instructions--

Змініть властивість `background-color` для класів `blue` та `yellow` на відповідні їм кольори. Зверніть увагу, як по-іншому кольори виглядають порівняно один з одним і у порівнянні з білим фоном.

# --hints--

Елемент `div` класу `blue` повинне мати властивість `background-color` значення синього кольору.

```js
const blueElement = document.querySelector('.blue');
const blueStyle = window.getComputedStyle(blueElement); 
assert.equal(blueStyle?.backgroundColor, 'rgb(0, 0, 255)');
```

Елемент `div` класу `yellow` повинен мати властивість `background-color` значення жовтого кольору.

```js
const yellowElement = document.querySelector('.yellow');
const yellowStyle = window.getComputedStyle(yellowElement);
assert.equal(yellowStyle?.backgroundColor, 'rgb(255, 255, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }
  .blue {
    background-color: #000000;
  }
  .yellow {
    background-color: #000000;
  }
  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="blue"></div>
<div class="yellow"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }
  .blue {
    background-color: blue;
  }
  .yellow {
    background-color: yellow;
  }
  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="blue"></div>
<div class="yellow"></div>
```
