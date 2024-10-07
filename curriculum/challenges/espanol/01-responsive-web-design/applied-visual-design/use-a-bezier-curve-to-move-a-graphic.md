---
id: 587d78a9367417b2b2512ae9
title: Usa una curva de Bezier para mover un gráfico
challengeType: 0
videoUrl: 'https://scrimba.com/c/c6bnRCK'
forumTopicId: 301071
dashedName: use-a-bezier-curve-to-move-a-graphic
---

# --description--

A previous challenge discussed the `ease-out` keyword that describes an animation change that speeds up first and then slows down at the end of the animation. On the right, the difference between the `ease-out` keyword (for the blue element) and `linear` keyword (for the red element) is demonstrated. Similar animation progressions to the `ease-out` keyword can be achieved by using a custom cubic Bezier curve function.

En general, el cambio de los puntos de anclaje `p1` y `p2` impulsa la creación de diferentes curvas Bezier, que controlan como la animación progresa a través del tiempo. Aquí tienes un ejemplo de una curva Bezier usando valores para imitar el estilo de `ease-out`:

```css
animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
```

Recuerda que todas las funciones `cubic-bezier` comienzan con `p0` en (0, 0) y terminan con `p3` en (1, 1). En este ejemplo, la curva se mueve más rápido a través del eje Y (comienza en 0, va a `p1` y valor de 0, luego va a `p2` y valor de 1) que se mueve a través del eje X (0 para iniciar, luego 0 para `p1`, hasta 0.58 para `p2`. Como resultado, el cambio en el elemento animado progresa más rápido que el tiempo de la animación para ese segmento. Hacia el final de la curva, la relación entre el cambio en los valores X e Y se invierte: el valor y se mueve de 1 a 1 (sin cambios), y los valores X se mueven de 0.58 a 1, lo que hace que los cambios de animación progresen más lentamente en comparación con la duración de la animación.

# --instructions--

Para ver el efecto de esta curva de Bézier en acción, cambia el `animation-timing-function` del elemento con el id `red` a una función `cubic-bezier` con x1, y1, x2, y2 establecidos respectivamente como los valores `0, 0, 0.58, 1`. Esto hará que ambos elementos progresen a través de la animación de manera similar.

# --hints--

El valor de la propiedad `animation-timing-function` del elemento con el id `red` debe ser una función `cubic-bezier` con valores x1, y1, x2, y2 establecidos respectivamente en 0, 0, 0.58, 1.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.equal(
  redStyle?.animationTimingFunction, 'cubic-bezier(0, 0, 0.58, 1)'
);
```

El elemento con el id `red` ya no debería tener la propiedad `animation-timing-function` de `linear`.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.notEqual(redStyle?.animationTimingFunction, 'linear');
```

El valor de la propiedad `animation-timing-function` para el elemento con el id `blue` no debe cambiar.

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
