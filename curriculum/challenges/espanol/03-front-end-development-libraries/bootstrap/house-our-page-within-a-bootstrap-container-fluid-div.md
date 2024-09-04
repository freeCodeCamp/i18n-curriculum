---
id: bad87fee1348bd9aec908746
title: Aloja nuestra página dentro de un container-fluid div de Bootstrap
challengeType: 0
forumTopicId: 18198
dashedName: house-our-page-within-a-bootstrap-container-fluid-div
---

# --description--

Ahora vamos a asegurarnos que todo el contenido de tu página sea adaptable para dispositivos móviles.

Anidemos tu elemento `h3` dentro de un elemento `div` con la clase `container-fluid`.

# --hints--

Tu elemento `div` debe tener la clase `container-fluid`.

```js
assert.isTrue(document.querySelector('div')?.classList?.contains('container-fluid'));
```

Cada uno de tus elementos `div` debe tener etiquetas de cierre.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);

assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

Tu elemento `h3` debe estar anidado dentro de un elemento `div`.

```js
const divElement = document.querySelector('div');
const divChildren = divElement?.querySelectorAll(`:scope ${'h3'}`)
assert.lengthOf(divChildren,1);
```

# --seed--

## --seed-contents--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```

# --solutions--

```html
<div class="container-fluid">
    <h3 class="text-primary text-center">jQuery Playground</h3>
</div>
```
