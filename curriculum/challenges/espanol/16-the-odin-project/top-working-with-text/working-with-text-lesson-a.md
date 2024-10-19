---
id: 637f4e5872c65bc8e73dfe27
videoId: yqcd-XkxZNM
title: Working With Text Lesson A
challengeType: 15
dashedName: working-with-text-lesson-a
---

# --description--

What would you expect the following text to output on an HTML page?

```html
<body>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
  incididunt ut labore et dolore magna aliqua.

  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
  nisi ut aliquip ex ea commodo consequat.
</body>
```

It looks like two paragraphs of text, and so you might expect it to display in that way. However that is not the case, as you can see in the output below:

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/xxrKqeV?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=xxrKqeV&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="Insertar de CodePen" loading="lazy" id="cp_embed_xxrKqeV"></iframe>

Cuando el navegador encuentra nuevas líneas como esta en tu HTML, las comprimirá en un solo espacio. El resultado de esta compresión es que todo el texto queda agrupado en una línea larga.

Si deseas crear párrafos en HTML, necesitas usar el elemento de párrafo, el cual agregará un salto de línea después de cada uno de tus párrafos. Un elemento de párrafo se define envolviendo el contenido de texto con una etiqueta `<p>`.

Modificar nuestro ejemplo anterior para usar elementos de párrafo soluciona el problema:

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_2" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/mdwbmdp?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=mdwbmdp&amp;user=TheOdinProjectExamples&amp;name=cp_embed_2" style="width: 100%; overflow:hidden; display:block;" title="Insertar de CodePen" loading="lazy" id="cp_embed_mdwbmdp"></iframe>

# --assignment--

Mira y sigue el video de Párrafos y Títulos de HTML de Kevin Powell arriba.

# --questions--

## --text--

¿Cómo creas un párrafo en HTML?

## --answers--

`<h3>This is a paragraph</h3>`

---

`<p>This is a paragraph</p>`

---

`<strong>This is a paragraph<strong>`


## --video-solution--

2
