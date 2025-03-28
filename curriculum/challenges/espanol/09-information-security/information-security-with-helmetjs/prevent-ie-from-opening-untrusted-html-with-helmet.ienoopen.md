---
id: 587d8248367417b2b2512c3b
title: Evitar que IE abra HTML no confiable con helmet.ieNoOpen()
challengeType: 2
forumTopicId: 301584
dashedName: prevent-ie-from-opening-untrusted-html-with-helmet-ienoopen
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Algunas aplicaciones web servirán HTML no confiable en la descarga. Algunas versiones de Internet Explorer por defecto abren estos archivos HTML en el contexto de tu sitio web. Esto significa que una página HTML no confiable podría haber empezado a hacer cosas malas en el contenido de tus páginas. Este middleware ajusta la cabecera X-Download-Options en noopen. Esto evitará que los usuarios de IE ejecuten descargas en el contexto de sitio de confianza.

# --instructions--

Usa el método `helmet.ieNoOpen()` en tu servidor.

# --hints--

helmet.ieNoOpen() middleware debería montarse correctamente

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'ienoopen');
      assert.equal(data.headers['x-download-options'], 'noopen');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

