---
id: 587d781c367417b2b2512ac3
title: Встановлення насиченості для кількох елементів заголовку
challengeType: 0
videoUrl: 'https://scrimba.com/c/crVWRHq'
forumTopicId: 301069
dashedName: set-the-font-weight-for-multiple-heading-elements
---

# --description--

В останньому завданні ви встановлювали `font-size` кожного тегу, тут ви зміните `font-weight`.

Властивість `font-weight` визначає наскільки символи в тексті будуть товстими або тонкими.

# --instructions--

<ul><li>Встановіть <code>font-weight</code> <code>h1</code> тегу до 800.</li><li>Встановіть <code>font-weight</code> <code>h2</code> тегу до 600.</li><li>Встановіть <code>font-weight</code> <code>h3</code> тегу до 500.</li><li>Встановіть <code>font-weight</code> <code>h4</code> тегу до 400.</li><li>Встановіть <code>font-weight</code> <code>h5</code> тегу до 300.</li><li>Встановіть <code>font-weight</code> <code>h6</code> тегу до 200.</li></ul>

# --hints--

Ваш код має встановити властивість `font-weight` для `h1` тегу до 800.

```js
const h1Element =document.querySelector('h1')
const h1Style = window.getComputedStyle(h1Element);
assert.equal(h1Style?.fontWeight, '800');
```

Ваш код має встановити властивість `font-weight` для `h2` тегу до 600.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.fontWeight, '600');
```

Ваш код має встановити властивість `font-weight` для `h3` тегу до 500.

```js
const h3Element =document.querySelector('h3')
const h3Style = window.getComputedStyle(h3Element);
assert.equal(h3Style?.fontWeight, '500');
```

Ваш код має встановити властивість `font-weight` для `h4` тегу до 400.

```js
const h4Element =document.querySelector('h4')
const h4Style = window.getComputedStyle(h4Element);
assert.equal(h4Style?.fontWeight, '400');
```

Ваш код має встановити властивість `font-weight` для `h5` тегу до 300.

```js
const h5Element =document.querySelector('h5')
const h5Style = window.getComputedStyle(h5Element);
assert.equal(h5Style?.fontWeight, '300');
```

Ваш код має встановити властивість `font-weight` для `h6` тегу до 200.

```js
const h6Element =document.querySelector('h6')
const h6Style = window.getComputedStyle(h6Element);
assert.equal(h6Style?.fontWeight, '200');
```

# --seed--

## --seed-contents--

```html
<style>
  h1 {
    font-size: 68px;

  }
  h2 {
    font-size: 52px;

  }
  h3 {
    font-size: 40px;

  }
  h4 {
    font-size: 32px;

  }
  h5 {
    font-size: 21px;

  }
  h6 {
    font-size: 14px;

  }
</style>
<h1>This is h1 text</h1>
<h2>This is h2 text</h2>
<h3>This is h3 text</h3>
<h4>This is h4 text</h4>
<h5>This is h5 text</h5>
<h6>This is h6 text</h6>
```

# --solutions--

```html
<style>
  h1 {
    font-size: 68px;
    font-weight: 800;
  }
  h2 {
    font-size: 52px;
    font-weight: 600;
  }
  h3 {
    font-size: 40px;
    font-weight: 500;
  }
  h4 {
    font-size: 32px;
    font-weight: 400;
  }
  h5 {
    font-size: 21px;
    font-weight: 300;
  }
  h6 {
    font-size: 14px;
    font-weight: 200;
  }
</style>
<h1>This is h1 text</h1>
<h2>This is h2 text</h2>
<h3>This is h3 text</h3>
<h4>This is h4 text</h4>
<h5>This is h5 text</h5>
<h6>This is h6 text</h6>
```
