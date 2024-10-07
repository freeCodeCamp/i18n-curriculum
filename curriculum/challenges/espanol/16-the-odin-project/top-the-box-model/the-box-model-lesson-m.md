---
id: 64a674c27a7d00f97013ed14
videoId: rIO5326FgPE
title: La lección del modelo de caja M
challengeType: 15
dashedName: the-box-model-lesson-m
--- 
# --description--

Debido a que el concepto del modelo de caja es tan increíblemente fundamental, profundicemos un poco más con <a href="https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model#what_is_the_css_box_model" target="_blank">esta lección de MDN</a>. Cubre el mismo material que el video anterior y te introducirá a las cajas en línea que exploraremos en la siguiente lección. ¡Presta mucha atención a los ejemplos y toma el tiempo para experimentar con su editor en el navegador!

# --preguntas----preguntas--

## --text--

¿Cómo establecer el modelo de caja alternativo para todos tus elementos?

## --answers--

```css
html {
    box-sizing: inherit;
}
*,
*::before,
*::after {
    box-sizing: border-box;
}
```

---

```css
* {
    box-sizing: border-box;
}
```

---

```css
html {
  box-sizing: border-box;
}
* {
  box-sizing: inherit;
}
```

---

```css
html {
    box-sizing: border-box;
}
*,
*::before,
*::after {
    box-sizing: inherit;
}
```



## --video-solution--

4
