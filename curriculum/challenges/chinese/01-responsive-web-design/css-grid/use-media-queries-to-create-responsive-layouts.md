---
id: 5a94fe7769fb03452672e463
title: 使用媒体查询创建响应式布局
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/cMbqeHk'
forumTopicId: 301138
dashedName: use-media-queries-to-create-responsive-layouts
---

# --description--

CSS Grid can be an easy way to make your site more responsive by using media queries to rearrange grid areas, change dimensions of a grid, and rearrange the placement of items.

在右侧的预览区中，当网页可视区域的宽不小于 300px 时，列数从 1 变为 2。 并且，广告（advertisement）区域会完全占据左列。

# --instructions--

当网页可视区域的宽不小于 `400px` 时，请让 header 区域完全占据最顶行，footer 区域完全占据最底行。

# --hints--

当网页可视区域的宽度为 `400px` 或以上时，class 为 `container` 的元素应具有 `grid-template-areas` 属性，其属性值能够使 footer 和 header 区域分别占据顶行和底行，advert 和 content 区域分别占据中间行的左列和右列。

```js
assert.match(
  __helpers.removeCssComments(code),
  /@media\s*?\(\s*?min-width\s*?:\s*?400px\s*?\)[\s\S]*.container\s*?{[\s\S]*grid-template-areas\s*?:\s*?["|']\s*?header\s*?header\s*?["|']\s*?["|']\s*?advert\s*?content\s*?["|']\s*?["|']\s*?footer\s*?footer\s*?["|']\s*?;[\s\S]*}/gi
);
```

# --seed--

## --seed-contents--

```html
<style>
  .item1 {
    background: LightSkyBlue;
    grid-area: header;
  }

  .item2 {
    background: LightSalmon;
    grid-area: advert;
  }

  .item3 {
    background: PaleTurquoise;
    grid-area: content;
  }

  .item4 {
    background: lightpink;
    grid-area: footer;
  }

  .container {
    font-size: 1.5em;
    min-height: 300px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 50px auto 1fr auto;
    grid-gap: 10px;
    grid-template-areas:
      'header'
      'advert'
      'content'
      'footer';
  }

  @media (min-width: 300px) {
    .container {
      grid-template-columns: auto 1fr;
      grid-template-rows: auto 1fr auto;
      grid-template-areas:
        'advert header'
        'advert content'
        'advert footer';
    }
  }

  @media (min-width: 400px) {
    .container {
      grid-template-areas:
      /* Only change code below this line */
        'advert header'
        'advert content'
        'advert footer';
      /* Only change code above this line */
    }
  }
</style>

<div class="container">
  <div class="item1">header</div>
  <div class="item2">advert</div>
  <div class="item3">content</div>
  <div class="item4">footer</div>
</div>
```

# --solutions--

```html
<style>
  .item1 {
    background: LightSkyBlue;
    grid-area: header;
  }

  .item2 {
    background: LightSalmon;
    grid-area: advert;
  }

  .item3 {
    background: PaleTurquoise;
    grid-area: content;
  }

  .item4 {
    background: lightpink;
    grid-area: footer;
  }

  .container {
    font-size: 1.5em;
    min-height: 300px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 50px auto 1fr auto;
    grid-gap: 10px;
    grid-template-areas:
      'header'
      'advert'
      'content'
      'footer';
  }

  @media (min-width: 300px) {
    .container {
      grid-template-columns: auto 1fr;
      grid-template-rows: auto 1fr auto;
      grid-template-areas:
        'advert header'
        'advert content'
        'advert footer';
    }
  }

  @media (min-width: 400px) {
    .container {
      grid-template-areas:
        'header header'
        'advert content'
        'footer footer';
    }
  }
</style>

<div class="container">
  <div class="item1">header</div>
  <div class="item2">advert</div>
  <div class="item3">content</div>
  <div class="item4">footer</div>
</div>
```
