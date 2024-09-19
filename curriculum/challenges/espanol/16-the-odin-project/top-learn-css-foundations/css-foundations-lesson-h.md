---
id: 63ee354c0d8d4841c3a70921
videoId: LGQuIIv2RVA
title: Lección H de Fundamentos de CSS
challengeType: 15
dashedName: css-foundations-lesson-h
---

# --description--

El `CSS` en línea hace posible agregar estilos directamente a los elementos de `HTML`, aunque este método no es tan recomendado:

```html
<body>
  <div style="color: white; background-color: black;">...</div>
</body>
```

Lo primero a observar es que aquí no hay selectores, ya que los estilos se están agregando directamente a la etiqueta de apertura `<div>` en sí. A continuación, tienes el atributo `style`, con su valor dentro del par de comillas siendo las declaraciones.

Si necesitas agregar un estilo único para un solo elemento, este método puede funcionar bastante bien. Generally, though, this isn’t exactly a recommended way for adding CSS to HTML for a few reasons:

It can quickly become pretty messy once you start adding a lot of declarations to a single element, causing your HTML file to become unnecessarily bloated. If you want many elements to have the same style, you would have to copy + paste the same style to each individual element, causing lots of unnecessary repetition and more bloat. Any inline CSS will override the other two methods, which can cause unexpected results. (While you won’t dive into it here, this can actually be taken advantage of).

# --questions--

## --text--

Which of the following is the main disadvantage of using inline CSS?

## --answers--

It can quickly become pretty messy once you start adding a lot of declarations to a single element, causing your HTML file to become unnecessarily bloated.

---

It requires using selectors, which can be complicated for beginners.

---

Any inline CSS will override the other two methods (internal and external), which can cause unexpected results.


## --video-solution--

3
