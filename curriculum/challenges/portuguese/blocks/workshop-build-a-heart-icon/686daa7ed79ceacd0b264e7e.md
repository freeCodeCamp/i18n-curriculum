---
id: 686daa7ed79ceacd0b264e7e
title: Passo 3
challengeType: 0
dashedName: step-3
---

# --description--

Você está chegando mais perto.A próxima coisa a fazer é definir o atributo `viewBox` do elemento `svg`.Isto controlará quanto da imagem está visível.Os dois primeiros números definem o centro da imagem.

Os dois números a seguir definem o tamanho da imagem que podemos ver: largura seguida de altura.

Como aqui a totalidade do ícone deve estar visível, você deve definir o atributo `viewBox` para `0 0 24 24`.

# --hints--

Você deve ter um atributo `viewBox`.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
assert.exists(viewBox);
```

Você deve definir a posição x do `viewBox` para 0.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const x = viewBox?.trim().split(' ')[0];
assert.strictEqual(x, '0');
```

Você deve definir a posição y do `viewBox` para 0.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const y = viewBox?.trim().split(' ')[1];
assert.strictEqual(y, '0');
```

Você deve definir a largura do `viewBox` para 24.

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const width = viewBox?.trim().split(' ')[2];
assert.strictEqual(width, '24');
```

Você deve definir a altura do `viewBox` para 24.

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
