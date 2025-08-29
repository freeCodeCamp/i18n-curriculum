---
id: 587d7fb4367417b2b2512bff
title: Füge deiner package.json eine Version hinzu
challengeType: 2
forumTopicId: 301525
dashedName: add-a-version-to-your-package-json
---

# --description--

A `version` is one of the required fields of your package.json file. This field describes the current version of your project. Hier ist ein Beispiel:

```json
"version": "1.2.0",
```

# --instructions--

Füge der package.json-Datei deines Projekts eine `version` hinzu.

# --hints--

package.json sollte einen gültigen "version"-Schlüssel haben

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
