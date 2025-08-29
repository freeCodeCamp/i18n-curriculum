---
id: 587d78a4367417b2b2512ad2
title: Aprender sobre cores terciárias
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

As cores terciárias são o resultado da combinação de uma cor primária com uma cor secundária próxima. Por exemplo, dentro do modelo de cores RGB, a mistura de vermelho (primário) e amarelo (secundário) cria-se o laranja (terciário). Essa combinação adiciona mais seis cores a um círculo cromático simples, somando um total de doze cores.

Existem vários métodos de seleção de cores diferentes que resultam em uma combinação harmoniosa de design. Um exemplo que usa cores terciárias é o chamado esquema de cores complementares divididas. Esse esquema começa com uma cor de base e a emparelha com as duas cores adjacentes (próximas) ao seu complemento. As três cores fornecem forte contraste visual, mas são mais sutis do que usar duas cores complementares.

Aqui estão três cores criadas usando o esquema de cores complementares divididas:

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

Altere a propriedade `background-color` das classes `orange` (laranja), `cyan` (ciano) e `raspberry` (framboesa) para suas respectivas cores. Certifique-se de usar os códigos hexadecimais e não os nomes das cores.

# --hints--

O elemento `div` com a classe `orange` deve ter a propriedade `background-color` de cor laranja.

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

O elemento `div` com a classe `cyan` deve ter a propriedade `background-color` com o valor cyan (ciano).

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

O elemento `div` com a classe `raspberry` deve ter a propriedade `background-color` de cor framboesa.

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

Todos os valores de cada propriedade `background-color` devem ser códigos hexadecimais e não nomes de cores.

```js
assert.notMatch(code, /background-color:\s(orange|cyan|raspberry)/);
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #000000;
  }

  .cyan {
    background-color: #000000;
  }

  .raspberry {
    background-color: #000000;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>

<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #FF7F00;
  }

  .cyan {
    background-color: #00FFFF;
  }

  .raspberry {
    background-color: #FF007F;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>
<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```
