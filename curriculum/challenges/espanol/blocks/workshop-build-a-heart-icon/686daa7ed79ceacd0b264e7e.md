---
id: 686daa7ed79ceacd0b264e7e
title: Paso 3
challengeType: 0
dashedName: step-3
---

# --description--

Estás acercándote, ahora mira este ejemplo:

```html
<svg viewBox="0 0 50 50">
</svg>
```

El atributo `viewBox` controla qué parte de la imagen es visible dentro del SVG.

- Los dos primeros números (`0 0`) establecen la posición inicial del `viewBox`: la esquina superior izquierda (x e y).
- Los siguientes dos números (`50 50`) definen el ancho y alto del `viewBox`.

Establece el atributo `viewBox` a `0 0 24 24`.

# --hints--

Debes tener un atributo `viewBox`.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
assert.exists(viewBox);
```

Debes establecer la posición x de `viewBox` en 0.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const x = viewBox?.trim().split(' ')[0];
assert.strictEqual(x, '0');
```

Debes establecer el `viewBox` y la posición en 0.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const y = viewBox?.trim().split(' ')[1];
assert.strictEqual(y, '0');
```

Debes establecer el ancho de `viewBox` en 24.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const width = viewBox?.trim().split(' ')[2];
assert.strictEqual(width, '24');
```

Debes establecer la altura de `viewBox` en 24.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const height = viewBox?.trim().split(' ')[3];
assert.strictEqual(height, '24');
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Heart Icon</title>
  </head>
  <body>
    --fcc-editable-region--
    <svg width="24" height="24">
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
