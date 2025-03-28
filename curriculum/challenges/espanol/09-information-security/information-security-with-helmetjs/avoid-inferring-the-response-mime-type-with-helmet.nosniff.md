---
id: 587d8248367417b2b2512c3a
title: Evita inferir en la Respuesta MIME Tipo con helmet.noSniff()
challengeType: 2
forumTopicId: 301574
dashedName: avoid-inferring-the-response-mime-type-with-helmet-nosniff
---

# --description--

Como recordatorio, este proyecto se está construyendo según el siguiente proyecto inicial en <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, o clonando desde <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>. Browsers can use content or MIME sniffing to override the `Content-Type` header of a response to guess and process the data using an implicit content type. Mientras esto puede ser conveniente en algunos escenarios, esto puede conducir a algunos ataques peligrosos. This middleware sets the `X-Content-Type-Options` header to `nosniff`, instructing the browser to not bypass the provided `Content-Type`.

# --instructions--

Usa el método `helmet.noSniff()` en tu servidor.

# --hints--

helmet.noSniff() middleware debe ser montado correctamente

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'nosniff');
      assert.equal(data.headers['x-content-type-options'], 'nosniff');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

