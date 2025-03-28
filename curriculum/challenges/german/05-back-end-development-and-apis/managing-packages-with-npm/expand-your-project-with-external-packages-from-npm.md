---
id: 587d7fb4367417b2b2512c00
title: Erweitere dein Projekt mit externen Paketen von npm
challengeType: 2
forumTopicId: 301527
dashedName: expand-your-project-with-external-packages-from-npm
---

# --description--

One of the biggest reasons to use a package manager, is their powerful dependency management. Instead of manually having to make sure that you get all dependencies whenever you set up a project on a new computer, npm automatically installs everything for you. But how can npm know exactly what your project needs? Meet the `dependencies` section of your package.json file.

In diesem Abschnitt werden die Pakete, die dein Projekt benötigt, in folgendem Format gespeichert:

```json
"dependencies": {
  "package-name": "version",
  "express": "4.14.0"
}

```

# --instructions--

Füge die Version `1.1.0` des `@freecodecamp/example`-Pakets dem `dependencies`-Feld deiner `package.json`-Datei hinzu.

**Hinweis:** `@freecodecamp/example` ist eine Mogelpackung, die wir hier als Lernbeispiel verwenden.

# --hints--

`"dependencies"` sollte `"@freecodecamp/example"` enthalten.

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

Die `"@freecodecamp/example"`-Version sollte `"1.1.0"` sein.

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

