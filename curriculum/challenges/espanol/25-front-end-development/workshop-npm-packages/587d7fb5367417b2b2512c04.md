---
id: 587d7fb5367417b2b2512c04
title: Elimina un paquete de tus dependencias
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

Pero, ¿Qué pasa si deseas eliminar un paquete externo que ya no necesitas? Puede que ya lo hayas adivinado, simplemente elimina el par clave-valor correspondiente a ese paquete de tus dependencias.

Este mismo método se aplica para eliminar otros zonas de tu package.json.

# --instructions--

Retire el paquete `@freecodecamp/example` de sus dependencias.

**Nota:** Asegúrate de que tienes la cantidad correcta de comas después de eliminarlo.

# --hints--

`"dependencies"` no debe incluir `"@freecodecamp/example"`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.notProperty(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" still includes "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

