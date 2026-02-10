---
id: 618a16d21bd3dad1bb3aa8ef
title: Paso 36
challengeType: 0
dashedName: step-36
---

# --description--

Ahora es el momento de añadir otros detalles a los marcadores, vamos con el primero.

En el primer elemento de marcador `div`, cambia la clase `one` a `red`.

# --hints--

Tu primer marcador `div` no debe tener la clase `one`.

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert.isFalse(containerFirstChild?.classList?.contains('one'));
```

Tu primer marcador `div` debe tener las clases `marker` y `red`.

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert.isTrue(containerFirstChild?.classList?.contains('marker'));
assert.isTrue(containerFirstChild?.classList?.contains('red'));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
      --fcc-editable-region--
      <div class="marker one">
      --fcc-editable-region--
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
}

.container {
  background-color: rgb(255, 255, 255);
  padding: 10px 0;
}

.marker {
  width: 200px;
  height: 25px;
  margin: 10px auto;
}

.one {
  background-color: rgb(0, 0, 0);
}

.two {
  background-color: rgb(0, 0, 0);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
