---
id: bad87fee1348bd8aedf06756
title: Заміна об'яв класів за стилем атрибутів ID
challengeType: 0
videoUrl: 'https://scrimba.com/c/cRkpDhB'
forumTopicId: 18251
dashedName: override-class-declarations-by-styling-id-attributes
---

# --description--

We just proved that browsers read CSS from top to bottom in order of their declaration. That means that, in the event of a conflict, the browser will use whichever CSS declaration came last. Notice that if we even had put `blue-text` before `pink-text` in our `h1` element's classes, it would still look at the declaration order and not the order of their use!

Але ми ще не закінчили. Є й інші способи замінити CSS. Пригадуєте атрибути id?

Давайте замінимо класи `pink-text` та `blue-text` і зробимо елемент `h1` оранжевим, надавши елементу the `h1` id, і згодом стилізуємо цей id.

# --instructions--

Задайте елементу `h1` атрибут `id` `orange-text`. Пам'ятайте, що стилі id виглядають так:

```html
<h1 id="orange-text">
```

Залишіть класи `blue-text` та `pink-text` на елементі `h1`.

Створіть об'яву CSS для id `orange-text` в елементі `style`. Ось приклад того, як це виглядає:

```css
#brown-text {
  color: brown;
}
```

**Примітка:** Не важливо чи ви об'явите цей CSS вище або нижче класу `pink-text`, оскільки атрибут `id` завжди матиме пріоритет.

# --hints--

Елемент `h1` повинен мати клас `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

Елемент `h1` повинен мати клас `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

Елемент `h1` повинен мати id `orange-text`.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'),'orange-text');
```

Має бути лише один елемент `h1`.

```js
assert.lengthOf(document.querySelectorAll('h1'), 1);
```

Id `orange-text` повинен мати об'яву CSS.

```js
assert.match(__helpers.removeCssComments(code), /#orange-text\s*{/gi);
```

Елемент `h1` не повинен мати жодних атрибутів `style`.

```js
assert.notMatch(__helpers.removeHtmlComments(code), /<h1.*style.*>/gi);
```

Елемент `h1` повинен бути оранжевим.

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 165, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 class="pink-text blue-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
  #orange-text {
    color: orange;
  }  
</style>
<h1 id="orange-text"  class="pink-text blue-text">Hello World!</h1>
```
