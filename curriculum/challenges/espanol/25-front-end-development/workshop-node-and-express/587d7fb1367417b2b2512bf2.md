---
id: 587d7fb1367417b2b2512bf2
title: Usa el archivo .env
challengeType: 2
forumTopicId: 301521
dashedName: use-the--env-file
---

# --description--

The `.env` file is a hidden file that is used to pass environment variables to your application. This file is secret, no one but you can access it, and it can be used to store data that you want to keep private or hidden. For example, you can store API keys from external services or your database URI. You can also use it to store configuration options. By setting configuration options, you can change the behavior of your application, without the need to rewrite some code.

Las variables de entorno son accesibles desde la aplicación como `process.env.VAR_NAME`. El objeto `process.env` es un objeto global de Node, y las variables son pasadas como cadenas de texto. Por convención, los nombres de las variables son en letras mayúsculas, con las palabras separadas por guión bajo. El archivo `.env` es un archivo shell, por lo que no es necesario incluir los nombres o valores entre comillas. También es importante tener en cuenta que no pueden haber espacios alrededor del signo de igual cuando se asignan valores a las variables, por ejemplo: `VAR_NAME=value`. Normalmente, usted pondrá cada definición de variable en una línea separada.

# --instructions--

Añadamos una variable de entorno como opción de configuración.

Crea un archivo `.env` en la raíz del directorio de tu proyecto y almacena la variable `MESSAGE_STYLE=uppercase` en él.

Luego, en el manejador `/json` GET route que creaste en el último ejercicio accede a `process.env.MESSAGE_STYLE` y transformar el `message` del objeto de respuesta a mayúsculas si la variable es igual a `uppercase`. El objeto de respuesta debe ser `{"message": "Hello json"}` o `{"message": "HELLO JSON"}`, dependiendo del valor `MESSAGE_STYLE`. Ten en cuenta que debes leer el valor de `process.env.MESSAGE_STYLE` **dentro de** el manejador de rutas, no fuera de él, debido a la forma en que se ejecutan nuestras pruebas.

Tendrás que usar el paquete `dotenv`. It loads environment variables from your `.env` file into `process.env`. The `dotenv` package has already been installed, and is in your project's `package.json` file. At the top of your `myApp.js` file, add `require('dotenv').config()` to load the environment variables.

# --hints--

La respuesta del endpoint `/json` debe cambiar de acuerdo a la variable de entorno `MESSAGE_STYLE`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/use-env-vars').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'The response of "/json" does not change according to MESSAGE_STYLE'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

