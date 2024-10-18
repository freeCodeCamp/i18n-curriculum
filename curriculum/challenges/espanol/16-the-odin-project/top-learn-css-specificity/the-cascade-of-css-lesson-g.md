---
id: 6489cf7682cf2e4f86f03ae8
title: La Cascada de la lección de CSS G
challengeType: 15
dashedName: the-cascade-of-css-lesson-g
---

# --description--

La herencia se refiere a ciertas propiedades de CSS que, cuando se aplican a un elemento, son heredadas por los descendientes de ese elemento, incluso si no escribimos explícitamente una regla para esos descendientes. Las propiedades basadas en tipografía (`color`, `font-size`, `font-family`, etc.) suelen heredarse, mientras que la mayoría de las otras propiedades no se heredan.

La excepción a esto es cuando se apunta directamente a un elemento, ya que esto siempre supera a la herencia:

```html
<!-- index.html -->

<div id="parent">
  <div class="child"></div>
</div>
```

```css
/* styles.css */

#parent {
  color: red;
}

.child {
  color: blue;
}
```

A pesar de que el elemento `parent` tiene una especificidad mayor con un ID, el elemento `child` tendría el estilo `color: blue` aplicado ya que esa declaración lo apunta directamente, mientras que `color: red` del padre solo se hereda.

# --questions--

## --text--

Basado en el código HTML y CSS dado, ¿cuál sería el color del elemento `<div class="child"></div>`?

## --answers--

Rojo

---

Azul

---

Heredado del elemento padre

---

Transparente

## --video-solution--

2
