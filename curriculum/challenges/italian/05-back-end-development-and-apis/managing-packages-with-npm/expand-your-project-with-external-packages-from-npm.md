---
id: 587d7fb4367417b2b2512c00
title: Espandere il tuo progetto con pacchetti esterni di npm
challengeType: 2
forumTopicId: 301527
dashedName: expand-your-project-with-external-packages-from-npm
---

# --description--

One of the biggest reasons to use a package manager, is their powerful dependency management. Instead of manually having to make sure that you get all dependencies whenever you set up a project on a new computer, npm automatically installs everything for you. But how can npm know exactly what your project needs? Meet the `dependencies` section of your package.json file.

In questa sezione, i pacchetti richiesti dal progetto vengono memorizzati nel seguente formato:

```json
"dependencies": {
  "package-name": "version",
  "express": "4.14.0"
}

```

# --instructions--

Aggiungi la versione `1.1.0` del pacchetto `@freecodecamp/example` al campo `dependencies` del tuo file `package.json`.

**Nota:** `@freecodecamp/example` è un pacchetto fasullo utilizzato come strumento di apprendimento.

# --hints--

`"dependencies"` dovrebbe includere `"@freecodecamp/example"`.

```js
  $.get(code + '/_api/package.json').then(
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

La versione di `"@freecodecamp/example"` dovrebbe essere `"1.1.0"`.

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^[\^\~]?1\.1\.0/,
        'Wrong version of "@freecodecamp/example" installed. It should be 1.1.0'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

