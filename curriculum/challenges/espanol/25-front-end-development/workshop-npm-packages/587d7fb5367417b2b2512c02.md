---
id: 587d7fb5367417b2b2512c02
title: Usa el carácter tilde para usar la última versión del parche de una dependencia
challengeType: 2
forumTopicId: 301532
dashedName: use-the-tilde-character-to-always-use-the-latest-patch-version-of-a-dependency
---

# --description--

In the last challenge, you told npm to only include a specific version of a package. That’s a useful way to freeze your dependencies if you need to make sure that different parts of your project stay compatible with each other. But in most use cases, you don’t want to miss bug fixes since they often include important security patches and (hopefully) don’t break things in doing so.

Para permitir que una dependencia de npm se actualice a la última versión de PATCH, puedes prefijar la versión de la dependencia con el carácter tilde (`~`). A continuación se muestra un ejemplo de como permitir actualizaciones a cualquier versión `1.3.x`.

```json
"package": "~1.3.8"
```

# --instructions--

En el fichero package.json, la regla que dice a npm como puede actualizar `@freecodecamp/example` consiste en usar una versión específica (`1.2.13`). Pero ahora lo que quieres es permitir que actualice a la más reciente `1.2.x`.

Usa el carácter tilde (`~`) para fijar la versión de `@freecodecamp/example` en tus dependencias y permitir a npm actualizarla a cualquier nuevo lanzamiento de _patch_.

**Nota:** Los números de versión no deben ser cambiados.

# --hints--

`"dependencies"` debe incluir `"@freecodecamp/example"`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

La versión de `"@freecodecamp/example"` debe coincidir con `"~1.2.13"`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^\~1\.2\.13/,
        'Wrong version of "@freecodecamp/example". It should be ~1.2.13'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

