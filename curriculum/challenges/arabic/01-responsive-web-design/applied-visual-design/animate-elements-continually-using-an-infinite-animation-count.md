---
id: 587d78a8367417b2b2512ae3
title: تحريك العناصر بصورة مستمرة باستخدام عدّادّ تحريك لانهائي
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJDVfq'
forumTopicId: 301041
dashedName: animate-elements-continually-using-an-infinite-animation-count
---

# --description--

The previous challenges covered how to use some of the animation properties and the `@keyframes` rule. Another animation property is the `animation-iteration-count`, which allows you to control how many times you would like to loop through the animation. إليك مثال:

```css
animation-iteration-count: 3;
```

فى هذى الحالة ستتوقف الرسوم المتحركة بعد أن تشتغل 3 مرات , و لكن من الممكن جعل الرسوم تشتغل باستمرار بضبط تلك القيمة على  `infinite` .

# --instructions--

للحفاظ على ارتداد الكرة على اليمين في حلقة مستمرة ، غَير خاصية `animation-iteration-count` إلى `infinite` .

# --hints--

الخاصية `animation-iteration-count` يجب أن تحوى قيمة `infinite` .

```js
const ballElement = document.querySelector('#ball');
const ballStyle = window.getComputedStyle(ballElement); 
assert.equal(ballStyle?.animationIterationCount, 'infinite');
```

# --seed--

## --seed-contents--

```html
<style>

  #ball {
    width: 100px;
    height: 100px;
    margin: 50px auto;
    position: relative;
    border-radius: 50%;
    background: linear-gradient(
      35deg,
      #ccffff,
      #ffcccc
    );
    animation-name: bounce;
    animation-duration: 1s;
    animation-iteration-count: 3;
  }

  @keyframes bounce{
    0% {
      top: 0px;
    }
    50% {
      top: 249px;
      width: 130px;
      height: 70px;
    }
    100% {
      top: 0px;
    }
  }
</style>
<div id="ball"></div>
```

# --solutions--

```html
<style>
  #ball {
    width: 100px;
    height: 100px;
    margin: 50px auto;
    position: relative;
    border-radius: 50%;
    background: linear-gradient(
      35deg,
      #ccffff,
      #ffcccc
    );
    animation-name: bounce;
    animation-duration: 1s;
    animation-iteration-count: infinite;
  }

  @keyframes bounce{
    0% {
      top: 0px;
    }
    50% {
      top: 249px;
      width: 130px;
      height: 70px;
    }
    100% {
      top: 0px;
    }
  }
</style>
<div id="ball"></div>
```
