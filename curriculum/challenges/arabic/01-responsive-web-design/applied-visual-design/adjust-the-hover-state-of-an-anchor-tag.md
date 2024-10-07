---
id: 587d781d367417b2b2512ac8
title: اضبط حالة التأشير بالحوم في علامة الرابط
challengeType: 0
videoUrl: 'https://scrimba.com/c/cakRGcm'
forumTopicId: 301035
dashedName: adjust-the-hover-state-of-an-anchor-tag
---

# --description--

This challenge will touch on the usage of pseudo-classes. A pseudo-class is a keyword that can be added to selectors, in order to select a specific state of the element.

على سبيل المثال، يمكن تغيير تصميم علامة الرابط عندما يحوم الماوس فوقها بواسطة فئة زائفة pseudo-class من نوع `:hover`. ها هوَ CSS لتغيير لون `color` علامة الرابط إلى الأحمر متى حام الموس عليه:

```css
a:hover {
  color: red;
}
```

# --instructions--

يحتوي محرر الكود على قاعدة CSS لتصميم كل علمات `a` الى الأسوَّد (black). أضف قاعدة بحيث عندما يحوم الماوس فوق الرابط `a` يتغيَّر اللون `color` إلى الأزرق (blue).

# --hints--

علامة الرابط `color` يجب أن تبقى سوداء. فقط أضف قواعد CSS لدولة `:hover`.

```js
const anchorElement = document.querySelector("a"); 
const anchorStyle = window.getComputedStyle(anchorElement);
assert.equal(anchorStyle?.color, 'rgb(0, 0, 0)');
```

يجب أن يتغير قيمة `color` في علامة الرابط (anchor) إلى الأزرق (blue) عندما تحوم عليها (hover).

```js
assert.match(code,
    /a:hover\s*?{\s*?color:\s*?(blue|rgba\(\s*?0\s*?,\s*?0\s*?,\s*?255\s*?,\s*?1\s*?\)|#00F|rgb\(\s*?0\s*?,\s*?0\s*?,\s*?255\s*?\))\s*?;\s*?}/gi
  );
```

# --seed--

## --seed-contents--

```html
<style>
  a {
    color: #000;
  }



</style>
<a href="https://freecatphotoapp.com/" target="_blank">CatPhotoApp</a>
```

# --solutions--

```html
<style>
  a {
    color: #000;
  }
  a:hover {
    color: rgba(0,0,255,1);
  }
</style>
<a href="https://freecatphotoapp.com/" target="_blank">CatPhotoApp</a>
```
