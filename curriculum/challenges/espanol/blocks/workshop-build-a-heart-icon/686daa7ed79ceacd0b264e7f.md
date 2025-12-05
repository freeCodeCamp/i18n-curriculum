---
id: 686daa7ed79ceacd0b264e7f
title: Paso 4
challengeType: 0
dashedName: step-4
---

# --description--

Antes de comenzar a colorear la imagen, debes anidar un elemento `path` dentro de tu elemento `svg` para darle forma a la imagen.

Crea un elemento `path`.

# --hints--

Debes tener un elemento `path` anidado dentro de tu elemento `svg`.

```js
const path = document.querySelector('svg path');
assert.exists(path);
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
    <svg width="24" height="24" viewBox="0 0 24 24">
      
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
