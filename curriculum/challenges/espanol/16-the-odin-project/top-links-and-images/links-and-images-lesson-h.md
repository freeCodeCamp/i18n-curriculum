---
id: 637f700b72c65bc8e73dfe2f
title: Enlaces e imágenes lección H
challengeType: 15
dashedName: links-and-images-lesson-h
---

# --description--

Los sitios web serían bastante aburridos si solo pudieran mostrar texto. Por suerte, HTML proporciona una amplia variedad de elementos para mostrar todo tipo de medios diferentes. El más utilizado de estos es el elemento de imagen.

Para mostrar una imagen en HTML, se utiliza el elemento `<img>`. Unlike the other elements you have encountered, the `<img>` is a void element. Empty, void HTML elements do not need a closing tag.

En lugar de envolver contenido con una etiqueta de apertura y cierre, inserta una imagen en la página usando un atributo `src` que indica al navegador dónde se encuentra el archivo de imagen. El atributo `src` funciona de manera muy similar al atributo `href` para etiquetas de ancla. Puede insertar una imagen usando rutas absolutas y relativas.

Por ejemplo, utilizando una ruta absoluta, puedes mostrar una imagen ubicada en el sitio de The Odin Project:

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/gORbExZ?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=gORbExZ&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="Incrustar de CodePen" loading="lazy" id="cp_embed_gORbExZ"></iframe>

Para usar imágenes que tienes en tus propios sitios web, puedes usar una ruta relativa.

- Crea un nuevo directorio llamado `images` dentro del proyecto `odin-links-and-images`.

- Luego, descarga <a href="https://unsplash.com/photos/Mv9hjnEUHR4/download?force=true&w=640" target="_blank">esta imagen</a> y muévela al directorio de imágenes que creaste.

- Renombra la imagen a `dog.jpg`.

Por último, agrega la imagen al archivo `index.html`:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="pages/about.html">About</a>

    <img src="images/dog.jpg">
</body>
```

Guarda el archivo `index.html` y ábrelo en un navegador para ver a Charles en todo su esplendor.


## Directorios Padre

¿Qué pasa si quieres usar la imagen del perro en la página `about`? Primero tendrías que subir un nivel fuera del directorio de páginas y entrar en su directorio padre para poder luego acceder al directorio de imágenes.

Para ir al directorio padre necesitas usar dos puntos en la ruta relativa así: `../.` Veamos esto en acción, dentro del `body` del archivo `about.html`, agrega la siguiente imagen debajo del título que agregaste anteriormente:

```html
<img src="../images/dog.jpg">
```

Desglosando esto:

- Primero, vas al directorio padre del directorio de páginas que es `odin-links-and-images`.

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
