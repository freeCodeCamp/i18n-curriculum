---
id: 587d7fb0367417b2b2512bed
title: Bienvenido a la consola de Node
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

Trabajar en estos desafíos implica escribir tu código usando uno de los siguientes métodos:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete these challenges. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
- Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

Durante el proceso de desarrollo, es importante poder comprobar lo que ocurre en el código.

Node es solo un entorno JavaScript. Al igual que el JavaScript del lado cliente, puedes hacer uso de la consola para mostrar información útil para la depuración. En tu máquina, varía la salida de la consola en un terminal. En Gitpod, un terminal está abierto en la parte inferior del editor de forma predeterminada.

Recomendamos mantener abierto el terminal mientras desarrolles estos retos. Al leer el resultado en el terminal, puedes ver cualquier error que pueda producirse.

El servidor debe reiniciarse después de realizar cambios en sus archivos.

Puedes detener el servidor desde el terminal usando `Ctrl + C` e iniciarlo usando Node directamente (`node mainEntryFile.js`) o usando un script de ejecución en el archivo `package.json` con `npm run`.

Por ejemplo, el script `"start": "node server.js"` se ejecutaría desde el terminal usando `npm run star`.

Para implementar el auto reinicio del servidor al guardar archivos, Node proporciona la bandera `--watch` que puedes añadir a tu script de inicio `"start": "node --watch server.js"` o puedes instalar un paquete npm como `nodemon`. Te dejaremos esto como un ejercicio.

# --instructions--

Modifica el archivo `myApp.js` para que registre "Hello World" en la consola.

# --hints--

`"Hello World"` debe aparecer en la consola

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/hello-console').then(
    (data) => {
      assert.isTrue(data.passed, '"Hello World" is not in the server console');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

