---
id: 686daa7ed79ceacd0b264e7e
title: Passo 3
challengeType: 0
dashedName: step-3
---

# --description--

O elemento `path` precisa que sua forma seja definida. É aí que entra o atributo `d`.  It is used to create a series of command letters and numbers that draw a shape. 

Essas letras representam comandos como move to, draw line e close, enquanto os números representam coordenadas.  

Defina o atributo `d` da forma de coração para `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`.

# --hints--

Você deve ter um atributo `d` no seu elemento `path`.

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.exists(d);
```

Você deve definir o atributo `d` para `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.strictEqual(
  d,
  'M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z'
);
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
      <path></path>
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
