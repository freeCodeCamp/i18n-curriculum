---
id: 587d7fb5367417b2b2512c03
title: Usa il simbolo dell'accento circonflesso per usare l'ultima versione minore di una dipendenza
challengeType: 2
forumTopicId: 301531
dashedName: use-the-caret-character-to-use-the-latest-minor-version-of-a-dependency
---

# --description--

Similar to how the tilde we learned about in the last challenge allows npm to install the latest PATCH for a dependency, the caret (`^`) allows npm to install future updates as well. The difference is that the caret will allow both MINOR updates and PATCHes.

La versione attuale di `@freecodecamp/example` dovrebbe essere `~1.2.13` che permette a npm di installare l'ultima versione `1.2.x`. Se invece dovessi usare il caret (^) come prefisso di versione, npm avrebbe il permesso di aggiornare a qualsiasi versione `1.x.x`.

```json
"package": "^1.3.8"
```

Questo permetterebbe di aggiornare qualsiasi versione `1.x.x` del pacchetto.

# --instructions--

Usa l'accento circonflesso (`^`) come prefisso di versione per `@freecodecamp/example` nelle tue dipendenze, e permetti a npm di aggiornare a qualsiasi nuova versione minore.

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

La versione di `"@freecodecamp/example"` deve corrispondere a `"^1.x.x"`.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.match(
        data.dependencies['@freecodecamp/example'],
        /^\^1\./,
        'Wrong version of "@freecodecamp/example". It should be ^1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
