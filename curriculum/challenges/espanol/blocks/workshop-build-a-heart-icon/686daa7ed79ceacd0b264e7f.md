---
id: 686daa7ed79ceacd0b264e7f
title: Paso 4
challengeType: 0
dashedName: step-4
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
      <path
        d="M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z"
      ></path>
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
