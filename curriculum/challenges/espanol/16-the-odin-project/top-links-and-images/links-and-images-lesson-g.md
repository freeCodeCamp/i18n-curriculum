---
id: 637f701572c65bc8e73dfe30
title: Lección de enlaces e imágenes G
challengeType: 15
dashedName: links-and-images-lesson-g
---

# --description--

Los sitios web serían bastante aburridos si solo pudieran mostrar texto. Por suerte, HTML ofrece una amplia variedad de elementos para mostrar todo tipo de medios diferentes. El más utilizado de estos es el elemento de imagen.

Para mostrar una imagen en HTML se utiliza el elemento `<img>`. A diferencia de los otros elementos que has encontrado, el elemento `<img>` se cierra por sí mismo. Los elementos HTML vacíos y auto-cerrados no necesitan una etiqueta de cierre.

En lugar de envolver el contenido con una etiqueta de apertura y cierre, inserta una imagen en la página utilizando un atributo `src` que le dice al navegador dónde se encuentra el archivo de imagen. El atributo `src` funciona de manera muy similar al atributo `href` para etiquetas de ancla. Puede insertar una imagen utilizando tanto rutas absolutas como relativas.

Por ejemplo, usando una ruta absoluta puedes mostrar una imagen ubicada en el sitio de The Odin Project:

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/gORbExZ?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=gORbExZ&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen Embed" loading="lazy" id="cp_embed_gORbExZ"></iframe>

Para usar imágenes que tienes en tus propios sitios web, puedes usar una ruta relativa.

- Crea un nuevo directorio nombrado `images` dentro del proyecto `odin-links-and-images`.

- A continuación, descarga <a href="https://unsplash.com/photos/Mv9hjnEUHR4/download?force=true&w=640" target="_blank">esta imagen</a> y muévela al directorio de imágenes que acabas de crear.

- Renombra la imagen a `dog.jpg`.

Finalmente, agrega la imagen al archivo `index.html`:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="pages/about.html">About</a>

    <img src="images/dog.jpg">
</body>
```

Guarda el archivo `index.html` y ábrelo en un navegador para ver a Charles en toda su gloria.


## Directorios Padres

¿Qué pasa si quieres usar la imagen del perro en la página `about`? Primero tendrías que subir un nivel desde el directorio de páginas hacia su directorio padre para poder acceder al directorio de imágenes.

Para ir al directorio padre necesitas usar dos puntos en la ruta relativa así: `../.` Veamos esto en acción, dentro del `body` del archivo `about.html`, agrega la siguiente imagen debajo del título que agregaste antes:

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
<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_2" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/ExXjoEp?height=300&amp;theme-id=dark&amp;default-tab=html%2Cresult&amp;slug-hash=ExXjoEp&amp;user=TheOdinProjectExamples&amp;name=cp_embed_2" style="width: 100%; overflow:hidden; display:block;" title="CodePen Embed" loading="lazy" id="cp_embed_ExXjoEp"></iframe>

# --questions--

## --text--

How do you access a parent directory in a filepath?

## --answers--

`../`

---

`./`

---

`.../`

## --video-solution--

1
