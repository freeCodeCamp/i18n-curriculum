---
id: 587d7fb4367417b2b2512bff
title: Añade una versión a tu package.json
challengeType: 2
forumTopicId: 301525
dashedName: add-a-version-to-your-package-json
---

# --description--

A `version` is one of the required fields of your package.json file. This field describes the current version of your project. Aquí hay un ejemplo:

```json
"version": "1.2.0",
```

# --instructions--

Añade una `version` al archivo package.json de tu proyecto.

# --hints--

package.json debe tener una clave de "version" válida

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.version, '"version" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

