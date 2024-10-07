---
id: 587d78a5367417b2b2512ad6
title: CSS 선형 그라데이션 만들기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cg4dpt9'
forumTopicId: 301047
dashedName: create-a-gradual-css-linear-gradient
---

# --description--

Applying a color on HTML elements is not limited to one flat hue. CSS provides the ability to use color transitions, otherwise known as gradients, on elements. This is accessed through the `background` property's `linear-gradient()` function. Here is the general syntax:

```css
background: linear-gradient(gradient_direction, color 1, color 2, color 3, ...);
```

첫 번째 인수는 색상 전환을 시작하는 방향을 지정합니다. 이는 도(degree)로 나타낼 수 있으며, `90deg`는 수평 그라데이션(왼쪽에서 오른쪽으로), `45deg`는 대각선 그라데이션(왼쪽 아래에서 오른쪽 위로)을 만듭니다. 다음 인수들은 그라데이션에 사용되는 색상의 순서를 지정합니다.

예:

```css
background: linear-gradient(90deg, red, yellow, rgb(204, 204, 255));
```

# --instructions--

`linear-gradient()`를 사용하여 `div` 요소의 `background`을 설정하고, 색상을 35도 방향으로 `#CCFFFF`에서 `#FFCCCC`으로 변경하도록 설정하세요.

# --hints--

`div` 요소는 지정된 방향과 색상을 가진 `linear-gradient` `background`을 가져야 합니다.

```js
const divElement = document.querySelector('div');
const divStyle = window.getComputedStyle(divElement); 
assert.match(divStyle?.background, /linear-gradient\(35deg, rgb\(204, 255, 255\), rgb\(255, 204, 204\)\)/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    border-radius: 20px;
    width: 70%;
    height: 400px;
    margin: 50px auto;

  }

</style>

<div></div>
```

# --solutions--

```html
<style>
  div {
    border-radius: 20px;
    width: 70%;
    height: 400px;
    margin: 50px auto;
    background: linear-gradient(35deg, #CCFFFF, #FFCCCC);
  }
</style>
<div></div>
```
