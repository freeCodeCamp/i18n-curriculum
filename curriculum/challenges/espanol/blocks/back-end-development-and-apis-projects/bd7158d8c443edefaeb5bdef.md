---
id: bd7158d8c443edefaeb5bdef
title: Microservicio de marca de tiempo
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

Construye una aplicación JavaScript full stack que sea funcionalmente similar a esta: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. Trabajar en este proyecto implicará que escribas tu código usando uno de los siguientes métodos:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">este repositorio de GitHub</a> y completa tu proyecto localmente.
-   Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

**Nota:** El propósito de este proyecto no es la versión de zonas horarias, por lo que asume que todas las fechas válidas enviadas serán analizadas con `new Date()` como fechas GMT. 

# --hints--

Debes proporcionar tu propio proyecto, no la URL del ejemplo.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

Una petición para `/api/:date?` con una fecha válida debe devolver un objeto JSON con una clave `unix` que es una marca de tiempo Unix de la fecha de entrada en milisegundos (como tipo Número)

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.unix,
    1482624000000,
    'Should be a valid unix timestamp'
  );
```

Una petición para `/api/:date?` con una fecha válida debe devolver un objeto JSON con una clave `utc` que es una cadena de la fecha de entrada en el formato: `Thu, 01 Jan 1970 00:00:00 GMT`

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.utc,
    'Sun, 25 Dec 2016 00:00:00 GMT',
    'Should be a valid UTC date string'
  );
```

Una petición a `/api/1451001600000` debe devolver `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

```js
  const response = await fetch(code + '/api/1451001600000');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1451001600000 &&
      data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
  );
```

Tu proyecto puede manejar fechas que pueden ser analizadas con éxito por `new Date(date_string)`

```js
  const response = await fetch(code + '/api/05 October 2011, GMT');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1317772800000 &&
      data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
  );
```

Si la cadena representando la fecha es inválida, la API devuelve un objeto con la estructura `{ error : "Invalid Date" }`

```js
  const response = await fetch(code + '/api/this-is-not-a-date');
  if (response.ok) {
    const data = await response.json();
    assert.equal(data.error.toLowerCase(), 'invalid date');
  } else {
    const errorData = await response.json();
    assert(errorData.error.toLowerCase() === 'invalid date');
  }
```

Un parámetro de fecha vacío debe devolver la hora actual en un objeto JSON con una clave `unix`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

Un parámetro de fecha vacío debe devolver la hora actual en un objeto JSON con una clave `utc`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  var serverTime = new Date(data.utc).getTime();
  assert.approximately(serverTime, now, 20000);
```

