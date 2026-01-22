---
id: 686daa7ed79ceacd0b264e7f
title: Passo 4
challengeType: 0
dashedName: step-4
---

# --description--

O próximo passo é definir os atributos `width` e `height` para o elemento `svg`. Ao criar um ícone, ambos os valores devem ser definidos como small.

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
    --fcc-editable-region--
      <path
        d="M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z"
      ></path>
    </svg>
  </body>
</html>
```
