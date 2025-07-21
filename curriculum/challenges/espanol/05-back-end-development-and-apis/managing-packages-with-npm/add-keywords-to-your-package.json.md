---
id: 587d7fb4367417b2b2512bfd
title: Añade palabras clave a tu package.json
challengeType: 2
forumTopicId: 301526
dashedName: add-keywords-to-your-package-json
---

# --description--

El campo `keywords` es donde puedes describir tu proyecto usando palabras clave relacionadas. Aquí hay un ejemplo:

```json
"keywords": [ "descriptive", "related", "words" ],
```

Como puedes ver, este campo está estructurado como un arreglo de cadenas con comillas dobles.

# --instructions--

Añade un arreglo de cadenas adecuadas al campo `keywords` en el archivo package.json de tu proyecto.

Una de las palabras clave debe ser "freecodecamp".

# --hints--

el archivo package.json debe tener una clave "keywords" válida

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.keywords, '"keywords" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```

El campo "keywords" debe ser un arreglo

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.isArray(data.keywords, '"keywords" is not an array');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```

"keywords" debe incluir "freecodecamp"

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.include(
        data.keywords,
        'freecodecamp',
        '"keywords" does not include "freecodecamp"'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
