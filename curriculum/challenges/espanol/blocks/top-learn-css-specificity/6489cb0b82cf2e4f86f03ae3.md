---
id: 6489cb0b82cf2e4f86f03ae3
title: La cascada de CSS lección C
challengeType: 15
dashedName: the-cascade-of-css-lesson-c
---

# --description--

Echemos un vistazo a algunos ejemplos rápidos para visualizar cómo funciona la especificidad. Considera el siguiente código HTML y CSS:

```html
<!-- index.html -->

<div class="main">
  <div class="list subsection"></div>
</div>
```

```css
/* rule 1 */
.subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```

En el ejemplo anterior, ambas reglas están usando solo selectores de clase, pero la regla 2 es más específica porque está usando más selectores de clase.

# --questions--

## --text--

Basado en el código HTML y CSS dado, ¿de qué color sería renderizado el elemento `<div class="list subsection"></div>`?

## --answers--

azul

---

rojo

---

morado

---

negro

## --video-solution--

2
