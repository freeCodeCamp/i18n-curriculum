---
id: 587d7fb5367417b2b2512c02
title: Usare il carattere tilde per utilizzare sempre l'ultima versione patch di una dipendenza
challengeType: 2
forumTopicId: 301532
dashedName: use-the-tilde-character-to-always-use-the-latest-patch-version-of-a-dependency
---

# --description--

In the last challenge, you told npm to only include a specific version of a package. That’s a useful way to freeze your dependencies if you need to make sure that different parts of your project stay compatible with each other. But in most use cases, you don’t want to miss bug fixes since they often include important security patches and (hopefully) don’t break things in doing so.

Per consentire a una dipendenza npm di aggiornare all'ultima versione PATCH, è possibile prefissare la versione della dipendenza con il carattere tilde (`~`). Ecco un esempio di come consentire gli aggiornamenti di qualsiasi versione `1.3.x`.

```json
"package": "~1.3.8"
```

# --instructions--

Nel file package.json, la regola con cui npm aggiorna `@freecodecamp/example` si basa su una specifica versione (`1.2.13`). Ma ora desideriamo consentire l'ultima versione `1.2.x`.

Usa il carattere tilde (`~`) come prefisso di versione per `@freecodecamp/example` nelle tue dipendenze e permetti ad npm di aggiornare ad ogni nuova versione di _patch_.

**Nota:** I numeri di versione non devono essere modificati.

# --hints--

`"dependencies"` dovrebbe includere `"@freecodecamp/example"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.property(
        data.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```

La versione di `"@freecodecamp/example"` deve corrispondere a `"~1.2.13"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.match(
        data.dependencies['@freecodecamp/example'],
        /^\~1\.2\.13/,
        'Wrong version of "@freecodecamp/example". It should be ~1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
