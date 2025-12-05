---
id: 672bccc8ea33bad87abb3c56
title: ¿Cuál es la diferencia entre content-box y border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

La propiedad `box-sizing` se puede establecer en `content-box` o `border-box` para controlar cómo se calculan el ancho y la altura de los elementos. Aquí puedes ver la propiedad `box-sizing` y los dos posibles valores: 

```css
box-sizing: content-box;
```

```css
box-sizing: border-box;
```

Esta propiedad se puede establecer en el selector universal (`*`) para aplicar a todos los elementos en el documento:

```css
* {
  box-sizing: border-box;
}
```

El valor de la propiedad `box-sizing` es `content-box` por defecto, pero puedes elegir `border-box` si lo necesitas. Exploraremos `content-box` primero y luego entraremos en `border-box`.

Para entender cómo funcionan estos modelos, necesitas estar familiarizado con los cuatro conceptos clave del modelo de caja de CSS.  Let's review them quickly. El área de contenido es el espacio ocupado por el contenido del elemento. El padding es el espacio entre el área de contenido y el borde. El borde es el contorno que rodea el área de contenido y el padding. El margen es el espacio fuera del borde que separa el elemento de otros elementos.

En el modelo `content-box`, el ancho y la altura que estableces para un elemento determinan las dimensiones del área de contenido, pero no incluyen el padding, el borde o el margen. Debes usar `content-box` cuando necesites tener un control preciso sobre las dimensiones del área de contenido.  So, when you set the width and height of an element with `width` and `height` properties, you are only setting the dimensions of the content area. `width` is the width of the content, `height` is the height of the content. 

Para encontrar el ancho total del elemento, lo que realmente verás en la pantalla, aún necesitarás sumar el padding izquierdo y derecho, y los bordes izquierdo y derecho. Entonces, el ancho total es igual al ancho total más el padding izquierdo, más el padding derecho, más el borde izquierdo, más el borde derecho. 

Del mismo modo, la altura total de un elemento se puede encontrar sumando la altura del contenido, el padding superior e inferior, y los bordes superior e inferior. Entonces, la altura total es igual a la altura del contenido más el padding superior, más el padding inferior, más el borde superior, más el borde inferior. 

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

En este caso, si se utiliza `content-box` el área de contenido tendrá un ancho de 300 píxeles y una altura de 200 píxeles. Sin embargo, el ancho total, lo que verás en la pantalla, será el resultado de sumar el ancho del área de contenido, que es de 300 píxeles, más el padding en ambos lados (40 píxeles), y los bordes en ambos lados (8 píxeles). 

Del mismo modo, la altura total será el resultado de sumar la altura del área de contenido (200 píxeles), más el padding superior e inferior (40 píxeles), más los bordes superior e inferior (8 píxeles).

¡Genial! Ahora exploraremos `border-box`. Son un poco diferentes, con `border-box` el ancho y la altura de un elemento incluyen el área de contenido, el padding y el borde, pero no incluyen el margen. Debes usar `border-box` cuando necesites mantener un tamaño de elemento fijo sin importar los cambios en padding o bordes. También es útil para el diseño web responsivo, ya que el área de contenido se ajustará automáticamente para adaptarse a las dimensiones.

El padding y el borde están dentro de la caja, por lo que cuando configuras las propiedades `width` y `height` de un elemento, realmente estás configurando el ancho y la altura de la parte interior de la caja. Aquí está nuestro ejemplo `div` con las mismas propiedades y valores que teníamos antes: 

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

Con `border-box` el valor de la propiedad `width` será el resultado de sumar el ancho del área de contenido, el padding izquierdo y derecho, y el borde izquierdo y derecho. Entonces, el ancho es igual al ancho del contenido, más el padding izquierdo, más el padding derecho, más el borde izquierdo, más el borde derecho.

Del mismo modo, el valor de la propiedad `height` es el resultado de sumar la altura del área de contenido, el padding superior e inferior, y el borde superior e inferior. La altura es igual a la altura del contenido, más el padding superior, más el padding inferior, más el borde superior, más el borde inferior. El margen no está incluido en el ancho o la altura.

Si verificas el tamaño del `div` en el navegador usando `content-box` y `border-box`, notarás que hay una diferencia muy importante. Aquí hay dos elementos `div`, cada uno con las mismas dimensiones pero con diferentes valores de `box-sizing`:

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
