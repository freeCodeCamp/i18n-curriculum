---
id: 63ee35370d8d4841c3a7091e
videoId: LGQuIIv2RVA
title: CSS fundamentos lección E
challengeType: 15
dashedName: css-foundations-lesson-e
---

# --description--

Los combinadores nos permiten combinar múltiples selectores de una manera diferente a agruparlos o encadenarlos, ya que muestran una relación entre los selectores. Hay cuatro tipos de combinadores en total, pero por ahora solo te vamos a mostrar el combinador de descendientes, que se representa en CSS por un solo espacio entre selectores. Un combinador de descendientes solo seleccionará elementos que coincidan con el último selector si también tienen un ancestro (padre, abuelo, etc.) que coincide con el selector anterior.

Así que algo como `.ancestor .child` seleccionaría un elemento con la clase `child` si tiene un ancestro con la clase `ancestor`. Otra forma de pensarlo es que el 'child' solo se seleccionará si está anidado dentro de `ancestor`, sin importar cuán profundo. Echa un vistazo rápido al ejemplo a continuación y fíjate si puedes decir qué elementos serían seleccionados según la regla CSS proporcionada:

```html
<!-- index.html -->

<div class="ancestor"> <!-- A -->
  <div class="contents"> <!-- B -->
    <div class="contents"> <!-- C -->
    </div>
  </div>
</div>

<div class="contents"></div> <!-- D -->
```

```css
/* styles.css */

.ancestor .contents {
  /* some declarations */
}
```

En el ejemplo anterior, se seleccionarían los primeros dos elementos con la clase `contents` (`B` y `C`), pero el último elemento (`D`) no se seleccionará. ¿Fue correcta tu suposición?

Realmente no hay límite para cuántos combinadores puedes agregar a una regla, por lo que `.one .two .three .four` sería totalmente válido. Esto solo seleccionaría un elemento que tenga una clase de `four` si tiene un ancestro con una clase de `three`, y si ese ancestro tiene su propio ancestro con una clase de `two`, y así sucesivamente. Por lo general, deseas evitar intentar seleccionar elementos que necesiten este nivel de anidamiento, ya que puede volverse bastante confuso y largo, y puede causar problemas cuando se trata de especificidad.

# --questions--

## --text--

¿Qué hace el combinador de descendientes?

## --answers--

Agrupa ciertas clases juntas que comparten las mismas declaraciones.

---

Da la capacidad de seleccionar un elemento que comparte el mismo `class` y `id`.

---

Te permite seleccionar un elemento en función de su relación con su ancestro (padre, abuelo, etc.).


## --video-solution--

3
