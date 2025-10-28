---
id: 686daa7ed79ceacd0b264e7d
title: Passo 2
challengeType: 0
dashedName: step-2
---

# --description--

O próximo passo é definir os atributos `width` e `height` para o elemento `svg`.Ao criar um ícone, ambos os valores devem ser definidos como small.

Defina ambos os valores para `24`.

# --hints--

Seu elemento `svg` deve ter um atributo `width` de `24`.

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

Seu elemento `svg` deve ter um atributo `height` com valor `24`.

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
