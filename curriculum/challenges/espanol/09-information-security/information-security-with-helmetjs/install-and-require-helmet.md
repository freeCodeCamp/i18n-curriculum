---
id: 587d8247367417b2b2512c36
title: Instalar y Requerir Helmet
challengeType: 2
forumTopicId: 301581
dashedName: install-and-require-helmet
---

# --description--

Trabajar en estos desafíos implica escribir tu código usando uno de los siguientes métodos:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete these challenges. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
- Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

Helmet ayuda asegurar tus aplicaciones Express apps configurando varios encabezados HTTP.

# --instructions--

Todo el código para estas lecciones va a ir en el archivo `myApp.js` entre las líneas de código que iniciamos para ti. No edites ni borres el código que hemos añadido para ti.

Helmet version `3.21.3` ha sido instalado, este requiere que `helmet` este en `myApp.js`.

# --hints--

`helmet` version `3.21.3` debería estar en `package.json`

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      const packJson = JSON.parse(data);
      const helmet = packJson.dependencies.helmet;
      assert(helmet === '3.21.3' || helmet === '^3.21.3');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

