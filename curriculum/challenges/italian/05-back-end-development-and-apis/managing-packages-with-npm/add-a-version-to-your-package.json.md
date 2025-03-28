---
id: 587d7fb4367417b2b2512bff
title: Aggiungere una versione al tuo package.json
challengeType: 2
forumTopicId: 301525
dashedName: add-a-version-to-your-package-json
---

# --description--

A `version` is one of the required fields of your package.json file. This field describes the current version of your project. Ecco un esempio:

```json
"version": "1.2.0",
```

# --instructions--

Aggiungi una `version` al file package.json del tuo progetto.

# --hints--

package.json deve avere una chiave "version" valida

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.version, '"version" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

