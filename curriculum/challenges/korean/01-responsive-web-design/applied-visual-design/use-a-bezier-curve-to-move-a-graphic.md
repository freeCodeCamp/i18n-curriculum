---
id: 587d78a9367417b2b2512ae9
title: Bezier Curve를 사용하여 그래픽 이동하기
challengeType: 0
videoUrl: 'https://scrimba.com/c/c6bnRCK'
forumTopicId: 301071
dashedName: use-a-bezier-curve-to-move-a-graphic
---

# --description--

A previous challenge discussed the `ease-out` keyword that describes an animation change that speeds up first and then slows down at the end of the animation. On the right, the difference between the `ease-out` keyword (for the blue element) and `linear` keyword (for the red element) is demonstrated. Similar animation progressions to the `ease-out` keyword can be achieved by using a custom cubic Bezier curve function.

일반적으로, `p1`과 `p2` 고정점의 변화는 시간 동안 애니메이션의 진행을 제어하는 다양한 Bezier curve를 만들어 냅니다. 다음은 `ease-out`스타일을 따라하기 위한 값을 사용하는 Bezier curve 예제입니다:

```css
animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
```

모든 `cubic-bezier`함수는 (0,0) 에서 `p0`로 시작하고 (1,1) 에서 `p3`로 끝난다는 것을 기억해주세요. 이 예제에서, 곡선이 X축을 통해서 이동(0에서 시작하며 `p1` 에서는 0, `p2` 에서는 최대 0.58지점까지 이동) 하는 것보다 Y축을 통해 이동하는 것이 더 빠릅니다(0에서 시작하여 `p1`의 y 값 0으로 이동한 다음 `p2`의 y 값 1로 이동). 결과적으로, 애니메이션되는 요소의 변화는 해당 세그먼트의 애니메이션 시간보다 더 빠르게 진행됩니다. 곡선의 끝으로 갈수록, x와 y값의 변화 사이의 관계가 반전됩니다 - y값은 1에서 1로 이동하고(변화 없음), x값은 0.58에서 1로 이동하며, 애니메이션 지속 시간과 비교하여 애니메이션 변화가 더 느리게 진행됩니다.

# --instructions--

Bezier curve가 동작하는 결과를 보려면, id가 `red`인 요소의 `animation-timing-function`을 x1, y1, x2, y2의 값이 각각 `0, 0, 0.58, 1`인 `cubic-bezier`함수로 변경하세요. 이것은 두 요소의 애니메이션이 유사하게 진행되도록 만듭니다

# --hints--

Id가 `red`인 요소의 `animation-timing-function`속성 값은 x1, y1, x2, y2값이 각각 0, 0, 0.58, 1인`cubic-bezier`함수가 되어야 합니다.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.equal(
  redStyle?.animationTimingFunction, 'cubic-bezier(0, 0, 0.58, 1)'
);
```

Id가 `red`인 요소는 `animation-timing-function`속성이 더이상 `linear`를 가지지 않아야 합니다.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.notEqual(redStyle?.animationTimingFunction, 'linear');
```

Id가 `blue`인 요소의 `animation-timing-function` 속성 값은 변경되지 않아야 합니다.

```js
const blueElement = document.querySelector('#blue');
const blueStyle = window.getComputedStyle( blueElement);
const blueBallAnimation = __helpers.removeWhiteSpace(
  blueStyle?.animationTimingFunction
);
assert.isTrue(
  blueBallAnimation == 'ease-out' ||
    blueBallAnimation == 'cubic-bezier(0,0,0.58,1)'
);
```

# --seed--

## --seed-contents--

```html
<style>
  .balls{
    border-radius: 50%;
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #red {
    background: red;
    left: 27%;
    animation-timing-function: linear;
  }
  #blue {
    background: blue;
    left: 56%;
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
<div class="balls" id= "red"></div>
<div class="balls" id= "blue"></div>
```

# --solutions--

```html
<style>
  .balls{
    border-radius: 50%;
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #red {
    background: red;
    left: 27%;
    animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
  }
  #blue {
    background: blue;
    left: 56%;
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
<div class="balls" id= "red"></div>
<div class="balls" id= "blue"></div>
```
