---
id: bad87fee1348bd9bec908846
title: Crea una fila Bootstrap
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

Ahora crearemos una fila Bootstrap para nuestros elementos en línea.

Crea un elemento `div` debajo de la etiqueta `h3`, con la clase `row`.

# --hints--

Debes agregar un elemento `div` debajo de tu elemento `h3`.

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

Tu elemento `div` debe tener la clase `row`

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

Tu `row div` debe estar anidado dentro de `container-fluid div`

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

Tu elemento `div` debe tener una etiqueta de cierre.

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
