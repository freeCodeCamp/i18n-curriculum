---
id: 587d7791367417b2b2512ab3
title: 使用 text-align 屬性創建視覺平衡
challengeType: 0
videoUrl: 'https://scrimba.com/c/c3b4EAp'
forumTopicId: 301053
dashedName: create-visual-balance-using-the-text-align-property
---

# --description--

This section of the curriculum focuses on Applied Visual Design. The first group of challenges build on the given card layout to show a number of core principles.

web 內容大部分都是文本。 CSS 裏面的 `text-align` 屬性可以控制文本的對齊方式。

`text-align: justify;` 將文本隔開，使每行的寬度相等。

`text-align: center;` 可以讓文本居中對齊。

`text-align: right;` 可以讓文本右對齊。

`text-align: left;` 是默認值，它可以讓文本左對齊。

# --instructions--

請讓內容文本爲 “Google” 的 `h4` 標籤居中對齊， 然後將介紹 Google 創立歷程的段落文本兩端對齊。

# --hints--

`h4` 標籤應有值爲 `center` 的 text-align 屬性。

```js
const h4Element =document.querySelector('h4')
const h4Style = window.getComputedStyle(h4Element);
assert.equal(h4Style?.textAlign, 'center');
```

`p` 標籤應有值爲 `justify` 的 text-align 屬性。

```js
const pElement =document.querySelector('p')
const pStyle = window.getComputedStyle(pElement);
assert.equal(pStyle?.textAlign, 'justify');
```

# --seed--

## --seed-contents--

```html
<style>
  h4 {

  }
  p {

  }
  .links {
    margin-right: 20px;

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
