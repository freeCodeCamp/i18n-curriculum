---
id: 672bccae6e556cd81cef6af2
title: '¿Qué es el colapso de márgenes y cómo funciona?'
challengeType: 11
videoId: MMWBC8duT_0
dashedName: what-is-margin-collapsing
---

# --description--

Mira el video o lee la transcripción y responde las preguntas a continuación.

# --transcript--

¿Qué es el colapso de márgenes y cómo funciona?

El colapso de márgenes es un concepto fundamental en CSS que a menudo confunde a los nuevos en desarrollo web.

Este comportamiento ocurre cuando los márgenes verticales de elementos adyacentes se superponen, resultando en un solo margen igual al mayor de los dos.

Entender el colapso de márgenes es importante para tener un control preciso sobre el espacio y diseño en web. Así que, adentrémonos en cómo funciona el colapso de márgenes y exploremos algunos escenarios comunes donde ocurre.

En CSS, cuando dos márgenes verticales entran en contacto, colapsan. Esto significa que, en lugar de sumarse, el margen mayor gana y determina el espacio entre los elementos. Este comportamiento se aplica solo a márgenes verticales, superior e inferior, no a los márgenes horizontales, izquierdo y derecho. Aquí tienes un ejemplo para ilustrar este concepto:

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

En este ejemplo, podrías esperar que el espacio total entre `.box1` y `.box2` sea de 50 píxeles (20 píxeles más 30 píxeles). Sin embargo, debido al colapso de márgenes, el espacio real será de 30 píxeles, que es el mayor de los dos márgenes.

Como vimos en ejemplos previos, los márgenes de elementos hermanos adyacentes colapsarán. Este es el caso más directo de colapso de márgenes. Exploremos más casos donde el colapso de márgenes puede ocurrir.

Los márgenes también pueden colapsar entre un elemento principal y su primer o último hijo. Si no hay borde, relleno, contenido en línea o despeje para separar el margen del principal del del hijo, colapsarán.

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

En este caso, podrías esperar que el hijo esté a 70 píxeles desde la parte superior (40 píxeles más 30 píxeles). Sin embargo, los márgenes colapsan y se utiliza el margen mayor de 40 píxeles.

Si un elemento no tiene contenido, relleno o borde, sus márgenes superior e inferior pueden colapsar en un solo margen.

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

En este ejemplo, los márgenes superior e inferior del `empty-block` colapsan en un solo margen de 30 píxeles, el mayor de los dos.

Aquí tienes otro ejemplo de cómo prevenir el colapso usando relleno:

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

En este caso, el relleno de un píxel en el principal previene que el margen colapse, resultando en un espacio total de 71 píxeles desde la parte superior del principal hasta la parte superior del contenido del hijo.

Entender el colapso de márgenes es importante para tener un control preciso sobre el diseño y espaciado en CSS. Aunque a veces puede dar resultados inesperados, es una característica diseñada para crear un espaciado más estético y consistente en los documentos. Sabiendo cuándo ocurre el colapso de márgenes y cómo prevenirlo cuando sea necesario, puedes crear diseños más predecibles y mantenibles en tus sitios web.

# --questions--

## --text--

¿En qué dirección ocurre el colapso de márgenes?

## --answers--

Solo márgenes horizontales.

### --feedback--

Piensa en qué márgenes (superior, inferior, izquierdo, derecho) se ven afectados por este comportamiento.

---

Solo márgenes verticales.

---

Tanto márgenes horizontales como verticales.

### --feedback--

Piensa en qué márgenes (superior, inferior, izquierdo, derecho) se ven afectados por este comportamiento.

---

Márgenes diagonales.

### --feedback--

Piensa en qué márgenes (superior, inferior, izquierdo, derecho) se ven afectados por este comportamiento.

## --video-solution--

2

## --text--

¿Qué ocurre cuando dos elementos adyacentes tienen valores de márgenes diferentes?

## --answers--

Los márgenes se suman.

### --feedback--

Considera qué margen "gana" cuando ocurre el colapso.

---

Se utiliza el margen menor.

### --feedback--

Considera qué margen "gana" cuando ocurre el colapso.

---

Se utiliza el margen mayor.

---

Se utiliza el promedio de los dos márgenes.

### --feedback--

Considera qué margen "gana" cuando ocurre el colapso.

## --video-solution--

3

## --text--

¿Cuál de las siguientes no evitará el colapso de márgenes entre un elemento principal y su primer hijo?

## --answers--

Agregando un `border` al elemento principal.

### --feedback--

Piensa en qué propiedades crean una separación entre los márgenes del principal y el hijo.

---

Estableciendo `padding-top: 1px;` en el elemento principal.

### --feedback--

Piensa en qué propiedades crean una separación entre los márgenes del principal y el hijo.

---

Usando `display: inline-block;` en el hijo.

### --feedback--

Piensa en qué propiedades crean una separación entre los márgenes del principal y el hijo.

---

Estableciendo `margin-top: 0;` en el hijo.

## --video-solution--

4
