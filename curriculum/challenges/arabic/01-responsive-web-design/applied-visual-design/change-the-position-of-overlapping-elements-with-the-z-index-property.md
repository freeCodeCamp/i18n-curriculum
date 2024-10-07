---
id: 587d78a3367417b2b2512acf
title: غيّر موضع العناصر المتداخلة بالخاصية z-index .
challengeType: 0
videoUrl: 'https://scrimba.com/c/cM94aHk'
forumTopicId: 301046
dashedName: change-the-position-of-overlapping-elements-with-the-z-index-property
---

# --description--

When elements are positioned to overlap (i.e. using `position: absolute | relative | fixed | sticky`), the element coming later in the HTML markup will, by default, appear on the top of the other elements. However, the `z-index` property can specify the order of how elements are stacked on top of one another. It must be an integer (i.e. a whole number and not a decimal), and higher values for the `z-index` property of an element move it higher in the stack than those with lower values.

# --instructions--

فلتُضِف الخاصية `z-index` إلى العنصر الذى اسم فئته class هو `first` ( المستطيل الأحمر ) ، و اضبطها على قيمة 2 ، و بالتالى يُغطى العنصر الآخر ( المستطيل الأزرق ) .

# --hints--

العنصر الذى لديه الفئة class هى `first` ينبغى أن يحوى `z-index` بقيمة 2 .

```js
const firstElement = document.querySelector('.first');
const firstStyle = window.getComputedStyle(firstElement); 
assert.equal(firstStyle?.zIndex, '2');
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 60%;
    height: 200px;
    margin-top: 20px;
  }

  .first {
    background-color: red;
    position: absolute;

  }
  .second {
    background-color: blue;
    position: absolute;
    left: 40px;
    top: 50px;
    z-index: 1;
  }
</style>

<div class="first"></div>
<div class="second"></div>
```

# --solutions--

```html
<style>
  div {
    width: 60%;
    height: 200px;
    margin-top: 20px;
  }

  .first {
    background-color: red;
    position: absolute;
    z-index: 2;
  }
  .second {
    background-color: blue;
    position: absolute;
    left: 40px;
    top: 50px;
    z-index: 1;
  }
</style>
<div class="first"></div>
<div class="second"></div>
```
