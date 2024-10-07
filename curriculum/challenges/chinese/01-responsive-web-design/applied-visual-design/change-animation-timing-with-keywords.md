---
id: 587d78a8367417b2b2512ae7
title: 使用关键字更改动画定时器
challengeType: 0
videoUrl: 'https://scrimba.com/c/cJKvwCM'
forumTopicId: 301045
dashedName: change-animation-timing-with-keywords
---

# --description--

In CSS animations, the `animation-timing-function` property controls how quickly an animated element changes over the duration of the animation. If the animation is a car moving from point A to point B in a given time (your `animation-duration`), the `animation-timing-function` says how the car accelerates and decelerates over the course of the drive.

有一些预定义的关键字可用于常见的选项。 比如，默认值是 `ease`，动画以低速开始，然后加快，在结束前变慢。 其它常用的值包括 `ease-out`：动画以高速开始，以低速结束；`ease-in`，动画以低速开始，以高速结束；`linear`：动画从头到尾的速度是相同的。

# --instructions--

给 id 为 `ball1` 和 `ball2` 的元素添加 `animation-timing-function`，`ball1` 的属性值为 `linear`，`ball2` 的属性值为 `ease-out`。 它们的 `animation-duration` 都为 2 秒，注意观察它们在开始和结束时的不同。

# --hints--

id 为 `ball1` 的元素的 `animation-timing-function` 属性值应为 `linear`。

```js
const ballOne =document.querySelector('#ball1'); 
const ballOneStyle = window.getComputedStyle(ballOne); 

const ball1Animation = __helpers.removeWhiteSpace(ballOneStyle?.animationTimingFunction);
assert.isTrue(ball1Animation == 'linear' || ball1Animation == 'cubic-bezier(0,0,1,1)');
```

id 为 `ball2` 的元素的 `animation-timing-function` 属性值为 `ease-out`。

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
