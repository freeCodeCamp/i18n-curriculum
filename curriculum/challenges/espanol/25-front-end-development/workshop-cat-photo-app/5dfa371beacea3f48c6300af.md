---
id: 5dfa371beacea3f48c6300af
title: Paso 21
challengeType: 0
dashedName: step-21
---

# --description--

Cuando agregas un elemento de encabezado de menor rango a la página, se implica que estás comenzando una nueva subsección.

Después del último elemento `h2` del segundo elemento `section`, agrega un elemento `h3` con este texto:

`Things cats love:`

# --hints--

El segundo elemento `section` parece estar ausente o no tiene tanto una etiqueta de apertura como de cierre.

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

Debe haber un elemento `h3` justo encima de la etiqueta de cierre del segundo elemento `section`.

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

Tu elemento `h3` debe tener una etiqueta de cierre. Las etiquetas de cierre tienen un `/` justo después del carácter `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

El elemento `h3` justo encima de la etiqueta de cierre del segundo elemento `section` debe tener el texto `Things cats love:`. Asegúrate de incluir dos puntos al final del texto.

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

Debe haber un elemento `h2` con el texto `Cat Lists` sobre el último elemento `h3` que está anidado en el último elemento `section`'. Es posible que hayas eliminado accidentalmente el elemento `h2`.

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  ?.lastElementChild;
assert.equal( secondSectionLastElemNode?.nodeName, 'H3');
assert.equal(
 secondSectionLastElemNode?.previousElementSibling.innerText?.trim()
      .toLowerCase()
      .replace(/\s+/g, ' '), 'cat lists'
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
--fcc-editable-region--
      <section>
        <h2>Cat Lists</h2>

      </section>
--fcc-editable-region--
    </main>
  </body>
</html>
```
