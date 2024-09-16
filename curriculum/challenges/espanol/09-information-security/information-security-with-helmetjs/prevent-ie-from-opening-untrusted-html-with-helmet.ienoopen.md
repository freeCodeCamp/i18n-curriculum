---
id: 587d8248367417b2b2512c3b
title: Evitar que IE abra HTML no confiable con helmet.ieNoOpen()
challengeType: 2
forumTopicId: 301584
dashedName: prevent-ie-from-opening-untrusted-html-with-helmet-ienoopen
---

# --description--

Como recordatorio, este proyecto se está construyendo según el siguiente proyecto inicial en <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, o clonando desde <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Algunas aplicaciones web servirán HTML no confiable en la descarga. Algunas versiones de Internet Explorer por defecto abren estos archivos HTML en el contexto de tu sitio web. Esto significa que una página HTML no confiable podría haber empezado a hacer cosas malas en el contenido de tus páginas. Este middleware ajusta la cabecera X-Download-Options en noopen. Esto evitará que los usuarios de IE ejecuten descargas en el contexto de sitio de confianza.

# --instructions--

Usa el método `helmet.ieNoOpen()` en tu servidor.

# --hints--

helmet.ieNoOpen() middleware debería montarse correctamente

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'ienoopen');
      assert.equal(data.headers['x-download-options'], 'noopen');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

