---
id: 6489cf5882cf2e4f86f03ae5
title: La Cascada de CSS Lección D
challengeType: 15
dashedName: the-cascade-of-css-lesson-d
---

# --description--

Ahora, cambiemos las cosas un poco:

```html
<!-- index.html -->

<div class="main">
  <div class="list" id="subsection"></div>
</div>
```

```css
/* rule 1 */
#subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```

En el ejemplo anterior, a pesar de que la regla 2 tiene más selectores de class que de ID, la regla 1 es más específica porque ID vence a class.

# --questions--

## --text--

Basado en el código HTML y CSS modificado, ¿de qué color se renderizaría el elemento `<div class="list" id="subsection"></div>`?

## --answers--

anaranjado

---

red

---

blue

---

cyan

## --video-solution--

3
