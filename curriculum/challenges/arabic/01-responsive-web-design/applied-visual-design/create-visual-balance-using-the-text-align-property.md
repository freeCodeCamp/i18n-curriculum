---
id: 587d7791367417b2b2512ab3
title: قم بإنشاء توازن بصري باستخدام خاصية محاذاة النص
challengeType: 0
videoUrl: 'https://scrimba.com/c/c3b4EAp'
forumTopicId: 301053
dashedName: create-visual-balance-using-the-text-align-property
---

# --description--

This section of the curriculum focuses on Applied Visual Design. The first group of challenges build on the given card layout to show a number of core principles.

غالباً ما يكون النص جزء كبير من محتوى الويب. ل CSS عدة خيارات لمحاذاته مع خاصية `text-align`.

خاصية `text-align: justify;` تحاذي النص بحيث أن لكل سطر عرض متساوٍ.

`text-align: center;` تُمركز النص

خاصية `text-align: right;` تحاذي النص إلى اليمين

و خاصية `text-align: left;` (الافتراضية) تحاذي النص إلى اليسار.

# --instructions--

قم بمحاذاة علامة النص `h4`، التي تحوي "Google"، إلى المركز. ثم قم بمحاذاة علامة الفقرة التي تحوي معلومات عن كيف تأسست جوجل، بحيث أن لكل سطر عرض متساوٍ.

# --hints--

التعليمات البرمجية الخاصة بك يجب أن تستخدم خاصية محاذاة النص للعلامة `h4` لتعيينها على `center`.

```js
const h4Element =document.querySelector('h4')
const h4Style = window.getComputedStyle(h4Element);
assert.equal(h4Style?.textAlign, 'center');
```

التعليمات البرمجية الخاصة بك يجب أن تستخدم خاصية محاذاة النص للعلامة `p` لتعيينها على `justify`.

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
