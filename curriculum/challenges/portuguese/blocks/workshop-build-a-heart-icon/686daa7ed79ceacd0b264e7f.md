---
id: 686daa7ed79ceacd0b264e7f
title: Passo 4
challengeType: 0
dashedName: step-4
---

# --description--

Antes de começar a colorir a imagem, você deve aninhar um elemento `path` dentro do seu elemento `svg` para dar forma à imagem.

Crie um elemento `path`.

# --hints--

Você deve ter um elemento `path` aninhado dentro do seu elemento `svg`.

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
