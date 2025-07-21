---
id: 587d7fb5367417b2b2512c04
title: Rimuovere un pacchetto dalle tue dipendenze
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

Ma cosa dovresti fare per rimuovere un pacchetto esterno di cui non hai più bisogno? Potresti già averlo indovinato, basta rimuovere dalle dipendenze la coppia chiave-valore corrispondente a quel pacchetto.

Questo stesso metodo si applica anche alla rimozione di altri campi nel tuo package.json.

# --instructions--

Rimuovi il pacchetto `@freecodecamp/example` dalle tue dipendenze.

**Nota:** Assicurati di avere la giusta quantità di virgole dopo averlo rimosso.

# --hints--

`"dependencies"` non dovrebbe includere `"@freecodecamp/example"`.

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
