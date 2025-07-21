---
id: 587d7fb5367417b2b2512c04
title: Entferne ein Paket aus deinen Abhängigkeiten
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

Aber was passiert, wenn du ein externes Paket entfernen möchtest, das du nicht länger benötigst? Du hast es vielleicht schon erraten, entferne einfach das entsprechende Schlüssel-Wert-Paar (key-value pair) für dieses Paket aus deinen Abhängigkeiten (dependencies).

Dieselbe Methode gilt auch für das Entfernen anderer Felder in deiner package.json.

# --instructions--

Entferne das `@freecodecamp/example`-Paket aus deinen "dependencies" (Abhängigkeiten).

**Hinweis:** Stelle sicher, dass du die richtige Menge an Kommas verwendest, nachdem du das Paket entfernt hast.

# --hints--

`"dependencies"` sollte nicht `"@freecodecamp/example"` enthalten.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.notProperty(
        data.dependencies,
        '@freecodecamp/example',
        '"dependencies" still includes "@freecodecamp/example"'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
