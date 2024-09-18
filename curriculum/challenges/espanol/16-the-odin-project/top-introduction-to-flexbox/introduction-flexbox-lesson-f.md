---
id: 6571b300cc1de61d7b4dd384
title: Introducción a Flexbox lección F
challengeType: 15
dashedName: introduction-flexbox-lesson-f
---

# --description--

`flex-grow` espera un solo número como su valor, y ese número se utiliza como el "factor de crecimiento" del elemento flex. Cuando aplicaste `flex: 1` a cada div dentro de nuestro contenedor, estabas diciendo a cada div que creciera la misma cantidad. El resultado de esto es que cada div termina exactamente del mismo tamaño. Si en su lugar agregas `flex: 2` a solo uno de los divs, entonces ese div crecería al doble del tamaño de los otros.

En el siguiente ejemplo, la abreviatura `flex` tiene valores para `flex-shrink` y `flex-basis` especificados con sus valores predeterminados.

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/YzQqvgK?height=300&amp;default-tab=html%2Cresult&amp;slug-hash=YzQqvgK&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="Inserción de CodePen" loading="lazy" id="cp_embed_YzQqvgK"></iframe>

# --question--

## --text--

¿Qué implica establecer `flex: 2` a un div específico dentro de un contenedor flex, mientras que otros divs tienen `flex: 1`?

## --answers--

El contenedor se encogerá para acomodar el div más grande.

---

Todos los divs conservarán el mismo tamaño debido a los valores de `flex` en conflicto.

---

El div específico crecerá hasta ser el doble del tamaño de los otros.

---

All divs will shrink equally to adjust to the new `flex` values.

## --video-solution--

3
