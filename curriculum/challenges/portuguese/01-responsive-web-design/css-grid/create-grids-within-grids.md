---
id: 5a94fe8569fb03452672e464
title: Criar grids dentro de grids
challengeType: 0
forumTopicId: 301128
dashedName: create-grids-within-grids
---

# --description--

Turning an element into a grid only affects the behavior of its direct descendants. So by turning a direct descendant into a grid, you have a grid within a grid.

Por exemplo, ao definir as propriedades `display` e `grid-template-columns` do elemento com a classe `item3`, você cria um grid dentro de um grid.

# --instructions--

Transforme o elemento com a classe `item3` em um grid de duas colunas com uma largura de `auto` e `1fr` usando as propriedades `display` e `grid-template-columns`.

# --hints--

O elemento de classe `item3` deve ter a propriedade `grid-template-columns` com os valores de `auto` e `1fr`.

```js
assert.match(
  code,
  /.item3\s*?{[\s\S]*grid-template-columns\s*?:\s*?auto\s*?1fr\s*?;[\s\S]*}/gi
);
```

O elemento de classe `item3` deve ter a propriedade `display` com o valor de `grid`.

```js
assert.match(code, /.item3\s*?{[\s\S]*display\s*?:\s*?grid\s*?;[\s\S]*}/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .container {
    font-size: 1.5em;
    min-height: 300px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: auto 1fr;
    grid-template-rows: auto 1fr auto;
    grid-gap: 10px;
    grid-template-areas:
      'advert header'
      'advert content'
      'advert footer';
  }
  .item1 {
    background: LightSkyBlue;
    grid-area: header;
  }

  .item2 {
    background: LightSalmon;
    grid-area: advert;
  }

  .item3 {
    background: PaleTurquoise;
    grid-area: content;
    /* Only change code below this line */


    /* Only change code above this line */
  }

  .item4 {
    background: lightpink;
    grid-area: footer;
  }

  .itemOne {
    background: PaleGreen;
  }

  .itemTwo {
    background: BlanchedAlmond;
  }
</style>

<div class="container">
  <div class="item1">header</div>
  <div class="item2">advert</div>
  <div class="item3">
    <div class="itemOne">paragraph1</div>
    <div class="itemTwo">paragraph2</div>
  </div>
  <div class="item4">footer</div>
</div>
```

# --solutions--

```html
<style>
  .item3 {
    grid-template-columns: auto 1fr;
    display: grid;
  }
</style>
```
