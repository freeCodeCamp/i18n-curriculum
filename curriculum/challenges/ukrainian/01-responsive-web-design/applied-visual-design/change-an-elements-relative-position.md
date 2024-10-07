---
id: 587d781e367417b2b2512ac9
title: Змінити відносну позицію елемента
challengeType: 0
videoUrl: 'https://scrimba.com/c/czVmMtZ'
forumTopicId: 301044
dashedName: change-an-elements-relative-position
---

# --description--

CSS treats each HTML element as its own box, which is usually referred to as the <dfn>CSS Box Model</dfn>. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the <dfn>normal flow</dfn> of a document, but CSS offers the position property to override it.

Коли елементу задана властивість `relative`, що дозволяє вам визначити, як має рухатися CSS *relative* відносно свого поточного розміщення у стандартному блоці сторінки. Разом з CSS властивість offset (розміщення) може бути `left` або `right`, і `top` або `bottom`. Це вказує на кількість пікселів, відсотків або em, необхідних для переміщення елементу *away* у стандартну позицію. Ось приклад того, як пересунути параграф на 10 пікселів вгору:

```css
p {
  position: relative;
  bottom: 10px;
}
```

Змінюючи позицію елементу на відносну, ви не прибираєте елемент зі стандартного блоку - інші об'єкти на сторінці розташовані так, ніби елемент не змінював свого положення за замовчуванням.

**Примітка:** Зміна розташування дозволяє вам краще оперувати візуальним шаблоном сторінки. Пам'ятайте, що незважаючи на положення елементів, нижча розмітка HTML повинна бути організована і мати сенс при читанні зверху знизу. Саме так користувачі і порушеннями зору (які покладаються на допоміжні пристрої, такі як зчитувачі екрану) отримують доступ до ваших матеріалів.

# --instructions--

Змініть `position` для `h2` на `relative`, та скористайтеся властивістю offset (розміщення) для CSS, задля переміщення на 15 пікселів від `top`, тобто стандартного блоку. Перевірте, чи не змінилося розташування інших елементів відносно h1 та p.

# --hints--

Елемент `h2` повинен мати властивість `position` зі значенням `relative`.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.position, 'relative');
```

Ваш код має використовувати зсув CSS, щоб змістити `h2` на 15 пікселів від його стандартного розташування відносно `top`.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.top, '15px');
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {


  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<style>
  h2 {
    position: relative;
    top: 15px;
  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
