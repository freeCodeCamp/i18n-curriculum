---
id: 587d78a5367417b2b2512ad6
title: Створити поступовий лінійний градієнт CSS
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

Перший аргумент вказує напрямок, від якого починається перехід кольору - його можна позначити як ступінь, де `90deg` робить горизонтальний градієнт (зліва направо) і `45deg` робить градієнт по діагоналі (зліва знизу вправо вверх). Наступні аргументи визначають порядок кольорів, які використовуються в градієнті.

Наприклад:

```css
background: linear-gradient(90deg, red, yellow, rgb(204, 204, 255));
```

# --instructions--

Використовуйте `linear-gradient()` для елемента `div`, і встановіть йому напрям 35 градусів для зміни кольору від `#CCFFFF` до `#FFCCCC`.

# --hints--

Елемент `div` повинен мати a `linear-gradient` `background` з вказаним напрямом і кольорами.

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
