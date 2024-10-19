---
id: 587d7fb3367417b2b2512bfb
title: 'Cómo usar package.json, el núcleo de cualquier proyecto Node.js o paquete npm'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Trabajar en estos desafíos implica escribir tu código usando uno de los siguientes métodos:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Utiliza <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">nuestro proyecto inicial en Gitpod</a> para completar estos desafíos.
- Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

El archivo `package.json` es el centro de cualquier proyecto Node.js o paquete npm. Almacena información sobre tu proyecto. Está formado por un único objeto JSON donde se guarda la información en pares clave-valor. Solo hay dos campos obligatorios: `name` y `version`, pero es buena práctica proporcionar información adicional.

Puedes crear el archivo `package.json` desde la terminal usando el comando `npm init`. Esto ejecutará una configuración guiada. Usando `npm init` con la bandera `-y` generará el archivo sin tener que responder ninguna pregunta, `npm init -y`.

Observando el árbol de ficheros del proyecto, se puede ver que `package.json` está en la raíz. Este es el archivo que mejorarás en el próximo par de desafíos.

Una de las piezas de información más comunes en este archivo es el campo `author`. Este especifica quién creó el proyecto, y puede consistir en una cadena u objeto con contacto u otros detalles. Se recomienda un objeto para proyectos más grandes, pero una simple cadena como el siguiente ejemplo funcionará para este proyecto.

```json
"author": "Jane Doe",
```

# --instructions--

Agrega tu nombre como `author` del proyecto en el fichero `package.json`.

**Nota:** Recuerda que estás escribiendo JSON, por lo que todos los nombres de campos deben usar comillas dobles (") y separarse con una coma (,).

Si estás usando Gitpod, asegúrate de que la aplicación se está ejecutando y la ventana de vista previa está abierta. Copia la URL de la ventana de vista previa y pégala en la entrada de Enlace a la Solución a continuación.

# --hints--

`package.json` debe tener una clave válida "author"

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.author, '"author" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

