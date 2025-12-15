---
id: 672bccc8ea33bad87abb3c56
title: ¿Cuál es la diferencia entre content-box y border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

La propiedad `box-sizing` se puede establecer en `content-box` o `border-box` para controlar cómo se calculan el ancho y la altura de los elementos.

Esta propiedad se puede establecer en el selector universal (`*`) para aplicar a todos los elementos en el documento:

```css
* {
  box-sizing: border-box;
}
```

El valor de la propiedad `box-sizing` es `content-box` por defecto, pero puedes elegir `border-box` si lo necesitas. Exploraremos `content-box` primero y luego entraremos en `border-box`.

Para entender cómo funcionan los modelos, necesitas estar familiarizado con los cuatro conceptos clave del modelo de caja CSS. Repasémoslos rápidamente.

- El área de contenido es el espacio ocupado por el contenido del elemento.
- El padding es el espacio entre el área de contenido y el borde.
- El borde es el contorno que rodea el área de contenido y el padding.
- El margen es el espacio fuera del borde que separa el elemento de otros elementos.

En el modelo `content-box`, el ancho y alto que estableces para un elemento determinan las dimensiones del área de contenido, pero no incluyen el padding, border o margin. Usa `content-box` cuando necesites un control preciso sobre el área de contenido. Cuando estableces `width` y `height`, solo estás definiendo el tamaño del contenido en sí.

Para encontrar el ancho total del elemento, necesitarás sumar el padding izquierdo y derecho, y los bordes izquierdo y derecho. De igual manera, la altura total de un elemento se puede encontrar sumando la altura del contenido, el padding superior e inferior, y los bordes superior e inferior.

Por ejemplo, aquí tenemos un selector de tipos CSS para todos los elementos `div`. 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

En este caso, si se usa `content-box` el área de contenido será de 300px por 200px. El tamaño total renderizado incluye padding y bordes — por ejemplo, ancho total = 300px (contenido) + 40px (padding) + 8px (bordes) = 348px; la altura total se calcula de la misma manera.

Genial — ahora exploremos `border-box`. Es diferente porque el ancho y alto que estableces incluyen el contenido del elemento, el padding y el borde (pero no el margen). Usa `border-box` cuando quieras que el tamaño total del elemento se mantenga fijo incluso si cambian el padding o los bordes — eso suele ser útil en diseños responsivos.

Con `border-box`, el padding y los bordes se incluyen dentro del tamaño especificado del elemento. El `width` y `height` que configures se convierten en las dimensiones totales del elemento: contenido + padding + borde; los márgenes permanecen excluidos.

En el siguiente ejemplo, hay dos elementos `div` con las mismas dimensiones pero diferentes valores de `box-sizing`. Observa cómo esto resulta en tamaños totales diferentes al verlos en el navegador:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

Puedes ver que ambos tienen el mismo `width`, `height`, `padding`, `border` y `margin`. Las únicas diferencias son los colores y el valor de la propiedad `box-sizing`. Esta pequeña diferencia tiene un impacto muy importante en las dimensiones finales. 

Elegir entre `content-box` y `border-box` realmente depende de las necesidades específicas de tu proyecto. Mientras que `border-box` está ganando popularidad por su simplicidad y flexibilidad, entender ambos modelos es importante para implementar diseños de CSS efectivos.

# --questions--

## --text--

¿Cuál de los siguientes es el valor predeterminado para la propiedad `box-sizing` en la mayoría de los navegadores?

## --answers--

`content-box`

---

`border-box`

### --feedback--

Piensa en el comportamiento predeterminado al dimensionar elementos.

---

`padding-box`

### --feedback--

Piensa en el comportamiento predeterminado al dimensionar elementos.

---

`margin-box`

### --feedback--

Piensa en el comportamiento predeterminado al dimensionar elementos.

## --video-solution--

1

## --text--

¿Cuál es la ventaja principal de usar `border-box` para crear diseños responsivos?

## --answers--

Complica más las cálculos.

### --feedback--

Piensa en cómo el modelo `border-box` maneja el `padding` y el `border` dentro del `width` y `height` especificados.

---

Permite un control más preciso sobre las dimensiones de los elementos.

### --feedback--

Piensa en cómo el modelo `border-box` maneja el `padding` y el `border` dentro del `width` y `height` especificados.

---

Asegura que los elementos mantengan sus dimensiones especificadas sin importar los cambios en `padding` o `border`.

---

Mejora la compatibilidad entre navegadores.

### --feedback--

Piensa en cómo el modelo `border-box` maneja el `padding` y el `border` dentro del `width` y `height` especificados.

## --video-solution--

3

## --text--

En el modelo `content-box`, ¿qué representa el `width` especificado de un elemento?

## --answers--

El `width` total del elemento, incluyendo `padding`, `border` y `margin`.

### --feedback--

Piensa en la relación entre el área de contenido y las dimensiones generales del elemento en el modelo `content-box`.

---

Sólo el `width` del área de contenido.

---

El `width` del `border`.

### --feedback--

Piensa en la relación entre el área de contenido y las dimensiones generales del elemento en el modelo `content-box`.

---

El `width` del `padding`.

### --feedback--

Piensa en la relación entre el área de contenido y las dimensiones generales del elemento en el modelo `content-box`.

## --video-solution--

2
