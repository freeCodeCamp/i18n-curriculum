---
id: 6571c34568e4b3b17d3957f8
title: Introducción a Flexbox lección G
challengeType: 15
dashedName: introduction-flexbox-lesson-g
---

# --description--

`flex-shrink` es similar a `flex-grow`, pero establece el "factor de reducción" de un elemento flex. `flex-shrink` solo se aplica si el tamaño de todos los elementos flex es mayor que su contenedor principal. Por ejemplo, si nuestros 3 divs de arriba tuvieran una declaración de ancho como: `width: 100px`, y `.flex-container` fuera más pequeño que `300px`, nuestros divs tendrían que encogerse para caber.

El factor de reducción predeterminado es `flex-shrink: 1`, lo que significa que todos los elementos se reducirán uniformemente. Si no quieres que un elemento se reduzca, entonces puedes especificar `flex-shrink: 0;`. También puedes especificar números más altos para que ciertos elementos se reduzcan a un ritmo mayor de lo normal.

Aquí hay un ejemplo. Si reduces la ventana de tu navegador, notarás que `.two` nunca se hace más pequeño que el ancho dado de `250px`, aunque la regla `flex-grow` especificaría que cada elemento debe ser del mismo tamaño.

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_2" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/JjJXZVz?height=300&amp;default-tab=html%2Cresult&amp;slug-hash=JjJXZVz&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_2" style="width: 100%; overflow:hidden; display:block;" title="CodePen Insertar" loading="lazy" id="cp_embed_JjJXZVz"></iframe>

Una implicación importante a notar aquí es que cuando especificas `flex-grow` o `flex-shrink`, los elementos flex no necesariamente respetan tus valores dados para `width`. En el ejemplo anterior, a los 3 divs se les da un `width` de `250px`, pero cuando su contenedor principal es lo suficientemente grande, crecen para llenarlo. Asimismo, cuando el contenedor principal es demasiado pequeño, el comportamiento predeterminado es que se reduzcan para caber. Esto no es un error, pero podría ser un comportamiento confuso si no lo esperas.

# --question--

## --text--

¿Cuál es el comportamiento predeterminado de `flex-shrink` cuando se aplica a elementos flex?

## --answers--

Evita que cualquier elemento se reduzca.

---

Hace que todos los elementos se reduzcan a un ritmo igual.

---

Hace que solo ciertos elementos se reduzcan.

---

Agranda el tamaño de los elementos por igual.


## --video-solution--

2
