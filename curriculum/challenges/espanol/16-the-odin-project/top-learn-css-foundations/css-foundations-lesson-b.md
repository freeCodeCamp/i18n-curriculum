---
id: 63ee35240d8d4841c3a7091b
videoId: LGQuIIv2RVA
title: Lección B de fundamentos de CSS
challengeType: 15
dashedName: css-foundations-lesson-b
---

# --description--

Los selectores de clase seleccionarán todos los elementos con el `class` dado, que es solo un atributo que colocas en un elemento HTML. Aquí te mostramos cómo agregar una clase a una etiqueta HTML y seleccionarla en CSS:

```html
<!-- index.html -->

<div class="alert-text">
  Please agree to our terms of service.
</div>
```

```css
/* styles.css */

.alert-text {
  color: red;
}
```

Observa la sintaxis para los selectores de `class`: un punto seguido inmediatamente por el valor sensible a mayúsculas de el atributo class. Las clases no tienen que ser únicas, así que puedes usar la misma `class` en tantos elementos como desees.

Otra cosa que puedes hacer con el atributo `class` es agregar múltiples clases a un solo elemento como una lista separada por espacios, como `class="alert-text severe-alert"`. Dado que el espacio se utiliza para separar nombres de `class` así, nunca debes usar espacios para nombres de varias palabras y debes usar un guion en su lugar.

## Selectores de ID
Los selectores de ID son similares a los selectores de `class`. Seleccionan un elemento con el `id` dado, que es otro atributo que colocas en un elemento HTML:

```html
<!-- index.html -->

<div id="title">My Awesome 90's Page</div>
```

```css
/* styles.css */

#title {
  background-color: red;
}
```

En lugar de un punto, usas una almohadilla seguida inmediatamente por el valor sensible a mayúsculas de el atributo `id`. Un error común es el uso excesivo del atributo `id` cuando no necesariamente es necesario, y cuando las clases serán suficientes. Aunque hay casos donde usar un `id` tiene sentido o es necesario, como aprovechar la especificidad o tener enlaces que redirigen a una sección en la página actual, debes usar `id`s con moderación (si acaso).

La principal diferencia entre clases e IDs es que un elemento solo puede tener un `id`. Un `id` no puede repetirse en una sola página, y el atributo `id` no debe contener espacios en absoluto.

# --question--

## --text--

¿Cuál es la sintaxis para selectores de clase e ID?

## --answers--

Para seleccionar una `class` usas `$` y para seleccionar un `id` usas `#`

---

Para seleccionar una `class` usas `.` y para seleccionar un `id` usas `*`

---

Para seleccionar una `class` usas `.` y para seleccionar un `id` usas `#`


## --video-solution--

3
