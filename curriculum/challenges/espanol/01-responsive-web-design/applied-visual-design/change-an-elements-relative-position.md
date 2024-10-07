---
id: 587d781e367417b2b2512ac9
title: Cambia la posición relativa de un elemento
challengeType: 0
videoUrl: 'https://scrimba.com/c/czVmMtZ'
forumTopicId: 301044
dashedName: change-an-elements-relative-position
---

# --description--

CSS treats each HTML element as its own box, which is usually referred to as the <dfn>CSS Box Model</dfn>. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the <dfn>normal flow</dfn> of a document, but CSS offers the position property to override it.

Cuando la posición de un elemento se establece a `relative`, te permite especificar como CSS lo moverá *relativo* a su posición actual dentro del flujo normal de la página. Se empareja con las propiedades de desplazamiento CSS de `left` o `right`, y `top` o `bottom`. Estas dicen cuántos pixeles, porcentajes, o ems se debe mover el elemento *lejos* de donde esté normalmente posicionado. El siguiente ejemplo mueve el párrafo 10 pixeles lejos de la parte inferior:

```css
p {
  position: relative;
  bottom: 10px;
}
```

Cambiando la posición de un elemento a relative no lo quita del flujo normal; otros elementos a su alrededor aún se comportarán como si dicho elemento estuviera en su posición predeterminada.

**Nota:** el posicionamiento te da mucha flexibilidad y poder sobre el diseño visual de una página. Es bueno recordar que no importa la posición de los elementos, el lenguaje de marcado HTML subyacente debe organizarse y tener sentido cuando se lee de arriba a abajo. Así es como los usuarios con discapacidades visuales (que dependen de dispositivos de asistencia como lectores de pantalla) acceden a tu contenido.

# --instructions--

Cambia la propiedad `position` de `h2` a `relative`, y usa CSS desplazamiento para moverlo 15 pixeles lejos de la parte superior `top` donde se ubica dentro del flujo normal. Observa que no hay impacto en las posiciones de los elementos h1 y p que están al rededor.

# --hints--

El elemento `h2` debe tener una propiedad `position` con valor `relative`.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.position, 'relative');
```

Tu código debe usar un desplazamiento CSS para posicionar relativamente el elemento `h2` a 15px lejos de la parte superior `top` donde se ubica normalmente.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.top, '15px');
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {


  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<style>
  h2 {
    position: relative;
    top: 15px;
  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
