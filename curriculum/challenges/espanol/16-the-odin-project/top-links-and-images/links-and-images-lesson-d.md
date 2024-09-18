---
id: 637f702872c65bc8e73dfe33
videoId: ta3Oxx7Yqbo
title: Links and Images Lesson D
challengeType: 15
dashedName: links-and-images-lesson-d
---

# --description--


Generally, there are two kinds of links you will create:

- Links to pages on other websites on the internet

- Links to pages located on your own websites


## Absolute Links
Links to pages on other websites on the internet are called absolute links. A typical absolute link will be made up of the following parts: `protocol://domain/path`. An absolute link will always contain the protocol and domain of the destination.

You’ve already seen an absolute link in action. The link you created to The Odin Project’s About page earlier was an absolute link as it contains the protocol and domain.

`https://www.theodinproject.com/about`

## Relative Links
Links to other pages within your own website are called relative links. Relative links do not include the domain name, since it is another page on the same site, it assumes the domain name will be the same as the page you created the link on.

Relative links only include the file path to the other page, relative to the page you are creating the link on. This is quite abstract, let’s see this in action using an example.

Within the `odin-links-and-images` directory, create another HTML file named `about.html` and paste the following code into it:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Odin Links and Images</title>
  </head>

  <body>
    <h1>About Page</h1>
  </body>
</html>
```

Back in the `index` page, add the following anchor element to create a link to the `about` page:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="about.html">About</a>
</body>
```

Open the `index.html` file in a browser and click on the about link to make sure it is all wired together correctly. Clicking the link should go to the `about` page you just created.

This works because the `index` and `about` page are in the same directory. That means you can simply use its name (`about.html`) as the link’s `href` value.

But you will usually want to organize your website directories a little better. Normally you would only have the `index.html` at the root directory and all other HTML files in their own directory.

Create a directory named `pages` within the `odin-links-and-images` directory and move the `about.html` file into this new directory.

Refresh the `index` page in the browser and then click on the `about` link. It will now be broken. Esto se debe a que la ubicación del archivo de la página `about` ha cambiado.

Para solucionar esto, solo necesitas actualizar el valor `href` del enlace `about` para incluir el directorio `pages/` ya que esa es la nueva ubicación del archivo `about.html` en relación con el archivo `index.html`.

```html
<body>
  <h1>Homepage</h1>
  <a href="pages/about.html">About</a>
</body>
```

Actualiza la página `index` en el navegador e intenta hacer clic en el enlace `about` nuevamente, ahora debe estar funcionando.

En muchos casos, esto funcionará bien; sin embargo, aún puedes encontrarte con problemas inesperados con este enfoque. Anteponer `./` antes del enlace, en la mayoría de los casos, evitará tales problemas. Al agregar `./` estás especificando a tu código que debe comenzar a buscar el archivo/directorio en relación con el directorio **actual**.

```html
<body>
  <h1>Homepage</h1>
  <a href="./pages/about.html">About</a>
</body>
```

# --tarea--

Mira el video de estructura de archivos HTML de Kevin Powell arriba.

# --question--

## --text--

¿Cuál es la diferencia entre un enlace absoluto y un enlace relativo?

## --answers--

Un enlace absoluto es un enlace a otra página en el sitio web actual. Un enlace relativo es un enlace a otro sitio web.

---

Un enlace absoluto es un enlace a otro sitio web. Un enlace relativo es un enlace a otra página en el sitio web actual.

---

No hay diferencia entre enlaces absolutos y relativos.

## --video-solution--

2
