---
id: 587d78a8367417b2b2512ae7
title: غيّر توقيت الرسوم المتحركة بالكلمات الرئيسية Keywords
challengeType: 0
videoUrl: 'https://scrimba.com/c/cJKvwCM'
forumTopicId: 301045
dashedName: change-animation-timing-with-keywords
---

# --description--

In CSS animations, the `animation-timing-function` property controls how quickly an animated element changes over the duration of the animation. If the animation is a car moving from point A to point B in a given time (your `animation-duration`), the `animation-timing-function` says how the car accelerates and decelerates over the course of the drive.

يوجد عدد من الكلمات الرئيسية keywords المحددة مُسبقاً و المتاحة للخيارات الشائعة . على سبيل المثال , القيمة الافتراضية هى `ease` , و التى تبتدأ بطيئةً , ثم تُسرع فى الوسط , ثم تُبطئ مرة أخرى فى النهاية . خيارات أخرى تشتمل على `ease-out` الذى هو سريع فى البداية ثم يُبطئ , و `ease-in` الذى هو بطيئ فى البداية ثم يسرع فى النهاية , أو `linear` الذى يُطبق سرعة تحريك ثابتة طوال الوقت .

# --instructions--

للعناصر التى لديها id بــ `ball1` و `ball2` , فلتُضِف خاصية `animation-timing-function` لكل منها , ضابطاً `#ball1` إلى `linear` , و `#ball2` إلى `ease-out` . لاحظ التفاوت بين كيفية تحرك العناصر إلا أنها تتوقف معاً , ذلك لأنها تُشارك نفس الثانيتين 2 لــ `animation-duration` .

# --hints--

قيمة الخاصية `animation-timing-function` للعنصر الذى به id يحمل `ball1` ينبغى أن تكون `linear` .

```js
const ballOne =document.querySelector('#ball1'); 
const ballOneStyle = window.getComputedStyle(ballOne); 

const ball1Animation = __helpers.removeWhiteSpace(ballOneStyle?.animationTimingFunction);
assert.isTrue(ball1Animation == 'linear' || ball1Animation == 'cubic-bezier(0,0,1,1)');
```

قيمة الخاصية `animation-timing-function` للعنصر الذى به id يحمل `ball2` ينبغى أن تكون `ease-out` .

```js
const ballTwo = document.querySelector('#ball2'); 
const ballTwoStyle = window.getComputedStyle(ballTwo); 

const ball2Animation = __helpers.removeWhiteSpace(ballTwoStyle?.animationTimingFunction);
assert.isTrue(ball2Animation == 'ease-out' || ball2Animation == 'cubic-bezier(0,0,0.58,1)');
```

# --seed--

## --seed-contents--

```html
<style>

  .balls {
    border-radius: 50%;
    background: linear-gradient(
      35deg,
      #ccffff,
      #ffcccc
    );
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #ball1 {
    left:27%;

  }
  #ball2 {
    left:56%;

  }

  @keyframes bounce {
    0% {
      top: 0px;
    }
    100% {
      top: 249px;
    }
  }

</style>

<div class="balls" id="ball1"></div>
<div class="balls" id="ball2"></div>
```

# --solutions--

```html
<style>
  .balls {
    border-radius: 50%;
    background: linear-gradient(
      35deg,
      #ccffff,
      #ffcccc
    );
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #ball1 {
    left:27%;
    animation-timing-function: linear;
  }
  #ball2 {
    left:56%;
    animation-timing-function: ease-out;
  }

  @keyframes bounce {
    0% {
      top: 0px;
    }
    100% {
      top: 249px;
    }
  }
</style>
<div class="balls" id="ball1"></div>
<div class="balls" id="ball2"></div>
```
