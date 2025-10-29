---
id: bad87fee1348bd9bec908846
title: Criar uma linha do Bootstrap
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

Agora vamos criar uma linha do Bootstrap para nossos elementos em linha.

Crie um elemento `div` abaixo da tag `h3`, com a classe `row`.

# --hints--

Você deve adicionar o elemento `div` abaixo do elemento `h3`.

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

O elemento `div` deve ter a classe `row`

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

O `row div` deve estar aninhado dentro de `container-fluid div`

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

O elemento `div` deve ter uma tag de fechamento.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>

</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row"></div>
</div>
```
