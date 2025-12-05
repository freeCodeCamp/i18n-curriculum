---
id: bd7158d8c443edefaeb5bd0f
title: Microservicio de metadatos de archivo
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

Construye una aplicación JavaScript full stack que sea funcionalmente similar a esta: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. Trabajar en este proyecto implicará que escribas tu código usando uno de los siguientes métodos:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">este repositorio de GitHub</a> y completa tu proyecto localmente.
-   Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

# --instructions--

**NOTA:** Puedes usar el paquete npm `multer` para gestionar la carga de archivos.

# --hints--

Debes proporcionar tu propio proyecto, no la URL del ejemplo.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Puedes enviar un formulario que incluya una carga de archivo.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

El campo de entrada del archivo de formulario tiene el atributo `name` establecido a `upfile`.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

Cuando envíes un archivo, recibirá el `name` del archivo, `type` y `size` en bytes dentro de la respuesta JSON.

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```

