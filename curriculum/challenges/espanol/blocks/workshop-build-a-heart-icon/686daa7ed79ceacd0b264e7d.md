---
id: 686daa7ed79ceacd0b264e7d
title: Paso 2
challengeType: 0
dashedName: step-2
---

# --description--

El siguiente paso es establecer los atributos `width` y `height` para el elemento `svg`. Como estás creando un ícono, ambos valores deben ser pequeños.

Establece ambos valores en `24`.

# --hints--

Tu elemento `svg` debe tener un atributo `width` de `24`.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

Tu elemento `svg` debe tener un atributo `height` de `24`.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('height'), '24');
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
    <svg>
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
