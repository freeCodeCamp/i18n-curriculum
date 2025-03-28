---
id: 587d7fb4367417b2b2512bfe
title: Aggiungere una licenza al tuo package.json
challengeType: 2
forumTopicId: 301523
dashedName: add-a-license-to-your-package-json
---

# --description--

The `license` field is where you inform users of what they are allowed to do with your project.

Alcune licenze comuni per progetti open source sono MIT e BSD. Le informazioni sulla licenza non sono richieste e le leggi sul copyright nella maggior parte dei paesi ti daranno la proprietà di ciò che crei senza che tu debba fare altro. Tuttavia, è sempre una buona pratica dichiarare esplicitamente quello che gli utenti possono e non possono fare. Ecco un esempio del campo di licenza:

```json
"license": "MIT",
```

# --instructions--

Compila il campo `license` nel file package.json del tuo progetto come ritieni opportuno.

# --hints--

package.json dovrebbe avere una chiave "license" valida

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.license, '"license" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

