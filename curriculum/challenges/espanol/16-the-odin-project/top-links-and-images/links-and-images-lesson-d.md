---
id: 637f702872c65bc8e73dfe33
videoId: ta3Oxx7Yqbo
title: Enlaces e imágenes lección D
challengeType: 15
dashedName: links-and-images-lesson-d
---

# --description--


En general, hay dos tipos de enlaces que crearás:

- Enlaces a páginas de otros sitios web en internet

- Enlaces a páginas ubicadas en tus propios sitios web


## Enlaces absolutos
Los enlaces a páginas de otros sitios web en internet se llaman enlaces absolutos. Un enlace absoluto típico se compone de las siguientes partes: `protocol://domain/path`. Un enlace absoluto siempre contendrá el protocolo y el dominio del destino.

Ya has visto un enlace absoluto en acción. El enlace que creaste a la página Acerca de The Odin Project anteriormente era un enlace absoluto ya que contiene el protocolo y el dominio.

`https://www.theodinproject.com/about`

## Enlaces relativos
Los enlaces a otras páginas dentro de tu propio sitio web se llaman enlaces relativos. Los enlaces relativos no incluyen el nombre del dominio, ya que es otra página en el mismo sitio, se asume que el nombre del dominio será el mismo que la página en la que creaste el enlace.

Los enlaces relativos solo incluyen la ruta del archivo a la otra página, relativa a la página en la que estás creando el enlace. Esto es bastante abstracto, veamos esto en acción con un ejemplo.

Dentro del directorio `odin-links-and-images`, crea otro archivo HTML llamado `about.html` y pega el siguiente código en él:

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

De vuelta en la página `index`, agrega el siguiente elemento ancla para crear un enlace a la página `about`:

```html
<body>
  <h1>Homepage</h1>
    <a href="https://www.theodinproject.com/about">click me</a>

    <a href="about.html">About</a>
</body>
```

Abre el archivo `index.html` en un navegador y haz clic en el enlace de about para asegurarte de que todo esté bien conectado. Hacer clic en el enlace debe ir a la página `about` que acabas de crear.

Esto funciona porque la página `index` y la página `about` están en el mismo directorio. Eso significa que simplemente puedes usar su nombre (`about.html`) como el valor `href` del enlace.

Pero usualmente querrás organizar un poco mejor tus directorios de sitio web. Normalmente solo tendrías el `index.html` en el directorio raíz y todos los demás archivos HTML en su propio directorio.

Crea un directorio llamado `pages` dentro del directorio `odin-links-and-images` y mueve el archivo `about.html` a este nuevo directorio.

Actualiza la página `index` en el navegador y luego haz clic en el enlace `about`. Ahora estará roto. Esto se debe a que la ubicación del archivo de la página `about` ha cambiado.

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

# --assignment--

Mira el video de estructura de archivos HTML de Kevin Powell arriba.

# --questions--

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
