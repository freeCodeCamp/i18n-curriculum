---
id: 587d7fb0367417b2b2512bee
title: Inicia un servidor Express
challengeType: 2
forumTopicId: 301519
dashedName: start-a-working-express-server
---

# --description--

In the first two lines of the file `myApp.js`, you can see how easy it is to create an Express app object. This object has several methods, and you will learn many of them in these challenges. One fundamental method is `app.listen(port)`. It tells your server to listen on a given port, putting it in running state. For testing reasons, we need the app to be running in the background so we added this method in the `server.js` file for you.

¡Sirvamos nuestra primer cadena! En Express, las rutas toman la siguiente estructura: `app.METHOD(PATH, HANDLER)`. METHOD es un método http en minúsculas. PATH es una ruta relativa en el servidor (puede ser una cadena, o incluso una expresión regular). HANDLER es una función que Express llama cuando la ruta coincide. Los Handlers toman la forma `function(req, res) {...}`, donde req es el objeto de la solicitud, y res es el objeto de respuesta. Por ejemplo, el handler

```js
function(req, res) {
  res.send('Response String');
}
```

servirá la cadena 'Response String'.

# --instructions--

Utiliza el método `app.get()` para servir la cadena "Hello Express" a las peticiones GET que coincidan con la ruta `/` (raíz). Asegúrate de que tu código funciona mirando los registros, luego mira los resultados en la vista previa si estás usando Gitpod.

**Nota:** Todo el código de estas lecciones debe añadirse entre las pocas líneas de código con las que hemos iniciado.

# --hints--

Tu aplicación debe mostrarte en consola la cadena 'Hello Express'

```js
(getUserInput) =>
  $.get(getUserInput('url')).then(
    (data) => {
      assert.equal(
        data,
        'Hello Express',
        'Your app does not serve the text "Hello Express"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

