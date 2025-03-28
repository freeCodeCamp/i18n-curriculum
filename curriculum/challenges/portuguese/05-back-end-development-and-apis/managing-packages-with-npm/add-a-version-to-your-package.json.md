---
id: 587d7fb4367417b2b2512bff
title: Adicionar uma versão ao package.json
challengeType: 2
forumTopicId: 301525
dashedName: add-a-version-to-your-package-json
---

# --description--

A `version` is one of the required fields of your package.json file. This field describes the current version of your project. Aqui está um exemplo:

```json
"version": "1.2.0",
```

# --instructions--

Adicione uma `version` ao arquivo package.json do projeto.

# --hints--

O package.json deve ter uma chave "version" válida

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

