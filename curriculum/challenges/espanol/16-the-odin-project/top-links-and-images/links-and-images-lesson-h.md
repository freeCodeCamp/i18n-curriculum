---
id: 637f700b72c65bc8e73dfe2f
title: Enlaces e imágenes lección H
challengeType: 15
dashedName: links-and-images-lesson-h
---

# --description--

Los sitios web serían bastante aburridos si solo pudieran mostrar texto. Afortunadamente, HTML ofrece una amplia variedad de elementos para mostrar todo tipo de medios diferentes. El más utilizado de ellos es el elemento de imagen.

Para mostrar una imagen en HTML, utiliza el elemento `<img>`. A diferencia de los otros elementos que has encontrado, el elemento `<img>` es auto-cerrado. Los elementos HTML vacíos y auto-cerrados no necesitan una etiqueta de cierre.

En lugar de envolver el contenido con una etiqueta de apertura y cierre, inserta una imagen en la página usando un atributo `src` que le dice al navegador dónde se encuentra el archivo de imagen. El atributo `src` funciona de manera muy similar al atributo `href` para las etiquetas de ancla. Puede insertar una imagen usando tanto rutas absolutas como relativas.

Por ejemplo, usando una ruta absoluta puedes mostrar una imagen ubicada en el sitio de The Odin Project:

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/gORbExZ?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=gORbExZ&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="Código Pen insertar" loading="lazy" id="cp_embed_gORbExZ"></iframe>

Para usar imágenes que tienes en tus propios sitios web, puedes usar una ruta relativa.

- Create a new directory named `images` within the `odin-links-and-images` project.

- Next, download <a href="https://unsplash.com/photos/Mv9hjnEUHR4/download?force=true&w=640" target="_blank">this image</a> and move it into the images directory you just created.

- Rename the image to `dog.jpg`.

Finally add the image to the `index.html` file:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="pages/about.html">About</a>

    <img src="images/dog.jpg">
</body>
```

Save the `index.html` file and open it in a browser to view Charles in all his glory.


## Parent Directories

What if you want to use the dog image in the `about` page? You would first have to go up one level out of the pages directory into its parent directory so you could then access the images directory.

To go to the parent directory you need to use two dots in the relative filepath like this: `../.` Let’s see this in action, within the `body` of the `about.html` file, add the following image below the heading you added earlier:

```html
<img src="../images/dog.jpg">
```

To break this down:

- First, you are going to the parent directory of the pages directory which is `odin-links-and-images`.

- Then, from the parent directory, you can go into the `images` directory.

- Finally, you can access the `dog.jpg` file.

Using the metaphor we used earlier, using `../` in a filepath is kind of like stepping out from the room you are currently in to the main hallway so you can go to another room.

## Alt attribute

Besides the `src` attribute, every image element should also have an `alt` (alternative text) attribute.

The `alt` attribute is used to describe an image. It will be used in place of the image if it cannot be loaded. It is also used with screen readers to describe what the image is to visually impaired users.

This is how the The Odin Project logo example you used earlier looks with an alt attribute included:
<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_2" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/ExXjoEp?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=ExXjoEp&amp;user=TheOdinProjectExamples&amp;name=cp_embed_2" style="width: 100%; overflow:hidden; display:block;" title="Insertar CodePen" loading="lazy" id="cp_embed_ExXjoEp"></iframe>

# --assignment--

Read about the <a href="https://www.freecodecamp.org/news/image-file-types-picture-format-extensions-jpeg-gif-png-svg-tiff/" target="_blank">four main image formats</a> that can be used on the web.

# --questions--

## --text--

What are the four main image formats that you can use for images on the web?

## --answers--

MOV, GIF, PNG, and SVG.

---

JPG, PNG, GIF, and SVG.

---

JPG, PDF, SVG, and GIF.

## --video-solution--

2
