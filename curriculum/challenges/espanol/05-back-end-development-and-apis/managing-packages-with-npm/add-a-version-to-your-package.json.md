---
id: 587d7fb4367417b2b2512bff
title: Añade una versión a tu package.json
challengeType: 2
forumTopicId: 301525
dashedName: add-a-version-to-your-package-json
---

# --description--

Una `version` es uno de los campos obligatorios de tu archivo package.json. Este campo describe la versión actual de tu proyecto. Aquí hay un ejemplo:

```json
"version": "1.2.0",
```

# --instructions--

Añade una `version` al archivo package.json de tu proyecto.

# --hints--

package.json debe tener una clave de "version" válida

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.version, '"version" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
