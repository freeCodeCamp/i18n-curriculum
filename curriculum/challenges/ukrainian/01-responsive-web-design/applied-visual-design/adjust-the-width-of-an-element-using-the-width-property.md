---
id: 587d7791367417b2b2512ab4
title: Налаштування ширини елементу за допомогою властивості width
challengeType: 0
videoUrl: 'https://scrimba.com/c/cvVLPtN'
forumTopicId: 301039
dashedName: adjust-the-width-of-an-element-using-the-width-property
---

# --description--

You can specify the width of an element using the `width` property in CSS. Values can be given in relative length units (such as `em`), absolute length units (such as `px`), or as a percentage of its containing parent element. Here's an example that changes the width of an image to 220px:

```css
img {
  width: 220px;
}
```

# --instructions--

Застосуйте властивість `width` до всієї картки і встановіть їй абсолютне значення 245 пікселів. Використайте значення `fullCard`, щоб обрати елемент.

# --hints--

Ваш код має змінити властивість `width` картки на 245 пікселів, використовуючи селектор значення `fullCard`.

```js
const fullCard = code.match(/\.fullCard\s*{[\s\S]+?[^}]}/g);
const fullCardElement = document.querySelector('.fullCard');
const fullCardStyle = window.getComputedStyle(fullCardElement); 
assert.match(code,/\.fullCard\s*{[\s\S]+?[^}]}/g); 

assert.match(fullCard?.[0],/width\s*:\s*245px\s*(;|})/gi);
assert.equal(fullCardStyle?.maxWidth, 'none');
```

# --seed--

## --seed-contents--

```html
<style>
  h4 {
    text-align: center;
  }
  p {
    text-align: justify;
  }
  .links {
    margin-right: 20px;
    text-align: left;
  }
  .fullCard {

    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University.</p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```

# --solutions--

```html
<style>
  h4 {
    text-align: center;
  }
  p {
    text-align: justify;
  }
  .links {
    margin-right: 20px;
    text-align: left;
  }
  .fullCard {
    width: 245px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 10px 5px;
    padding: 4px;
  }
  .cardContent {
    padding: 10px;
  }
</style>
<div class="fullCard">
  <div class="cardContent">
    <div class="cardText">
      <h4>Google</h4>
      <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University.</p>
    </div>
    <div class="cardLinks">
      <a href="https://en.wikipedia.org/wiki/Larry_Page" target="_blank" class="links">Larry Page</a>
      <a href="https://en.wikipedia.org/wiki/Sergey_Brin" target="_blank" class="links">Sergey Brin</a>
    </div>
  </div>
</div>
```
