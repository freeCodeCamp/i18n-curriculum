---
id: 637f4e7972c65bc8e73dfe2b
title: Trabajando con texto lección E
challengeType: 15
dashedName: working-with-text-lesson-e
---

# --description--

Puede que hayas notado que en todos los ejemplos de esta lección indentas cualquier elemento que esté dentro de otros elementos. Esto se conoce como anidar elementos.

Cuando anidas elementos dentro de otros elementos, creas una relación de padre e hijo entre ellos. Los elementos anidados son los hijos y el elemento en el que están anidados es el padre.

En el siguiente ejemplo, el elemento `body` es el padre y el `p` es el hijo:

```html
<html>
  <head>
  </head>
  <body>
    <p>Lorem ipsum dolor sit amet.</p>
  </body>
 </html>
```

Al igual que en las relaciones humanas, los elementos padres en HTML pueden tener muchos hijos. Los elementos al mismo nivel de anidación se consideran hermanos.

Por ejemplo, los dos elementos `p` en el siguiente código son hermanos, ya que ambos son hijos de la etiqueta `body` y están al mismo nivel de anidación:

```html
<html>
  <head>
  </head>
  <body>
    <p>Lorem ipsum dolor sit amet.</p>
    <p>Ut enim ad minim veniam.</p>
  </body>
 </html>
```

Utiliza la indentación para hacer que el nivel de anidación sea claro y legible para ti mismo y otros desarrolladores que trabajarán con tu HTML en el futuro. Es recomendado indentar cualquier elemento hijo por dos espacios.

Las relaciones de padre, hijo y hermanos entre elementos se volverán mucho más importantes más adelante cuando empieces a estilizar tu HTML con CSS y agregar comportamiento con JavaScript. Por ahora, sin embargo, es importante conocer la distinción entre cómo se relacionan los elementos y la terminología utilizada para describir sus relaciones.

# --preguntas----preguntas--

## --text--

¿Qué relación tienen dos elementos si están al mismo nivel de anidación?

## --answers--

Los elementos son padres entre sí.

---

Los elementos son hijos entre sí.

---

Los elementos son hermanos.

## --video-solution--

3
