---
id: 6571b2fccc1de61d7b4dd37f
title: Introduction to Flexbox Lesson A
challengeType: 15
dashedName: introduction-flexbox-lesson-a
---

# --description--

## Before we get started

Flexbox layouts can get a little complicated. In a previous lesson, you learned how to inspect and debug things using your browser’s developer tools. Those tools will be crucial for you in the following lessons. If something isn’t behaving the way you expect, inspecting it in the developer tools should be your first step every time.

Flexbox isn’t necessarily any more difficult than the other concepts that we’ve covered so far, but it does have a few more moving parts. It is going to be somewhat difficult to make use of any of the things you’re learning in these first lessons until you get to the end and can put it all together. As we go, do yourself a favor and <strong>play with all of the code examples.</strong>

You will almost definitely need to come back and reference these lessons (or a couple of the resources we share with you) when you get to the assignments at the end of the section, but if you take your time and experiment with all the code examples we provide, you’ll know better where to look when that time comes.

## Let’s flex

Flexbox is a way to arrange items into rows or columns. These items will flex (i.e. grow or shrink) based on some simple rules that you can define. To get started, let’s look at a simple demonstration.

> We’ve embedded a lot of interactive examples in these lessons. Tómate tu tiempo para experimentar con ellos a medida que avanzas para fijar los conceptos en tu mente!

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true"  frameborder="0" height="400" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/QWgNxrp?height=400&amp;default-tab=html%2Cresult&amp;slug-hash=QWgNxrp&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="Inserción en CodePen" loading="lazy"></iframe>

Pronto entraremos en lo que realmente está pasando aquí. Pero por ahora, descomentemos las dos declaraciones CSS relacionadas con flex en el CodePen de arriba removiendo las etiquetas `/*` y `*/` que las rodean, y luego revisemos el resultado.

> Los comentarios evitan que el navegador interprete líneas como código y están envueltos entre etiquetas específicas. CSS usa `/*` como etiqueta de apertura de comentario y `*/` como etiqueta de cierre de comentario, mientras que HTML y JavaScript tienen su propia sintaxis. Las líneas de código comentadas pueden habilitarse simplemente quitando las etiquetas de comentario que rodean el código.

Todos los 3 divs ahora deben estar dispuestos horizontalmente. Si cambias el tamaño del marco de resultados con los botones `1x`, `.5x` y `.25x` también verás que los elementos `div` "flexionarán". Llenarán el área disponible y cada uno tendrá el mismo ancho.

Si agregas otro `div` al HTML, dentro de `.flex-container`, aparecerá junto a los demás, y todo se flexionará para caber dentro del área disponible.

> Si es difícil ver lo que está sucediendo en el pequeño CodePen insertado, siéntete libre de hacer clic en el botón "Edit on CodePen" o "Fork on CodePen". Esto traerá el ejemplo a un entorno de tamaño completo. Algunos de los ejemplos posteriores podrían especialmente beneficiarse de hacer esto.

# --questions--

## --text--

¿Qué sucede cuando se descomentan las dos declaraciones CSS relacionadas con flex en el CodePen?

## --answers--

Los elementos `div` se vuelven invisibles, perdiendo su visibilidad dentro del contenedor.

---

Todos los 3 elementos `div` están dispuestos horizontalmente, y se flexionan para llenar el área disponible con el mismo ancho.

---

Cada elemento `div` se agranda y cubre el contenedor entero, superponiéndose unos a otros.

---

Los elementos `div` se alinean verticalmente en una sola columna, ignorando las declaraciones CSS relacionadas con flex.

## --video-solution--

2
