---
id: 587d7fb0367417b2b2512bed
title: Bienvenido a la consola de Node
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Utiliza <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">nuestro proyecto inicial en Gitpod</a> para completar estos desafíos.
- Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

During the development process, it is important to be able to check what’s going on in your code.

Node is just a JavaScript environment. Like client side JavaScript, you can use the console to display useful debug information. On your local machine, you would see console output in a terminal. En Gitpod, un terminal está abierto en la parte inferior del editor de forma predeterminada.

We recommend to keep the terminal open while working at these challenges. By reading the output in the terminal, you can see any errors that may occur.

El servidor debe reiniciarse después de realizar cambios en sus archivos.

Puedes detener el servidor desde el terminal usando `Ctrl + C` e iniciarlo usando Node directamente (`node mainEntryFile.js`) o usando un script de ejecución en el archivo `package.json` con `npm run`.

Por ejemplo, el script `"start": "node server.js"` se ejecutaría desde el terminal usando `npm run star`.

Para implementar el auto reinicio del servidor al guardar archivos, Node proporciona la bandera `--watch` que puedes añadir a tu script de inicio `"start": "node --watch server.js"` o puedes instalar un paquete npm como `nodemon`. Te dejaremos esto como un ejercicio.

# --instructions--

Modify the `myApp.js` file to log "Hello World" to the console.

# --hints--

`"Hello World"` should be in the console

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

