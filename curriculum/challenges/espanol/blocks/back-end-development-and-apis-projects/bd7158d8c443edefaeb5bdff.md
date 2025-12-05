---
id: bd7158d8c443edefaeb5bdff
title: Microservicio de analizador de solicitud de encabezado
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

Construye una aplicación JavaScript full stack que sea funcionalmente similar a esta: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. Trabajar en este proyecto implicará que escribas tu código usando uno de los siguientes métodos:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">este repositorio de GitHub</a> y completa tu proyecto localmente.
-   Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

# --hints--

Debes proporcionar tu propio proyecto, no la URL del ejemplo.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Una petición a `/api/whoami` debe devolver un objeto JSON con tu dirección IP en la clave `ipaddress`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

Una petición a `/api/whoami` debe devolver un objeto JSON con tu idioma preferido en la clave `language`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

Una petición a `/api/whoami` debe devolver un objeto JSON con tu software en la clave de `software`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```

