---
id: 637f4e8072c65bc8e73dfe2c
title: Trabajando con texto lección F
challengeType: 15
dashedName: working-with-text-lesson-f
---

# --description--

Puede que hayas notado que en todos los ejemplos de esta lección indentas cualquier elemento que esté dentro de otros elementos. Esto se conoce como anidar elementos.

Cuando anidas elementos dentro de otros elementos, creas una relación de padre e hijo entre ellos. Los elementos anidados son los hijos y el elemento en el que están anidados es el padre.

En el siguiente ejemplo, el elemento body es el padre y el párrafo es el hijo:

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

For example, the two paragraphs in the following code are siblings, since they are both children of the body tag and are at the same level of nesting as each other:

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

What relationship does an element have with any nested element within it?

## --answers--

The element within the other element is called the parent element.

---

The element within the other element is called the child element.

---

The element within the other element is called the sibling element.


## --video-solution--

2
